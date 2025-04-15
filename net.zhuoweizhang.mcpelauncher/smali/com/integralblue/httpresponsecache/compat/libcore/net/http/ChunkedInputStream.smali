.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final MIN_LAST_CHUNK_LENGTH:I

.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "\r\n0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "httpEngine"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p3, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 38
    return-void
.end method

.method private readChunkSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 77
    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v3, v4, :cond_0

    .line 78
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "chunkSizeString":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 82
    .local v2, "index":I
    if-eq v2, v4, :cond_1

    .line 83
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v3, :cond_2

    .line 91
    iput-boolean v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 92
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readTrailers()V

    .line 93
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->endOfInput(Z)V

    .line 95
    :cond_2
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a hex chunk size, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 99
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->closed:Z

    .line 111
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 41
    array-length v2, p1

    invoke-static {v2, p2, p3}, Lcom/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 42
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 44
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v2, v1, :cond_3

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->readChunkSize()V

    .line 49
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 50
    goto :goto_0

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 54
    .local v0, "read":I
    if-ne v0, v1, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    .line 56
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_4
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->cacheWrite([BII)V

    .line 68
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    sget v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    if-lt v1, v2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->readChunkSize()V

    goto :goto_0
.end method
