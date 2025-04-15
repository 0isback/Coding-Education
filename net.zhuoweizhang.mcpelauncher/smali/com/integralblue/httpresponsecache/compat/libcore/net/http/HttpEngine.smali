.class public Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field private static final GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

.field protected connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

.field private connectionReleased:Z

.field private httpMinorVersion:I

.field protected final method:Ljava/lang/String;

.field protected final policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

.field private requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

.field private final requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field private responseBodyIn:Ljava/io/InputStream;

.field private final responseCache:Ljava/net/ResponseCache;

.field private responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

.field private responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

.field sendChunked:Z

.field private sentRequestMillis:J

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V
    .locals 4
    .param p1, "policy"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p4, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .param p5, "requestBodyOut"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    .line 140
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 193
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    .line 194
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    .line 195
    iput-object p4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 196
    iput-object p5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/URLs;->toURILenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v3, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    invoke-direct {v1, v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRequestLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v1, :cond_0

    const-string v0, "HTTP/1.0"

    .line 724
    .local v0, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 723
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;I)V

    .line 558
    :goto_0
    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 549
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;I)V

    goto :goto_0

    .line 558
    :cond_2
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V

    goto :goto_0
.end method

.method private hasConnectionCloseHeader()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConnectionClose()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRequestBody()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "transferStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->stripContentEncoding()V

    .line 533
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v5, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 257
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v5, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v7, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v8}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 263
    .local v0, "candidate":Ljava/net/CacheResponse;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 268
    .local v4, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 269
    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 272
    :cond_2
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    .line 277
    .local v1, "rawResponseHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    new-instance v5, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v5, v6, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 279
    .local v2, "now":J
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v5, v2, v3, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->chooseResponseSource(JLcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    move-result-object v5

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 280
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v6, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v5, v6, :cond_4

    .line 281
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 282
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v5, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    .line 283
    :cond_4
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v6, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v5, v6, :cond_5

    .line 284
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 285
    :cond_5
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v6, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v5, v6, :cond_6

    .line 286
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 288
    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "CONNECT"

    if-ne v0, v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isCacheable(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v4

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 688
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 689
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 692
    :cond_0
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 696
    :cond_1
    const-string v4, "http.keepAlive"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "keepAlive":Ljava/lang/String;
    iget v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 698
    :cond_2
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v5, "Keep-Alive"

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 701
    :cond_3
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 702
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->transparentGzip:Z

    .line 703
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 706
    :cond_4
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 707
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 710
    :cond_5
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v2

    .line 711
    .local v2, "ifModifiedSince":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    .line 712
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 715
    :cond_6
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 716
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_7

    .line 717
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v6

    invoke-virtual {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 720
    :cond_7
    return-void
.end method

.method private readHeaders(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
    .locals 4
    .param p1, "headers"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    :goto_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    invoke-virtual {p1, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 618
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    .line 619
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 621
    :cond_1
    return-void
.end method

.method private readResponseHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    :cond_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    .line 565
    .local v0, "headers":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readHeaders(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 567
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 568
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 569
    return-void
.end method

.method private requestString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 728
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 729
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 732
    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "fileOnly":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 734
    const-string v0, "/"

    goto :goto_0

    .line 735
    :cond_2
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connect()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    .line 302
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 303
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    .line 305
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initRequestBodyOut()V

    .line 308
    :cond_3
    return-void
.end method

.method private setResponse(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "headers"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p2, "body"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .line 373
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getHttpMinorVersion()I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    .line 374
    if-eqz p2, :cond_1

    .line 375
    invoke-direct {p0, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 377
    :cond_1
    return-void
.end method

.method private writeRequestHeaders(I)V
    .locals 6
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 640
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getNetworkRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    .line 644
    .local v1, "headersToSend":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 646
    .local v0, "bytes":[B
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    array-length v2, v0

    add-int/2addr v2, p1

    const v3, 0x8000

    if-gt v2, v3, :cond_1

    .line 647
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    array-length v4, v0

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 650
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    .line 651
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 652
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 474
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 478
    :cond_0
    return-void
.end method

.method protected connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->openSocketConnection()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 317
    :cond_0
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    return-object v0
.end method

.method protected final getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 763
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method protected getNetworkRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v2

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 666
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 667
    .local v1, "fixedContentLength":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 668
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentLength(I)V

    .line 676
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v2

    return-object v2

    .line 669
    :cond_1
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_2

    .line 670
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setChunked()V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v2, v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 673
    .local v0, "contentLength":I
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setContentLength(I)V

    goto :goto_0
.end method

.method protected final getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 773
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 774
    .local v0, "port":I
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "result":Ljava/lang/String;
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    :cond_0
    return-object v1
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    return-object v0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    return-object v0
.end method

.method protected getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final hasRecycledConnection()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 579
    .local v0, "responseCode":I
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v4, "HEAD"

    if-ne v3, v4, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v1

    .line 583
    :cond_1
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v4, "CONNECT"

    if-eq v3, v4, :cond_3

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 587
    goto :goto_0

    .line 595
    :cond_3
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 596
    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected initRequestBodyOut()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 331
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    .line 332
    .local v0, "chunkLength":I
    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    .line 334
    if-ne v0, v3, :cond_1

    .line 335
    const/16 v0, 0x400

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 340
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No socket to write to; was a POST cached?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_2
    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v2, :cond_3

    .line 344
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    .line 348
    .local v1, "fixedContentLength":I
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v2, :cond_4

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_4
    if-eq v1, v3, :cond_5

    .line 351
    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 352
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 353
    :cond_5
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_6

    .line 354
    invoke-direct {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 355
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 356
    :cond_6
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 357
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 358
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;-><init>(I)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    .line 360
    :cond_7
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-direct {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;-><init>()V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    goto :goto_0
.end method

.method protected final openSocketConnection()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requiresTunnel()Z

    move-result v5

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->connect(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;ZI)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v1

    .line 322
    .local v1, "result":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 323
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->setProxy(Ljava/net/Proxy;)V

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->setSoTimeout(I)V

    .line 327
    return-object v1
.end method

.method public final readResponse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v3, :cond_2

    .line 795
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "readResponse() without sendRequest()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 798
    :cond_2
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    iget-wide v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 803
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v3, v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v1

    .line 806
    .local v1, "contentLength":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    .line 809
    .end local v1    # "contentLength":I
    :cond_3
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v3, :cond_4

    .line 810
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;->close()V

    .line 811
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    instance-of v3, v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v3, :cond_4

    .line 812
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    check-cast v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 816
    :cond_4
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 817
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    .line 819
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponseHeaders()V

    .line 820
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-wide v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 822
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v4, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v3, v4, :cond_7

    .line 823
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->validate(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 824
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 825
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->combine(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    .line 826
    .local v0, "combinedHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 827
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v3, v3, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    if-eqz v3, :cond_0

    .line 828
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v2, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    .line 829
    .local v2, "httpResponseCache":Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;
    invoke-interface {v2}, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;->trackConditionalCacheHit()V

    .line 830
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 803
    .end local v0    # "combinedHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .end local v2    # "httpResponseCache":Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 834
    :cond_6
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 838
    :cond_7
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 839
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->maybeCache()V

    .line 842
    :cond_8
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getTransferStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method final readTrailers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readHeaders(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 608
    return-void
.end method

.method public final release(Z)V
    .locals 4
    .param p1, "reusable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 486
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v1, v2, :cond_0

    .line 487
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 490
    :cond_0
    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v1, :cond_5

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connectionReleased:Z

    .line 494
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestBodyOut:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;

    iget-boolean v1, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-nez v1, :cond_1

    .line 495
    const/4 p1, 0x0

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasConnectionCloseHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    const/4 p1, 0x0

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;

    if-eqz v1, :cond_3

    .line 504
    const/4 p1, 0x0

    .line 507
    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_4
    :goto_0
    if-nez p1, :cond_6

    .line 517
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->closeSocketAndStreams()V

    .line 518
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 524
    :cond_5
    :goto_1
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    const/4 p1, 0x0

    goto :goto_0

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v1, :cond_5

    .line 520
    sget-object v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 521
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    goto :goto_1
.end method

.method protected requiresTunnel()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public final sendRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 222
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->initResponseSource()V

    .line 223
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-interface {v1, v2}, Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;->trackResponse(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->requestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v1, v2, :cond_3

    .line 235
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 237
    :cond_3
    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 238
    sget-object v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 239
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    .line 240
    .local v0, "rawResponseHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->setResponse(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 243
    .end local v0    # "rawResponseHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :cond_4
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->responseSource:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->recycle(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 247
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    goto :goto_0
.end method
