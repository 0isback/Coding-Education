.class public Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;
.super Ljava/lang/Object;
.source "TGAImageLoader.java"

# interfaces
.implements Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static invertBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 33
    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 34
    .local v0, "rowBuffer":[B
    mul-int/lit8 v1, p1, 0x4

    .line 35
    .local v1, "stride":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    div-int/lit8 v3, p2, 0x2

    if-ge v2, v3, :cond_0

    .line 38
    mul-int v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual {p0, v0, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 40
    sub-int v3, p2, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    invoke-virtual {p0, v0, v1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 42
    sub-int v3, p2, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p0, v0, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 44
    mul-int v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {p0, v0, v1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 49
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGALoader;->load(Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "outBmp"    # Landroid/graphics/Bitmap;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 18
    .local v8, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 19
    .local v1, "tempArr":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v8, v0, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;->invertBuffer(Ljava/nio/ByteBuffer;II)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2, v8}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->createFromData(IIZZLjava/nio/ByteBuffer;)Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;

    move-result-object v9

    .line 28
    .local v9, "tgaImage":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 29
    return-void
.end method
