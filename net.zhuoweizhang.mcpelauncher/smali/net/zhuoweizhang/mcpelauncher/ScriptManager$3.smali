.class final Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->injectKeyEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:I

.field final synthetic val$pressed:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1439
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;->val$pressed:I

    iput p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1441
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$400()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;->val$pressed:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;->val$key:I

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1442
    return-void

    .line 1441
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
