.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    :try_start_0
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 383
    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 384
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 385
    .local v3, "varyRequestHeaderLineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 386
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 390
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 392
    .local v2, "responseHeaderLineCount":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 393
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 397
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "blank":Ljava/lang/String;
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 399
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \"\" but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "responseHeaderLineCount":I
    .end local v3    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v4

    .line 401
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "responseHeaderLineCount":I
    .restart local v3    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 402
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 403
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .end local v0    # "blank":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 412
    return-void

    .line 405
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 406
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 407
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "varyHeaders"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .param p3, "httpConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 417
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 418
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 420
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p3

    .line 421
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 422
    .local v0, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 428
    :goto_0
    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 429
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 435
    .end local v0    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :goto_1
    return-void

    .line 431
    :cond_0
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 432
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 433
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_1

    .line 426
    .restart local v0    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$800(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 480
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 481
    const/4 v6, 0x0

    .line 492
    :cond_0
    return-object v6

    .line 484
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 485
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 486
    .local v6, "result":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    .line 487
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "line":Ljava/lang/String;
    sget-object v7, Lcom/integralblue/httpresponsecache/compat/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v5, v7}, Lcom/integralblue/httpresponsecache/compat/Strings;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->decode([B)[B

    move-result-object v0

    .line 489
    .local v0, "bytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "bytes":[B
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "intString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    if-nez p2, :cond_1

    .line 500
    const-string v7, "-1\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void

    .line 504
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 505
    move-object v0, p2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 506
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 507
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "bytes":[B
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 517
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v0, p1, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Lcom/jakewharton/DiskLruCache$Editor;)V
    .locals 6
    .param p1, "editor"    # Lcom/jakewharton/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 438
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 439
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/integralblue/httpresponsecache/compat/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 441
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->varyHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->responseHeaders:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 460
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 462
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 463
    return-void
.end method
