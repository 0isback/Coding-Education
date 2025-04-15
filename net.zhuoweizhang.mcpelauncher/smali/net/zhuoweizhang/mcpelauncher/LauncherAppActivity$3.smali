.class Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;
.super Landroid/os/Handler;
.source "LauncherAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x260

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x261

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$500(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    goto :goto_0
.end method
