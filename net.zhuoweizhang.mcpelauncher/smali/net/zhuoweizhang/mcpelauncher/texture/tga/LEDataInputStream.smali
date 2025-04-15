.class public Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;
.super Ljava/io/FilterInputStream;
.source "LEDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field dataIn:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    .line 83
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 89
    return-void
.end method

.method public final declared-synchronized read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 99
    .local v0, "rl":I
    monitor-exit p0

    return v0

    .line 98
    .end local v0    # "rl":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 120
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 121
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 128
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 129
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 130
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 162
    .local v0, "ch1":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 163
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 164
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 165
    :cond_0
    shl-int/lit8 v2, v0, 0x0

    shl-int/lit8 v3, v1, 0x8

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 105
    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 110
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 171
    .local v0, "ch1":I
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 172
    .local v1, "ch2":I
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 173
    .local v2, "ch3":I
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 174
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 175
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 176
    :cond_0
    shl-int/lit8 v4, v0, 0x0

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readInt()I

    move-result v0

    .line 182
    .local v0, "i1":I
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->readInt()I

    move-result v1

    .line 183
    .local v1, "i2":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-int/lit8 v4, v1, 0x20

    int-to-long v4, v4

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 144
    .local v0, "ch1":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 145
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 146
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 147
    :cond_0
    shl-int/lit8 v2, v0, 0x0

    shl-int/lit8 v3, v1, 0x8

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 136
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 137
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 138
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 153
    .local v0, "ch1":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 154
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 155
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 156
    :cond_0
    shl-int/lit8 v2, v0, 0x0

    shl-int/lit8 v3, v1, 0x8

    add-int/2addr v2, v3

    return v2
.end method

.method public final skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/tga/LEDataInputStream;->dataIn:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
