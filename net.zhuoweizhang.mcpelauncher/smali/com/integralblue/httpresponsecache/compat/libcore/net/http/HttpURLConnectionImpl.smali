.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# instance fields
.field private final defaultPort:I

.field protected httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private proxy:Ljava/net/Proxy;

.field private final rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private redirectionCount:I


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "port"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 65
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 74
    iput p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "port"    # I
    .param p3, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 79
    iput-object p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 80
    return-void
.end method

.method private getAuthorizationCredentials(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "responseHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p2, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseChallenges(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 439
    .local v3, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    new-instance v7, Ljava/io/IOException;

    const-string v8, "No authentication challenges found"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 443
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;

    .line 445
    .local v2, "challenge":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v8

    iget-object v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;->realm:Ljava/lang/String;

    iget-object v11, v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;->scheme:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v11}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 448
    .local v0, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v0, :cond_1

    .line 453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "usernameAndPassword":Ljava/lang/String;
    sget-object v7, Lcom/integralblue/httpresponsecache/compat/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v6, v7}, Lcom/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 455
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "encoded":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 459
    .end local v0    # "auth":Ljava/net/PasswordAuthentication;
    .end local v1    # "bytes":[B
    .end local v2    # "challenge":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/Challenge;
    .end local v4    # "encoded":Ljava/lang/String;
    .end local v6    # "usernameAndPassword":Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getConnectToHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectToPort()I
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 228
    .local v0, "hostPort":I
    :goto_0
    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v0

    .end local v0    # "hostPort":I
    :cond_0
    return v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 280
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    .line 308
    :goto_0
    return-object v5

    .line 288
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 294
    .local v1, "requestBody":Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasRecycledConnection()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-eqz v5, :cond_2

    .line 296
    :cond_0
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 297
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const/4 v7, 0x0

    check-cast v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    .end local v1    # "requestBody":Ljava/io/OutputStream;
    invoke-virtual {p0, v5, v6, v7, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v5

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V

    .line 287
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    .line 306
    .local v3, "retry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    sget-object v5, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_3

    .line 307
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 308
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    goto :goto_0

    .line 301
    .end local v3    # "retry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "requestBody":Ljava/io/OutputStream;
    :cond_2
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 302
    throw v0

    .line 314
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "requestBody":Ljava/io/OutputStream;
    .restart local v3    # "retry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    :cond_3
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 315
    .local v4, "retryMethod":Ljava/lang/String;
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 322
    .restart local v1    # "requestBody":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    .line 323
    .local v2, "responseCode":I
    const/16 v5, 0x12c

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12d

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12e

    if-eq v2, v5, :cond_4

    const/16 v5, 0x12f

    if-ne v2, v5, :cond_5

    .line 325
    :cond_4
    const-string v4, "GET"

    .line 326
    const/4 v1, 0x0

    .line 329
    :cond_5
    if-eqz v1, :cond_6

    instance-of v5, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    if-nez v5, :cond_6

    .line 330
    new-instance v5, Ljava/net/HttpRetryException;

    const-string v6, "Cannot retry streamed HTTP body"

    iget-object v7, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 334
    :cond_6
    sget-object v5, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v3, v5, :cond_7

    .line 335
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 338
    :cond_7
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 340
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getConnection()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v6

    check-cast v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;

    .end local v1    # "requestBody":Ljava/io/OutputStream;
    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v5

    iput-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    goto :goto_1
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    if-eqz v1, :cond_1

    .line 261
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    .line 247
    :try_start_0
    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "GET"

    if-ne v1, v2, :cond_3

    .line 250
    const-string v1, "POST"

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 259
    throw v0

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "POST"

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "PUT"

    if-eq v1, v2, :cond_2

    .line 253
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private processResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 400
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    :goto_0
    return-object v3

    .line 363
    :sswitch_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_0
    :sswitch_1
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v4

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {p0, v3, v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z

    move-result v0

    .line 371
    .local v0, "credentialsFound":Z
    if-eqz v0, :cond_1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 377
    .end local v0    # "credentialsFound":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 380
    :cond_2
    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->redirectionCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    .line 381
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Too many redirects"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :cond_3
    const-string v3, "Location"

    invoke-virtual {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "location":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 385
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 388
    .local v2, "previousUrl":Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 389
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 390
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto :goto_0

    .line 392
    :cond_5
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 394
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 396
    :cond_6
    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_0

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 88
    throw v0
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method final getChunkLength()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method final getDefaultPort()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->defaultPort:I

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    .line 114
    .local v1, "response":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .end local v1    # "response":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    :cond_0
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method final getFixedContentLength()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->fixedContentLength:I

    return v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    .line 144
    .local v1, "rawHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 148
    .end local v1    # "rawHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :goto_0
    return-object v2

    .line 144
    .restart local v1    # "rawHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v1    # "rawHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHttpEngine()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    .line 189
    .local v0, "response":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 190
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v1

    .line 194
    .local v1, "result":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 195
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_2
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connect()V

    .line 203
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 204
    .local v0, "result":Ljava/io/OutputStream;
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "connectToAddress":Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method final getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponse()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newHttpEngine(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p3, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .param p4, "requestBody"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    return-object v0
.end method

.method final processAuthHeader(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p3, "successorRequestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x197

    .line 412
    if-eq p1, v4, :cond_0

    const/16 v3, 0x191

    if-eq p1, v3, :cond_0

    .line 413
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 417
    :cond_0
    if-ne p1, v4, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 420
    .local v0, "challengeHeader":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "credentials":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 422
    const/4 v3, 0x0

    .line 430
    :goto_1
    return v3

    .line 417
    .end local v0    # "challengeHeader":Ljava/lang/String;
    .end local v1    # "credentials":Ljava/lang/String;
    :cond_1
    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 426
    .restart local v0    # "challengeHeader":Ljava/lang/String;
    .restart local v1    # "credentials":Ljava/lang/String;
    :cond_2
    if-ne p1, v4, :cond_3

    const-string v2, "Proxy-Authorization"

    .line 429
    .local v2, "fieldName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p3, v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v3, 0x1

    goto :goto_1

    .line 426
    .end local v2    # "fieldName":Ljava/lang/String;
    :cond_3
    const-string v2, "Authorization"

    goto :goto_2
.end method

.method final setProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 488
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    if-nez p1, :cond_1

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
