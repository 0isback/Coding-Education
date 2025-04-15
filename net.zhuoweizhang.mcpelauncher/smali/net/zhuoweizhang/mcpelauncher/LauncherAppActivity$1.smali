.class Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;
.super Ljava/lang/Object;
.source "LauncherAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->leaveGameCallback()V
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
    .line 71
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->showAdvertisement()V

    .line 74
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$002(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z

    .line 75
    return-void
.end method
