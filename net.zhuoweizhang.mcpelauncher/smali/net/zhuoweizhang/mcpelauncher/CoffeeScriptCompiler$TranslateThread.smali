.class Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;
.super Ljava/lang/Object;
.source "CoffeeScriptCompiler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateThread"
.end annotation


# instance fields
.field public error:Ljava/lang/Throwable;

.field public input:Ljava/lang/String;

.field public literate:Z

.field public output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "literate"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->input:Ljava/lang/String;

    .line 79
    iput-boolean p2, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->literate:Z

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->input:Ljava/lang/String;

    iget-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->literate:Z

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->access$000(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->output:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler$TranslateThread;->error:Ljava/lang/Throwable;

    goto :goto_0
.end method
