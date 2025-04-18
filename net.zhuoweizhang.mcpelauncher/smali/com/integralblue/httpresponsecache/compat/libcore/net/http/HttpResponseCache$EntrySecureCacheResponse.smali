.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySecureCacheResponse"
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
    .line 562
    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .line 564
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    .line 565
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->access$600(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    .line 566
    return-void
.end method

.method static synthetic access$200(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;)Lcom/jakewharton/DiskLruCache$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$800(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

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
    .line 569
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$700(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 604
    :cond_0
    const/4 v0, 0x0

    .line 606
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 583
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$EntrySecureCacheResponse;->entry:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
