.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"


# static fields
.field public static final INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;


# instance fields
.field private final connectionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;",
            "Ljava/util/List",
            "<",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;-><init>()V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->INSTANCE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    .line 48
    const-string v2, "http.keepAlive"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "keepAlive":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "maxConnectionsString":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1
.end method


# virtual methods
.method public get(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 4
    .param p1, "address"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .param p2, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v3

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 65
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    :cond_0
    if-eqz v1, :cond_2

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .line 67
    .local v0, "connection":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v1, 0x0

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    monitor-exit v3

    .line 85
    .end local v0    # "connection":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    :goto_0
    return-object v0

    .line 79
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->connect(I)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    move-result-object v0

    goto :goto_0

    .line 79
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;)V
    .locals 5
    .param p1, "connection"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    .prologue
    .line 90
    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->getAddress()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    move-result-object v0

    .line 92
    .local v0, "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnectionPool;->maxConnections:I

    if-ge v2, v4, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->setRecycled()V

    .line 100
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v3

    .line 108
    .end local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    :goto_0
    return-void

    .line 103
    .restart local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .restart local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_0

    .line 103
    .restart local v0    # "address":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
