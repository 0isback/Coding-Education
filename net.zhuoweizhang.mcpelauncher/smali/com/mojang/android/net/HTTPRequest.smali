.class public Lcom/mojang/android/net/HTTPRequest;
.super Ljava/lang/Object;
.source "HTTPRequest.java"


# static fields
.field public static debugNet:Z


# instance fields
.field public contentType:Ljava/lang/String;

.field public cookieData:Ljava/lang/String;

.field public requestBody:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toApacheHeaders(Ljava/net/HttpURLConnection;)[Lorg/apache/http/Header;
    .locals 11
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 96
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 97
    .local v3, "headerSize":I
    :goto_0
    new-array v5, v3, [Lorg/apache/http/Header;

    .line 98
    .local v5, "headersOut":[Lorg/apache/http/Header;
    const/4 v1, 0x0

    .line 99
    .local v1, "headerIndex":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 101
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "headerIndex":I
    .local v2, "headerIndex":I
    new-instance v9, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, ","

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v5, v1

    move v1, v2

    .line 102
    .end local v2    # "headerIndex":I
    .restart local v1    # "headerIndex":I
    goto :goto_1

    .line 96
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "headerIndex":I
    .end local v3    # "headerSize":I
    .end local v5    # "headersOut":[Lorg/apache/http/Header;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    goto :goto_0

    .line 103
    .restart local v1    # "headerIndex":I
    .restart local v3    # "headerSize":I
    .restart local v5    # "headersOut":[Lorg/apache/http/Header;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v5
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 91
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Abort"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)Lcom/mojang/android/net/HTTPResponse;
    .locals 17
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v12, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v12, :cond_0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Send: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 41
    .local v5, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 42
    .local v9, "status":I
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mojang/android/net/HTTPRequest;->url:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v10, "urlObj":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 45
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v12, "User-Agent"

    const-string v13, "BlockLauncher"

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v12, "Cookie"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mojang/android/net/HTTPRequest;->cookieData:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 48
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    const-string v12, "Content-Type"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mojang/android/net/HTTPRequest;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "os":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 55
    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v11, "writer":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mojang/android/net/HTTPRequest;->requestBody:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 61
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 66
    :goto_0
    if-nez v5, :cond_2

    :try_start_2
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Null input stream"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v10    # "urlObj":Ljava/net/URL;
    .end local v11    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v4

    .line 78
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    new-instance v12, Lcom/mojang/android/net/HTTPResponse;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/http/Header;

    move-object/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Lcom/mojang/android/net/HTTPResponse;-><init>(IILjava/lang/String;[Lorg/apache/http/Header;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    if-eqz v5, :cond_1

    .line 83
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v12

    .line 62
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v10    # "urlObj":Ljava/net/URL;
    .restart local v11    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v4

    .line 63
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v7, "realos":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x1000

    new-array v1, v12, [B

    .line 72
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_4

    .line 73
    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 81
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "realos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "urlObj":Ljava/net/URL;
    .end local v11    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_3

    .line 83
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 85
    :cond_3
    :goto_3
    throw v12

    .line 75
    .restart local v1    # "buffer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "realos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "urlObj":Ljava/net/URL;
    .restart local v11    # "writer":Ljava/io/OutputStreamWriter;
    :cond_4
    :try_start_7
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v8, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 76
    .local v8, "returnString":Ljava/lang/String;
    new-instance v12, Lcom/mojang/android/net/HTTPResponse;

    const/4 v13, 0x1

    invoke-static {v2}, Lcom/mojang/android/net/HTTPRequest;->toApacheHeaders(Ljava/net/HttpURLConnection;)[Lorg/apache/http/Header;

    move-result-object v14

    invoke-direct {v12, v13, v9, v8, v14}, Lcom/mojang/android/net/HTTPResponse;-><init>(IILjava/lang/String;[Lorg/apache/http/Header;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 81
    if-eqz v5, :cond_1

    .line 83
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 84
    :catch_2
    move-exception v13

    goto :goto_1

    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "realos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "returnString":Ljava/lang/String;
    .end local v10    # "urlObj":Ljava/net/URL;
    .end local v11    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v13

    goto :goto_3
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->contentType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCookieData(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->cookieData:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->requestBody:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/mojang/android/net/HTTPRequest;->url:Ljava/lang/String;

    .line 22
    return-void
.end method
