.class public Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;
.super Ljava/lang/Object;
.source "CoffeeScriptCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->compileForReal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "literate"    # Z

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 50
    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;

    invoke-direct {v2, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;-><init>(Ljava/lang/String;Z)V

    .line 51
    .local v2, "parseRunner":Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "BlockLauncher parse thread"

    const-wide/32 v4, 0x40000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 53
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 60
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->error:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 63
    iget-object v6, v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->error:Ljava/lang/Throwable;

    check-cast v6, Ljava/lang/RuntimeException;

    .line 67
    .local v6, "back":Ljava/lang/RuntimeException;
    :goto_1
    throw v6

    .line 65
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->error:Ljava/lang/Throwable;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "back":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 69
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->output:Ljava/lang/String;

    return-object v1

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static compileFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "input"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    .line 37
    .local v3, "length":I
    new-array v0, v3, [B

    .line 38
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 40
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 41
    .local v6, "utf8":Ljava/nio/charset/Charset;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 42
    .local v1, "inputString":Ljava/lang/String;
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->isLiterateCoffeeScript(Ljava/io/File;)Z

    move-result v7

    invoke-static {v1, v7}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->compile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "outputString":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 44
    .local v4, "os":Ljava/io/OutputStream;
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 45
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 46
    return-void
.end method

.method private static compileForReal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "literate"    # Z

    .prologue
    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CoffeeScript compiler has been removed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCoffeeScript(Ljava/io/File;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/File;

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".coffee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->isLiterateCoffeeScript(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiterateCoffeeScript(Ljava/io/File;)Z
    .locals 2
    .param p0, "input"    # Ljava/io/File;

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".litcoffee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static outputName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
