.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;,
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    }
.end annotation


# instance fields
.field private final address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private recycled:Z

.field private final socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private unverifiedSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)V
    .locals 7
    .param p1, "config"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .param p2, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->recycled:Z

    .line 64
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "socketCandidate":Ljava/net/Socket;
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 73
    .local v0, "addresses":[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 74
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_1

    new-instance v3, Ljava/net/Socket;

    .end local v3    # "socketCandidate":Ljava/net/Socket;
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 78
    .restart local v3    # "socketCandidate":Ljava/net/Socket;
    :goto_1
    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v2

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$200(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 89
    return-void

    .line 74
    :cond_1
    new-instance v3, Ljava/net/Socket;

    .end local v3    # "socketCandidate":Ljava/net/Socket;
    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    goto :goto_1

    .line 81
    .restart local v3    # "socketCandidate":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    .line 83
    throw v1

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;ILcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)V

    return-void
.end method

.method public static connect(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;ZI)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 8
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "requiresTunnel"    # Z
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_0

    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 100
    .local v0, "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    :goto_0
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v6

    .line 130
    .end local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    :goto_1
    return-object v6

    .line 97
    :cond_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    .line 108
    .local v5, "selector":Ljava/net/ProxySelector;
    invoke-virtual {v5, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "proxyList":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v3, :cond_3

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 111
    .local v4, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_2

    .line 117
    :try_start_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, v4, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V

    .line 119
    .restart local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 120
    .end local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_2

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :cond_3
    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    new-instance v7, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-direct {v7, p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v6, v7, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->get(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 137
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 140
    return-void
.end method

.method public getAddress()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 176
    :goto_0
    return-object v1

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    .line 171
    const/16 v0, 0x80

    .line 172
    .local v0, "bufferSize":I
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$300(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 176
    .end local v0    # "bufferSize":I
    :cond_2
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 172
    .restart local v0    # "bufferSize":I
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method protected isEligibleForRecycling()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->recycled:Z

    return v0
.end method

.method public setRecycled()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->recycled:Z

    .line 256
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 144
    return-void
.end method

.method public setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 11
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "tlsTolerant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 199
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$500(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    .line 202
    if-eqz p2, :cond_0

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 206
    .local v1, "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setEnabledCompressionMethods"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ZLIB"

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "socketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 220
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "SSLv3"

    aput-object v4, v3, v10

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "SSLv3"

    aput-object v4, v3, v10

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .locals 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->address:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->access$400(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 236
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
