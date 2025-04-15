.class public Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "UnsafeByteSequence.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 39
    return-void
.end method


# virtual methods
.method public rewind()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    .line 51
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    new-array v0, v1, [B

    .line 78
    .local v0, "result":[B
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v0, v1, v2, p1}, Lcom/integralblue/httpresponsecache/compat/Strings;->construct([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 64
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 66
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 69
    .end local v0    # "newBytes":[B
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 54
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 55
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 56
    .local v0, "newBytes":[B
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 59
    .end local v0    # "newBytes":[B
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    .line 61
    return-void
.end method
