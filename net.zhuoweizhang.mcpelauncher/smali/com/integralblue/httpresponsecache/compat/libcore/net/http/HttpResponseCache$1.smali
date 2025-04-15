.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;
.super Ljava/io/FilterInputStream;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;->newBodyInputStream(Lcom/jakewharton/DiskLruCache$Snapshot;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/jakewharton/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 529
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;->val$snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
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
    .line 531
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$1;->val$snapshot:Lcom/jakewharton/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache$Snapshot;->close()V

    .line 532
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 533
    return-void
.end method
