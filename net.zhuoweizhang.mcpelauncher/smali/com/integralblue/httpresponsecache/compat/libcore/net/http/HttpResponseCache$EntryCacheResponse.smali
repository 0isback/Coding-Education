.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCacheResponse"
.end annotation


# instance fields
.field private final entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;Lcom/jakewharton/DiskLruCache$Snapshot;)V
    .locals 1
    .param p1, "entry"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
    .param p2, "snapshot"    # Lcom/jakewharton/DiskLruCache$Snapshot;

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .line 544
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    .line 545
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->access$600(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    .line 546
    return-void
.end method

.method static synthetic access$100(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;)Lcom/jakewharton/DiskLruCache$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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
    .line 549
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntryCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
