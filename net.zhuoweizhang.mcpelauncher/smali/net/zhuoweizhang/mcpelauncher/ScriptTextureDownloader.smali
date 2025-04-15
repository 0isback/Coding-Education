.class public Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;
.super Ljava/lang/Object;
.source "ScriptTextureDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public afterDownloadAction:Ljava/lang/Runnable;

.field public canUseStale:Z

.field public file:Ljava/io/File;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/io/File;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;-><init>(Ljava/net/URL;Ljava/io/File;Ljava/lang/Runnable;Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/io/File;Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "afterDownloadAction"    # Ljava/lang/Runnable;
    .param p4, "canUseStale"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->url:Ljava/net/URL;

    .line 19
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->file:Ljava/io/File;

    .line 20
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->afterDownloadAction:Ljava/lang/Runnable;

    .line 21
    iput-boolean p4, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->canUseStale:Z

    .line 22
    return-void
.end method

.method public static attachCache(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-wide/32 v2, 0xa00000

    .line 110
    .local v2, "httpCacheSize":J
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "http"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v1, "httpCacheDir":Ljava/io/File;
    :try_start_0
    const-string v5, "android.net.http.HttpResponseCache"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "install"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/io/File;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    const-wide/32 v10, 0xa00000

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v4

    .line 117
    .local v4, "httpResponseCacheNotAvailable":Ljava/lang/Exception;
    const-wide/32 v6, 0xa00000

    :try_start_1
    invoke-static {v1, v6, v7}, Lcom/integralblue/httpresponsecache/HttpResponseCache;->install(Ljava/io/File;J)Lcom/integralblue/httpresponsecache/HttpResponseCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static flushCache()V
    .locals 5

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 127
    .local v0, "cache":Ljava/net/ResponseCache;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "flush"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected fetch()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v6, 0x0

    .line 42
    .local v6, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 43
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 45
    .local v8, "response":I
    :try_start_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v11, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->url:Ljava/net/URL;

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 46
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "urlPath":Ljava/lang/String;
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 48
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v10, "User-Agent"

    const-string v11, "Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0 BlockLauncher"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const v7, 0x24ea00

    .line 51
    .local v7, "maxStale":I
    iget-boolean v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->canUseStale:Z

    if-eqz v10, :cond_0

    .line 52
    const-string v10, "Cache-Control"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "max-stale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 55
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 60
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 75
    :goto_0
    const/16 v10, 0x190

    if-ge v8, v10, :cond_1

    if-nez v6, :cond_6

    .line 77
    :cond_1
    :try_start_2
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->url:Ljava/net/URL;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " :("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    if-eqz v6, :cond_2

    .line 95
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 99
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 106
    :cond_3
    :goto_2
    return-void

    .line 61
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 93
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "maxStale":I
    .end local v9    # "urlPath":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v6, :cond_4

    .line 95
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 99
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 101
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 103
    :cond_5
    :goto_5
    throw v10

    .line 81
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "maxStale":I
    .restart local v9    # "urlPath":Ljava/lang/String;
    :cond_6
    :try_start_8
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 83
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->file:Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_9
    new-array v0, v10, [B

    .line 87
    .local v0, "buffer":[B
    :goto_6
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_7

    .line 88
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    .line 93
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 91
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    if-eqz v6, :cond_8

    .line 95
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 99
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 101
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_9
    :goto_8
    move-object v4, v5

    .line 106
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 96
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 102
    :catch_2
    move-exception v10

    goto :goto_2

    .line 96
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    goto :goto_7

    .line 102
    :catch_4
    move-exception v10

    goto :goto_8

    .line 96
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "count":I
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "maxStale":I
    .end local v9    # "urlPath":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    goto :goto_4

    .line 102
    :catch_6
    move-exception v11

    goto :goto_5
.end method

.method public run()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->fetch()V

    .line 29
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->afterDownloadAction:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 30
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestGraphicsReset()V

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->afterDownloadAction:Ljava/lang/Runnable;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
