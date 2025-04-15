.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpsEngine"
.end annotation


# instance fields
.field private final enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;)V
    .locals 1
    .param p1, "policy"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p4, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .param p5, "requestBody"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;
    .param p6, "enclosing"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct/range {p0 .. p5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    .line 424
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 425
    iput-object p6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p4, "x3"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .param p5, "x4"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;
    .param p6, "x5"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
    .param p7, "x6"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct/range {p0 .. p6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method private makeSslConnection(Z)Z
    .locals 3
    .param p1, "tlsTolerant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->openSocketConnection()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 464
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeTunnel(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 476
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 481
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTunnel(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)V
    .locals 8
    .param p1, "policy"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
    .param p2, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .param p3, "requestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v2

    .line 493
    .local v2, "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :goto_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;

    invoke-direct {v0, p1, v2, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V

    .line 494
    .local v0, "connect":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->sendRequest()V

    .line 495
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readResponse()V

    .line 497
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v4

    .line 498
    .local v4, "responseCode":I
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 511
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response code for CONNECT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 502
    :sswitch_0
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v3, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    .line 503
    .end local v2    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .local v3, "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    const/16 v5, 0x197

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)Z

    move-result v1

    .line 505
    .local v1, "credentialsFound":Z
    if-eqz v1, :cond_0

    move-object v2, v3

    .line 506
    .end local v3    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .restart local v2    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    goto :goto_0

    .line 508
    .end local v2    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .restart local v3    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to authenticate with proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    .end local v1    # "credentialsFound":Z
    .end local v3    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .restart local v2    # "rawRequestHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    :sswitch_1
    return-void

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 517
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 435
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    .local v0, "connectionReused":Z
    :goto_0
    if-nez v0, :cond_0

    .line 448
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->connection:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 450
    :cond_0
    return-void

    .line 436
    .end local v0    # "connectionReused":Z
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/io/IOException;
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_1

    .line 441
    throw v1

    .line 443
    :cond_1
    invoke-virtual {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->release(Z)V

    .line 444
    invoke-direct {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z

    move-result v0

    .restart local v0    # "connectionReused":Z
    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method protected getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method
