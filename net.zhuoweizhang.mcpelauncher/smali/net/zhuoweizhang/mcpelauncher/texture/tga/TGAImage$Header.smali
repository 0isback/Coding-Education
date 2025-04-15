.class public Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
.super Ljava/lang/Object;
.source "TGAImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# static fields
.field public static final BLACKWHITE:I = 0xb

.field public static final COLORMAPPED:I = 0x9

.field public static final ID_ATTRIBPERPIXEL:I = 0xf

.field public static final ID_INTERLEAVE:I = 0xc0

.field public static final ID_RIGHTTOLEFT:I = 0x10

.field public static final ID_TOPTOBOTTOM:I = 0x20

.field public static final I_FOURWAY:I = 0x2

.field public static final I_NOTINTERLEAVED:I = 0x0

.field public static final I_TWOWAY:I = 0x1

.field public static final NO_IMAGE:I = 0x0

.field public static final TRUECOLOR:I = 0xa

.field public static final TYPE_NEW:I = 0x0

.field public static final TYPE_OLD:I = 0x1

.field public static final TYPE_UNK:I = 0x2

.field public static final UBLACKWHITE:I = 0x3

.field public static final UCOLORMAPPED:I = 0x1

.field public static final UTRUECOLOR:I = 0x2


# instance fields
.field private colorMapEntrySize:B

.field private colorMapLength:I

.field private colorMapType:I

.field private firstEntryIndex:I

.field private height:I

.field private idLength:I

.field private imageDescriptor:B

.field private imageID:Ljava/lang/String;

.field private imageIDbuf:[B

.field private imageType:I

.field private pixelDepth:B

.field private tgaType:I

.field private width:I

.field private xOrigin:I

.field private yOrigin:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->tgaType:I

    .line 141
    return-void
.end method

.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;)V
    .locals 3
    .param p1, "in"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->tgaType:I

    .line 149
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    .line 150
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapType:I

    .line 151
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType:I

    .line 154
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->firstEntryIndex:I

    .line 155
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapLength:I

    .line 156
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapEntrySize:B

    .line 159
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->xOrigin:I

    .line 160
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->yOrigin:I

    .line 161
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width:I

    .line 162
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    .line 163
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    .line 164
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    .line 166
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    if-lez v0, :cond_0

    .line 167
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageIDbuf:[B

    .line 168
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageIDbuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    invoke-virtual {p1, v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->read([BII)I

    .line 169
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageIDbuf:[B

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageID:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)B
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    .prologue
    .line 88
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    return v0
.end method

.method static synthetic access$002(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;B)B
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # B

    .prologue
    .line 88
    iput-byte p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    return p1
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;)I
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;

    .prologue
    .line 88
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    return v0
.end method

.method static synthetic access$102(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    return p1
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$302(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType:I

    return p1
.end method

.method static synthetic access$402(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;I)I
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width:I

    return p1
.end method

.method static synthetic access$502(Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;B)B
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;
    .param p1, "x1"    # B

    .prologue
    .line 88
    iput-byte p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    return p1
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 223
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapType:I

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType:I

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->firstEntryIndex:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 227
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapLength:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 228
    iget-byte v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapEntrySize:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 229
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->xOrigin:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 230
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->yOrigin:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 231
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 232
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 233
    iget-byte v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 234
    iget-byte v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 235
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    if-lez v2, :cond_0

    .line 237
    :try_start_0
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageID:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    .local v0, "chars":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "chars":[B
    :cond_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public attribPerPixel()B
    .locals 1

    .prologue
    .line 194
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    return v0
.end method

.method public colorMapEntrySize()B
    .locals 1

    .prologue
    .line 183
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapEntrySize:B

    return v0
.end method

.method public colorMapLength()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapLength:I

    return v0
.end method

.method public colorMapType()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapType:I

    return v0
.end method

.method public firstEntryIndex()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->firstEntryIndex:I

    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    return v0
.end method

.method public idLength()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    return v0
.end method

.method public imageDescriptor()B
    .locals 1

    .prologue
    .line 191
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    return v0
.end method

.method public imageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageID:Ljava/lang/String;

    return-object v0
.end method

.method public imageIDbuf()[B
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageIDbuf:[B

    return-object v0
.end method

.method public imageType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType:I

    return v0
.end method

.method public interleave()B
    .locals 1

    .prologue
    .line 197
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    return v0
.end method

.method public pixelDepth()B
    .locals 1

    .prologue
    .line 190
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    return v0
.end method

.method public rightToLeft()Z
    .locals 1

    .prologue
    .line 195
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    add-int/lit8 v0, v0, 0x12

    return v0
.end method

.method public tgaType()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->tgaType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TGA Header  id length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->idLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color map type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " image type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first entry index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->firstEntryIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color map length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color map entry size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->colorMapEntrySize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->xOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->yOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixel depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->pixelDepth:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " image descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageIDbuf:[B

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ID String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public topToBottom()Z
    .locals 1

    .prologue
    .line 196
    iget-byte v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->imageDescriptor:B

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->width:I

    return v0
.end method

.method public xOrigin()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->xOrigin:I

    return v0
.end method

.method public yOrigin()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/TGAImage$Header;->yOrigin:I

    return v0
.end method
