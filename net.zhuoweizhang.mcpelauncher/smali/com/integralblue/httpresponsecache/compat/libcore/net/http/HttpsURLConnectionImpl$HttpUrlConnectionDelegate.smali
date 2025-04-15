.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpUrlConnectionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;


# direct methods
.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "port"    # I

    .prologue
    .line 377
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    .line 378
    invoke-direct {p0, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
    .param p2, "x1"    # Ljava/net/URL;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V

    return-void
.end method

.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "port"    # I
    .param p4, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;
    .param p2, "x1"    # Ljava/net/URL;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/net/Proxy;
    .param p5, "x4"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V

    return-void
.end method


# virtual methods
.method public getCacheResponse()Ljava/net/SecureCacheResponse;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    .line 393
    .local v0, "engine":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/CacheResponse;

    move-result-object v1

    check-cast v1, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSSLSocket()Ljavax/net/ssl/SSLSocket;
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    .line 398
    .local v0, "engine":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->access$300(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHttpEngine(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 8
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
    .line 387
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RetryableOutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl$1;)V

    return-object v0
.end method
