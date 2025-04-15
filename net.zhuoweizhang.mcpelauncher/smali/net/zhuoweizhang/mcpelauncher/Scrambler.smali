.class Lnet/zhuoweizhang/mcpelauncher/Scrambler;
.super Ljava/lang/Object;
.source "Scrambler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native nativeScramble(Ljava/nio/ByteBuffer;Lnet/zhuoweizhang/mcpelauncher/MpepInfo;)V
.end method

.method static scramble([BLnet/zhuoweizhang/mcpelauncher/MpepInfo;)Ljava/io/Reader;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "info"    # Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    array-length v3, p0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 11
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    invoke-static {v0, p1}, Lnet/zhuoweizhang/mcpelauncher/Scrambler;->nativeScramble(Ljava/nio/ByteBuffer;Lnet/zhuoweizhang/mcpelauncher/MpepInfo;)V

    .line 14
    array-length v3, p0

    new-array v2, v3, [B

    .line 15
    .local v2, "output":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 18
    .local v1, "mpepStr":Ljava/lang/String;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v3
.end method
