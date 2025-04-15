.class Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;
.super Ljava/lang/Object;
.source "ScriptTranslationCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public error:Ljava/lang/Exception;

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->file:Ljava/io/File;

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->context:Landroid/content/Context;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->file:Ljava/io/File;

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->access$000(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache$TranslateThread;->error:Ljava/lang/Exception;

    goto :goto_0
.end method
