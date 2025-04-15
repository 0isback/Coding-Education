.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final proxy:Ljava/net/Proxy;

.field private final requiresTunnel:Z

.field private final socketHost:Ljava/lang/String;

.field private final socketPort:I

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final uriHost:Ljava/lang/String;

.field private final uriPort:I


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 287
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 288
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    .line 289
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 290
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 291
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    .line 292
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "requiresTunnel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 306
    iput-boolean p4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 307
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/net/URI;)I

    move-result v2

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    .line 309
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 311
    invoke-virtual {p3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 312
    .local v0, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_0

    .line 313
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, v0

    .line 316
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 317
    .local v1, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 318
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    .line 319
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 320
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    return v0
.end method

.method static synthetic access$300(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Z
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    return v0
.end method

.method static synthetic access$400(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .prologue
    .line 275
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    return v0
.end method


# virtual methods
.method public connect(I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 2
    .param p1, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;ILcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 329
    instance-of v2, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 330
    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .line 331
    .local v0, "that":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iget-object v3, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    iget v3, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    iget-boolean v3, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 336
    .end local v0    # "that":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    :cond_0
    return v1
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 340
    const/16 v0, 0x11

    .line 341
    .local v0, "result":I
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 342
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    add-int v0, v1, v3

    .line 343
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 344
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 345
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    .line 346
    return v0

    :cond_1
    move v1, v2

    .line 343
    goto :goto_0

    :cond_2
    move v1, v2

    .line 344
    goto :goto_1
.end method
