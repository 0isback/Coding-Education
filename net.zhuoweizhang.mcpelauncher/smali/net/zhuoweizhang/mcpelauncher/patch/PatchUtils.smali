.class public final Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;
.super Ljava/lang/Object;
.source "PatchUtils.java"


# static fields
.field public static minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLivePatch(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    .line 52
    .local v2, "length":I
    new-array v0, v2, [B

    .line 53
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 55
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 57
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 58
    return-void
.end method

.method public static createMovwInstr(II)[B
    .locals 6
    .param p0, "rd"    # I
    .param p1, "imm"    # I

    .prologue
    .line 77
    const-wide v2, 0xf2400000L

    .line 78
    .local v2, "instr":J
    shl-int/lit8 v1, p0, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 79
    and-int/lit16 v1, p1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 80
    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0xc

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 81
    shr-int/lit8 v1, p1, 0xb

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1a

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 82
    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 83
    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->intToLEByteArray(J)[B

    move-result-object v0

    .line 84
    .local v0, "finalByte":[B
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Port patch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method public static final intToLEByteArray(J)[B
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static patch(Ljava/nio/ByteBuffer;Lcom/joshuahuelsman/patchtool/PTPatch;)V
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "patch"    # Lcom/joshuahuelsman/patchtool/PTPatch;

    .prologue
    .line 26
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    iget-object v2, v3, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->translator:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;

    .line 27
    .local v2, "translator":Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
    const/4 v3, 0x0

    iput v3, p1, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    :goto_0
    iget v3, p1, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    invoke-virtual {p1}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNumPatches()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextAddr()I

    move-result v0

    .line 29
    .local v0, "addr":I
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;->get(I)I

    move-result v0

    .line 30
    :cond_0
    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->positionBuf(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 31
    .local v1, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    iget v3, p1, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    goto :goto_0

    .line 33
    .end local v0    # "addr":I
    .end local v1    # "newBuf":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private static positionBuf(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "addr"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->minecraftTextBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 19
    sget-object p0, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->minecraftTextBuffer:Ljava/nio/ByteBuffer;

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    return-object p0
.end method

.method public static unpatch(Ljava/nio/ByteBuffer;[BLcom/joshuahuelsman/patchtool/PTPatch;)V
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "original"    # [B
    .param p2, "patch"    # Lcom/joshuahuelsman/patchtool/PTPatch;

    .prologue
    .line 36
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    iget-object v4, v5, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->translator:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;

    .line 37
    .local v4, "translator":Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 38
    .local v3, "originalBuf":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    iput v5, p2, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    :goto_0
    iget v5, p2, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    invoke-virtual {p2}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNumPatches()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 39
    invoke-virtual {p2}, Lcom/joshuahuelsman/patchtool/PTPatch;->getNextAddr()I

    move-result v0

    .line 40
    .local v0, "addr":I
    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;->get(I)I

    move-result v0

    .line 41
    :cond_0
    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->positionBuf(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 42
    .local v1, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    invoke-virtual {p2}, Lcom/joshuahuelsman/patchtool/PTPatch;->getDataLength()I

    move-result v5

    new-array v2, v5, [B

    .line 44
    .local v2, "nextData":[B
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    iget v5, p2, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p2, Lcom/joshuahuelsman/patchtool/PTPatch;->count:I

    goto :goto_0

    .line 47
    .end local v0    # "addr":I
    .end local v1    # "newBuf":Ljava/nio/ByteBuffer;
    .end local v2    # "nextData":[B
    :cond_1
    return-void
.end method
