.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyConnectEngine"
.end annotation


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V
    .locals 6
    .param p1, "policy"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
    .param p2, "requestHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p3, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    const-string v2, "CONNECT"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)V

    .line 540
    return-void
.end method


# virtual methods
.method protected getNetworkRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v1

    .line 549
    .local v1, "privateHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->policy:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 551
    .local v4, "url":Ljava/net/URL;
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    .line 552
    .local v3, "result":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/URLs;->getEffectivePort(Ljava/net/URL;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP/1.1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_0
    const-string v6, "Host"

    invoke-virtual {v3, v6, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "userAgent":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v5

    .line 566
    :cond_1
    const-string v6, "User-Agent"

    invoke-virtual {v3, v6, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "proxyAuthorization":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 571
    const-string v6, "Proxy-Authorization"

    invoke-virtual {v3, v6, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    const-string v6, "Proxy-Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v3, v6, v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-object v3
.end method

.method protected requiresTunnel()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    return v0
.end method
