.class public Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;
.super Ljava/lang/Object;
.source "ScriptTranslationCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;
    }
.end annotation


# static fields
.field public static final CLASS_PACKAGE:Ljava/lang/String; = "modpe."

.field public static final SCRIPT_DEX_DIR:Ljava/lang/String; = "dex"

.field public static final SCRIPT_ODEX_DIR:Ljava/lang/String; = "odex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->dexScriptImpl(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static dexScript(Landroid/content/Context;Ljava/io/File;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 77
    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;

    invoke-direct {v2, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 78
    .local v2, "parseRunner":Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "BlockLauncher parse thread"

    const-wide/32 v4, 0x40000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 80
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->error:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 89
    iget-object v6, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->error:Ljava/lang/Exception;

    check-cast v6, Ljava/lang/RuntimeException;

    .line 93
    .local v6, "back":Ljava/lang/RuntimeException;
    :goto_1
    throw v6

    .line 91
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->error:Ljava/lang/Exception;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "back":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 83
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method private static dexScriptImpl(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/io/File;)Lorg/mozilla/javascript/Script;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->getDexFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 18
    .local v2, "dexFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 19
    :cond_0
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->dexScript(Landroid/content/Context;Ljava/io/File;)V

    .line 22
    :cond_1
    const-string v7, "odex"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 23
    .local v4, "odexDir":Ljava/io/File;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-class v10, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v0, v7, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 26
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modpe."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->getClassName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 27
    .local v6, "scriptClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/mozilla/javascript/Script;>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/Script;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    .local v5, "script":Lorg/mozilla/javascript/Script;
    return-object v5

    .line 29
    .end local v5    # "script":Lorg/mozilla/javascript/Script;
    .end local v6    # "scriptClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/mozilla/javascript/Script;>;"
    :catch_0
    move-exception v1

    .line 30
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 31
    .end local v1    # "cnf":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 32
    .local v3, "in":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 33
    .end local v3    # "in":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 35
    .local v3, "in":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static getClassName(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "nojs":Ljava/lang/String;
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "mainClassName":Ljava/lang/String;
    return-object v0
.end method

.method private static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5f

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [C

    .line 55
    .local v4, "s":[C
    const/4 v2, 0x0

    .line 57
    .local v2, "j":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aput-char v6, v4, v2

    move v2, v3

    .line 60
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    aput-char v0, v4, v2

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_1
    aput-char v6, v4, v2

    goto :goto_1

    .line 68
    .end local v0    # "c":C
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getDexFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 72
    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "dexFileDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
