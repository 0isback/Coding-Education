.class public Lcom/joshuahuelsman/patchtool/PTPatch;
.super Ljava/lang/Object;
.source "PTPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joshuahuelsman/patchtool/PTPatch$Header;
    }
.end annotation


# static fields
.field public static final magic:[B

.field public static final op_codes:[B


# instance fields
.field public count:I

.field mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

.field public name:Ljava/lang/String;

.field private patch_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/joshuahuelsman/patchtool/PTPatch;->magic:[B

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/joshuahuelsman/patchtool/PTPatch;->op_codes:[B

    return-void

    .line 23
    nop

    :array_0
    .array-data 1
        -0x1t
        0x50t
        0x54t
        0x50t
    .end array-data

    .line 24
    :array_1
    .array-data 1
        -0x56t
        -0x23t
        -0x12t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-direct {v0, p0}, Lcom/joshuahuelsman/patchtool/PTPatch$Header;-><init>(Lcom/joshuahuelsman/patchtool/PTPatch;)V

    iput-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    .line 31
    return-void
.end method

.method public static final byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 231
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static final intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static readPatch(Ljava/lang/String;)[B
    .locals 6
    .param p0, "patch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "patchf":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v2, v3, [B

    .line 241
    .local v2, "ret":[B
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 243
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 244
    return-object v2
.end method


# virtual methods
.method public applyPatch(Ljava/io/File;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 161
    .local v0, "barray":[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 163
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 164
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 165
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    iput v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    :goto_0
    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    iget-object v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v5, v5, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    if-ge v4, v5, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextAddr()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextData()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 171
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 172
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 173
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 174
    return-void
.end method

.method public applyPatch(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    :goto_0
    iget v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    iget-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v1, v1, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    if-ge v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextAddr()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public applyPatch([B)V
    .locals 1
    .param p1, "barray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/joshuahuelsman/patchtool/PTPatch;->applyPatch(Ljava/nio/ByteBuffer;)V

    .line 181
    return-void
.end method

.method public checkMagic()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    aget-byte v2, v2, v1

    sget-object v3, Lcom/joshuahuelsman/patchtool/PTPatch;->magic:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_0

    .line 76
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    aget-byte v2, v2, v0

    sget-object v3, Lcom/joshuahuelsman/patchtool/PTPatch;->magic:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    aget-byte v2, v2, v4

    sget-object v3, Lcom/joshuahuelsman/patchtool/PTPatch;->magic:[B

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    aget-byte v2, v2, v5

    sget-object v3, Lcom/joshuahuelsman/patchtool/PTPatch;->magic:[B

    aget-byte v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 84
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public checkMinecraftVersion()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public getCurrentIndex()I
    .locals 5

    .prologue
    .line 109
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 110
    .local v0, "i":[B
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 111
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 112
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 113
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 115
    invoke-static {v0}, Lcom/joshuahuelsman/patchtool/PTPatch;->byteArrayToInt([B)I

    move-result v1

    .line 116
    .local v1, "index":I
    return v1
.end method

.method public getDataLength()I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "start":I
    const/4 v0, 0x0

    .line 135
    .local v0, "end":I
    new-array v1, v10, [B

    .line 136
    .local v1, "i":[B
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v6

    .line 137
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v1, v7

    .line 138
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    aput-byte v4, v1, v8

    .line 139
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    aput-byte v4, v1, v9

    .line 141
    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    iget-object v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v5, v5, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 142
    new-array v2, v10, [B

    .line 143
    .local v2, "i2":[B
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    aput-byte v4, v2, v6

    .line 144
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v2, v7

    .line 145
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    aput-byte v4, v2, v8

    .line 146
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    aput-byte v4, v2, v9

    .line 147
    invoke-static {v2}, Lcom/joshuahuelsman/patchtool/PTPatch;->byteArrayToInt([B)I

    move-result v0

    .line 151
    .end local v2    # "i2":[B
    :goto_0
    invoke-static {v1}, Lcom/joshuahuelsman/patchtool/PTPatch;->byteArrayToInt([B)I

    move-result v4

    add-int/lit8 v3, v4, 0x4

    .line 153
    sub-int v4, v0, v3

    return v4

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    array-length v0, v4

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getMetaData()[B

    move-result-object v1

    .line 215
    .local v1, "metaData":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "metaData":[B
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const-string v2, ""

    goto :goto_0
.end method

.method public getIndices()[B
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v2, v2, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 68
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v2, v2, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    mul-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    add-int/lit8 v3, v0, 0x6

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object v1
.end method

.method public getMetaData()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iput v5, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    .line 205
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getCurrentIndex()I

    move-result v0

    .line 206
    .local v0, "firstIndex":I
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v3, 0x6

    .line 207
    .local v1, "metaDataStart":I
    sub-int v3, v0, v1

    new-array v2, v3, [B

    .line 208
    .local v2, "retval":[B
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    array-length v4, v2

    invoke-static {v3, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-object v2
.end method

.method public getMinecraftVersion()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    return v0
.end method

.method public getNextAddr()I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    new-array v1, v9, [B

    .line 93
    .local v1, "i":[B
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v5

    .line 94
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v6

    .line 95
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    aput-byte v3, v1, v7

    .line 96
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget-object v3, v3, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    iget v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v1, v8

    .line 98
    invoke-static {v1}, Lcom/joshuahuelsman/patchtool/PTPatch;->byteArrayToInt([B)I

    move-result v2

    .line 100
    .local v2, "index":I
    new-array v0, v9, [B

    .line 101
    .local v0, "b":[B
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    aget-byte v3, v3, v2

    aput-byte v3, v0, v5

    .line 102
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v0, v6

    .line 103
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    aput-byte v3, v0, v7

    .line 104
    iget-object v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v8

    .line 105
    invoke-static {v0}, Lcom/joshuahuelsman/patchtool/PTPatch;->byteArrayToInt([B)I

    move-result v3

    return v3
.end method

.method public getNextData()[B
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getDataLength()I

    move-result v4

    new-array v0, v4, [B

    .line 121
    .local v0, "array":[B
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getCurrentIndex()I

    move-result v3

    .line 123
    .local v3, "index":I
    const/4 v2, 0x0

    .line 124
    .local v2, "i2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getDataLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    add-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    aput-byte v4, v0, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-object v0
.end method

.method public getNumPatches()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public loadPatch(Ljava/io/File;)V
    .locals 4
    .param p1, "patchf"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    .line 49
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 51
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    iget-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getMinecraftVersion()I

    move-result v2

    iput v2, v1, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->minecraft_ver:I

    .line 53
    iget-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNumPatches()I

    move-result v2

    iput v2, v1, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    .line 54
    iget-object v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getIndices()[B

    move-result-object v2

    iput-object v2, v1, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    .line 56
    return-void
.end method

.method public loadPatch([B)V
    .locals 2
    .param p1, "patch_array"    # [B

    .prologue
    .line 40
    iput-object p1, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->patch_array:[B

    .line 41
    iget-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getMinecraftVersion()I

    move-result v1

    iput v1, v0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->minecraft_ver:I

    .line 42
    iget-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNumPatches()I

    move-result v1

    iput v1, v0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    .line 43
    iget-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getIndices()[B

    move-result-object v1

    iput-object v1, v0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->indices:[B

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    .line 45
    return-void
.end method

.method public removePatch(Ljava/nio/ByteBuffer;[B)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "original"    # [B

    .prologue
    .line 192
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 193
    .local v2, "originalBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    iput v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    :goto_0
    iget v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    iget-object v4, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->mHeader:Lcom/joshuahuelsman/patchtool/PTPatch$Header;

    iget v4, v4, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->num_patches:I

    if-ge v3, v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextAddr()I

    move-result v0

    .line 195
    .local v0, "nextAddr":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p0}, Lcom/joshuahuelsman/patchtool/PTPatch;->getDataLength()I

    move-result v3

    new-array v1, v3, [B

    .line 198
    .local v1, "nextData":[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    iget v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    goto :goto_0

    .line 201
    .end local v0    # "nextAddr":I
    .end local v1    # "nextData":[B
    :cond_0
    return-void
.end method
