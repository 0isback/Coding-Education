.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "headers"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .prologue
    const/4 v9, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    .line 93
    iput v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 105
    iput v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 112
    iput v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I

    .line 116
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 117
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    .line 119
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders$1;

    invoke-direct {v2, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders$1;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)V

    .line 137
    .local v2, "handler":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 138
    invoke-virtual {p2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "value":Ljava/lang/String;
    const-string v8, "Cache-Control"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    invoke-static {v6, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const-string v8, "Date"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    invoke-static {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 144
    :cond_2
    const-string v8, "Expires"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 145
    invoke-static {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_3
    const-string v8, "Last-Modified"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 147
    invoke-static {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 148
    :cond_4
    const-string v8, "ETag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    iput-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_5
    const-string v8, "Pragma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 151
    const-string v8, "no-cache"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 154
    :cond_6
    const-string v8, "Age"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 155
    invoke-static {v6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 156
    :cond_7
    const-string v8, "Vary"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 158
    iget-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 159
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 161
    :cond_8
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 162
    .local v7, "varyField":Ljava/lang/String;
    iget-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "varyField":Ljava/lang/String;
    :cond_9
    const-string v8, "Content-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 165
    iput-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_a
    const-string v8, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 167
    iput-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 168
    :cond_b
    const-string v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 170
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 173
    :cond_c
    const-string v8, "Connection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 174
    iput-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    :cond_d
    const-string v8, "X-Android-Sent-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 176
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 177
    :cond_e
    const-string v8, "X-Android-Received-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 178
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1

    .line 181
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method static synthetic access$002(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 13
    .param p1, "nowMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 276
    iget-object v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 279
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 282
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 283
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 284
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 279
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 292
    iget v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 293
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 309
    :cond_0
    :goto_0
    return-wide v4

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_4

    .line 295
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 296
    .local v2, "servedMillis":J
    :goto_1
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 297
    .local v0, "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v4, v0

    goto :goto_0

    .line 295
    .end local v2    # "servedMillis":J
    :cond_2
    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v2    # "servedMillis":J
    :cond_3
    move-wide v0, v4

    .line 297
    goto :goto_2

    .line 298
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_4
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 306
    .restart local v2    # "servedMillis":J
    :goto_3
    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 307
    .restart local v0    # "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_0

    .line 305
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_5
    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseResponseSource(JLcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;
    .locals 15
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    .prologue
    .line 388
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isCacheable(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 389
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 434
    :goto_0
    return-object v10

    .line 392
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->isNoCache()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 393
    :cond_1
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto :goto_0

    .line 396
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v2

    .line 397
    .local v2, "ageMillis":J
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v4

    .line 399
    .local v4, "freshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 400
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 404
    :cond_3
    const-wide/16 v8, 0x0

    .line 405
    .local v8, "minFreshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 406
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 409
    :cond_4
    const-wide/16 v6, 0x0

    .line 410
    .local v6, "maxStaleMillis":J
    iget-boolean v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v10, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 411
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 414
    :cond_5
    iget-boolean v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    if-nez v10, :cond_8

    add-long v10, v2, v8

    add-long v12, v4, v6

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    .line 415
    add-long v10, v2, v8

    cmp-long v10, v10, v4

    if-ltz v10, :cond_6

    .line 416
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v11, "Warning"

    const-string v12, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v10, v11, v12}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_6
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->HOURS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x18

    invoke-virtual {v10, v12, v13}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_7

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 419
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v11, "Warning"

    const-string v12, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v10, v11, v12}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_7
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    .line 424
    :cond_8
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v10, :cond_b

    .line 425
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 430
    :cond_9
    :goto_1
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 431
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 434
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    .line 426
    :cond_b
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v10, :cond_9

    .line 427
    iget-object v10, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_1

    .line 434
    :cond_c
    sget-object v10, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0
.end method

.method public combine(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;
    .locals 6
    .param p1, "network"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .prologue
    .line 467
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-direct {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;-><init>()V

    .line 468
    .local v2, "result":Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 471
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 477
    :cond_2
    invoke-virtual {v2, v0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 481
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 482
    iget-object v4, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 484
    iget-object v4, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 488
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v4, v5, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;)V

    return-object v4
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "close"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;)Z
    .locals 4
    .param p1, "request"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 331
    .local v0, "responseCode":I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 350
    :cond_2
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_0

    .line 354
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 184
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3
    .param p1, "sentRequestMillis"    # J
    .param p3, "receivedResponseMillis"    # J

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->sentRequestMillis:J

    .line 266
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-wide p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    .line 268
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public validate(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;)Z
    .locals 6
    .param p1, "networkResponse"    # Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;

    .prologue
    const/4 v0, 0x1

    .line 444
    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->headers:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 459
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
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
    .line 371
    .local p1, "cachedRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "newRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "field":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x0

    .line 376
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
