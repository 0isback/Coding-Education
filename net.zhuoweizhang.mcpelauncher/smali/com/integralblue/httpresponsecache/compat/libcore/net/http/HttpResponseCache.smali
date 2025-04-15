.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/integralblue/httpresponsecache/compat/java/net/ExtendedResponseCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$2;,
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;,
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;,
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;,
        Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/jakewharton/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 83
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/jakewharton/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/jakewharton/DiskLruCache;

    .line 84
    return-void
.end method

.method private abortQuietly(Lcom/jakewharton/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/jakewharton/DiskLruCache$Editor;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$408(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    .prologue
    .line 66
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;

    .prologue
    .line 66
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/DiskLruCache$Snapshot;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->newBodyInputStream(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getHttpEngine(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    .locals 1
    .param p1, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 222
    instance-of v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 224
    .restart local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_0
    instance-of v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    .line 225
    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 227
    .restart local p1    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newBodyInputStream(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2
    .param p0, "snapshot"    # Lcom/jakewharton/DiskLruCache$Snapshot;

    .prologue
    .line 529
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;-><init>(Ljava/io/InputStream;Lcom/jakewharton/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 94
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/MD5;

    invoke-direct {v1}, Lcom/integralblue/httpresponsecache/compat/MD5;-><init>()V

    .line 95
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 96
    .local v0, "md5bytes":[B
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/integralblue/httpresponsecache/compat/Strings;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 7
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

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v3

    .line 109
    .local v3, "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-nez v3, :cond_0

    .line 123
    .end local v3    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :goto_0
    return-object v4

    .line 112
    .restart local v3    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :cond_0
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    new-instance v5, Ljava/io/BufferedInputStream;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v1, "entry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    invoke-virtual {v1, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    invoke-virtual {v3}, Lcom/jakewharton/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 113
    .end local v1    # "entry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    .end local v3    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    .restart local v3    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :cond_1
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Lcom/jakewharton/DiskLruCache$Snapshot;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Lcom/jakewharton/DiskLruCache$Snapshot;)V

    goto :goto_0
.end method

.method public getCache()Lcom/jakewharton/DiskLruCache;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/jakewharton/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 129
    instance-of v10, p2, Ljava/net/HttpURLConnection;

    if-nez v10, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v9

    :cond_1
    move-object v3, p2

    .line 133
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 134
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "requestMethod":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "key":Ljava/lang/String;
    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "PUT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 141
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v10, v5}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v10

    goto :goto_0

    .line 146
    :cond_3
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 155
    invoke-direct {p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v4

    .line 156
    .local v4, "httpEngine":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v7

    .line 162
    .local v7, "response":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    invoke-virtual {v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->hasVaryAll()Z

    move-result v10

    if-nez v10, :cond_0

    .line 166
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v10

    invoke-virtual {v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v8

    .line 168
    .local v8, "varyHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v8, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 169
    .local v2, "entry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 171
    .local v1, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    :try_start_1
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v10, v5}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeTo(Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 176
    new-instance v10, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v10, p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;Lcom/jakewharton/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->abortQuietly(Lcom/jakewharton/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method public declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackResponse(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 2
    .param p1, "source"    # Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->requestCount:I

    .line 246
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$2;->$SwitchMap$com$integralblue$httpresponsecache$compat$java$net$ResponseSource:[I

    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "conditionalCacheHit"    # Ljava/net/CacheResponse;
    .param p2, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 190
    invoke-direct {p0, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    move-result-object v3

    .line 191
    .local v3, "httpEngine":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getUri()Ljava/net/URI;

    move-result-object v6

    .line 192
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getResponseHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    move-result-object v4

    .line 193
    .local v4, "response":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->getRequestHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v7

    .line 195
    .local v7, "varyHeaders":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, v6, v7, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 196
    .local v2, "entry":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    instance-of v8, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;

    if-eqz v8, :cond_1

    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;

    .end local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v5

    .line 199
    .local v5, "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :goto_0
    const/4 v1, 0x0

    .line 201
    .local v1, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v5}, Lcom/jakewharton/DiskLruCache$Snapshot;->edit()Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeTo(Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 204
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 196
    .end local v1    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .end local v5    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    .restart local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    :cond_1
    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;

    .end local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->access$200(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v5

    goto :goto_0

    .line 206
    .restart local v1    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .restart local v5    # "snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->abortQuietly(Lcom/jakewharton/DiskLruCache$Editor;)V

    goto :goto_1
.end method
