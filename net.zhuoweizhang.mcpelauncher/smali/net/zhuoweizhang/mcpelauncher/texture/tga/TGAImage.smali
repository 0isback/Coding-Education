.class public Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
.super Ljava/lang/Object;
.source "TGAImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    }
.end annotation


# instance fields
.field private bpp:I

.field private data:Ljava/nio/ByteBuffer;

.field private format:I

.field private header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

.field private topToBottom:Z


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)V
    .locals 1
    .param p1, "header"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->topToBottom:Z

    .line 78
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    .line 79
    return-void
.end method

.method public static createFromData(IIZZLjava/nio/ByteBuffer;)Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "hasAlpha"    # Z
    .param p3, "topToBottom"    # Z
    .param p4, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v3, 0x20

    .line 411
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;-><init>()V

    .line 412
    .local v0, "header":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$302(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I

    .line 413
    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$402(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I

    .line 414
    invoke-static {v0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$102(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I

    .line 415
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-static {v0, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$002(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;B)B

    .line 416
    if-eqz p3, :cond_1

    :goto_1
    int-to-byte v2, v3

    invoke-static {v0, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$502(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;B)B

    .line 418
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;

    invoke-direct {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;-><init>(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)V

    .line 419
    .local v1, "ret":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    iput-object p4, v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->data:Ljava/nio/ByteBuffer;

    .line 420
    return-object v1

    .line 415
    .end local v1    # "ret":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    :cond_0
    const/16 v2, 0x18

    goto :goto_0

    .line 416
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private decodeImage(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V
    .locals 2
    .param p1, "dIn"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Uncompressed Colormapped images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$000(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 260
    :sswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Compressed 16-bit True Color images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :sswitch_1
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->decodeRGBImageU24_32(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V

    goto :goto_0

    .line 270
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Uncompressed Grayscale images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Compressed Colormapped images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Compressed True Color images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TGADecoder Compressed Grayscale images not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private decodeRGBImageU24_32(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V
    .locals 8
    .param p1, "dIn"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width()I

    move-result v5

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v6}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth()B

    move-result v6

    div-int/lit8 v6, v6, 0x8

    mul-int v2, v5, v6

    .line 293
    .local v2, "rawWidth":I
    new-array v1, v2, [B

    .line 294
    .local v1, "rawBuf":[B
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height()I

    move-result v5

    mul-int/2addr v5, v2

    new-array v3, v5, [B

    .line 296
    .local v3, "tmpData":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 297
    invoke-virtual {p1, v1, v7, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readFully([BII)V

    .line 299
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->topToBottom()Z

    move-result v5

    iget-boolean v6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->topToBottom:Z

    if-ne v5, v6, :cond_0

    .line 300
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$100(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v4, v5, -0x1

    .line 304
    .local v4, "y":I
    :goto_1
    mul-int v5, v4, v2

    array-length v6, v1

    invoke-static {v1, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v4    # "y":I
    :cond_0
    move v4, v0

    .restart local v4    # "y":I
    goto :goto_1

    .line 329
    .end local v4    # "y":I
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->data:Ljava/nio/ByteBuffer;

    .line 330
    return-void
.end method

.method public static read(Ljava/io/InputStream;)Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    .local v0, "dIn":Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-direct {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;-><init>(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V

    .line 372
    .local v1, "header":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;

    invoke-direct {v2, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;-><init>(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)V

    .line 373
    .local v2, "res":Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    invoke-direct {v2, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->decodeImage(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V

    .line 374
    return-object v2
.end method

.method public static read(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->read(Ljava/io/InputStream;)Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;

    move-result-object v0

    return-object v0
.end method

.method public static swapBGR([BIII)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "bWidth"    # I
    .param p2, "height"    # I
    .param p3, "bpp"    # I

    .prologue
    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 336
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p1, :cond_0

    .line 337
    mul-int v5, v1, p1

    add-int v3, v5, v2

    .line 338
    .local v3, "k":I
    add-int/lit8 v5, v3, 0x0

    aget-byte v0, p0, v5

    .line 339
    .local v0, "b":B
    add-int/lit8 v5, v3, 0x2

    aget-byte v4, p0, v5

    .line 340
    .local v4, "r":B
    add-int/lit8 v5, v3, 0x0

    aput-byte v4, p0, v5

    .line 341
    add-int/lit8 v5, v3, 0x2

    aput-byte v0, p0, v5

    .line 336
    add-int/2addr v2, p3

    goto :goto_1

    .line 335
    .end local v0    # "b":B
    .end local v3    # "k":I
    .end local v4    # "r":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getBytesPerPixel()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->bpp:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getGLFormat()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->format:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width()I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 385
    .local v1, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 386
    .local v0, "chan":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 388
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 389
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 390
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->write(Ljava/io/File;)V

    .line 380
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p1, "chan"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->size()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 394
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 395
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->header:Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    invoke-static {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->access$200(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;Ljava/nio/ByteBuffer;)V

    .line 396
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 397
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 398
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 399
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 400
    return-void
.end method
