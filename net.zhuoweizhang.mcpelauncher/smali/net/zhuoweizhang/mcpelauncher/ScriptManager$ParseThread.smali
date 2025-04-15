.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseThread"
.end annotation


# instance fields
.field public error:Ljava/lang/Exception;

.field private in:Ljava/io/Reader;

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    .line 178
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->in:Ljava/io/Reader;

    .line 179
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->sourceName:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 185
    .local v0, "ctx":Lorg/mozilla/javascript/Context;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 186
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->in:Ljava/io/Reader;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->sourceName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v2

    .line 187
    .local v2, "script":Lorg/mozilla/javascript/Script;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->sourceName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->initJustLoadedScript(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "ctx":Lorg/mozilla/javascript/Context;
    .end local v2    # "script":Lorg/mozilla/javascript/Script;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    goto :goto_0
.end method
