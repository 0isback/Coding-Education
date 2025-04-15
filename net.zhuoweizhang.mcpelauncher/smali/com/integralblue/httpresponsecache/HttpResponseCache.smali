.class public final Lcom/integralblue/httpresponsecache/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;


# static fields
.field private static calledSetURLStreamHandlerFactory:Z


# instance fields
.field private final delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->calledSetURLStreamHandlerFactory:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 155
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    .line 156
    return-void
.end method

.method public static getInstalled()Lcom/integralblue/httpresponsecache/HttpResponseCache;
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 164
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Lcom/integralblue/httpresponsecache/HttpResponseCache;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/integralblue/httpresponsecache/HttpResponseCache;

    .end local v0    # "installed":Ljava/net/ResponseCache;
    :goto_0
    return-object v0

    .restart local v0    # "installed":Ljava/net/ResponseCache;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static install(Ljava/io/File;J)Lcom/integralblue/httpresponsecache/HttpResponseCache;
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/integralblue/httpresponsecache/HttpResponseCache;->getInstalled()Lcom/integralblue/httpresponsecache/HttpResponseCache;

    move-result-object v0

    .line 180
    .local v0, "installed":Lcom/integralblue/httpresponsecache/HttpResponseCache;
    if-eqz v0, :cond_1

    .line 182
    iget-object v3, v0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    .line 183
    .local v1, "installedCache":Lcom/jakewharton/DiskLruCache;
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->getMaxSize()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    .end local v0    # "installed":Lcom/integralblue/httpresponsecache/HttpResponseCache;
    .end local v1    # "installedCache":Lcom/jakewharton/DiskLruCache;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "installed":Lcom/integralblue/httpresponsecache/HttpResponseCache;
    .restart local v1    # "installedCache":Lcom/jakewharton/DiskLruCache;
    :cond_0
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 192
    .end local v1    # "installedCache":Lcom/jakewharton/DiskLruCache;
    :cond_1
    new-instance v2, Lcom/integralblue/httpresponsecache/HttpResponseCache;

    invoke-direct {v2, p0, p1, p2}, Lcom/integralblue/httpresponsecache/HttpResponseCache;-><init>(Ljava/io/File;J)V

    .line 193
    .local v2, "result":Lcom/integralblue/httpresponsecache/HttpResponseCache;
    invoke-static {v2}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 194
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/javax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v3}, Lcom/integralblue/httpresponsecache/compat/javax/net/ssl/DefaultHostnameVerifier;-><init>()V

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 195
    sget-boolean v3, Lcom/integralblue/httpresponsecache/HttpResponseCache;->calledSetURLStreamHandlerFactory:Z

    if-nez v3, :cond_2

    .line 198
    const/4 v3, 0x1

    sput-boolean v3, Lcom/integralblue/httpresponsecache/HttpResponseCache;->calledSetURLStreamHandlerFactory:Z

    .line 199
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/URLStreamHandlerFactoryImpl;

    invoke-direct {v3}, Lcom/integralblue/httpresponsecache/compat/URLStreamHandlerFactoryImpl;-><init>()V

    invoke-static {v3}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    :cond_2
    move-object v0, v2

    .line 201
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->close()V

    .line 292
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->delete()V

    .line 302
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->trackConditionalCacheHit()V

    .line 276
    return-void
.end method

.method public trackResponse(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 1
    .param p1, "source"    # Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->trackResponse(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 271
    return-void
.end method

.method public update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "conditionalCacheHit"    # Ljava/net/CacheResponse;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/HttpResponseCache;->delegate:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    .line 281
    return-void
.end method
