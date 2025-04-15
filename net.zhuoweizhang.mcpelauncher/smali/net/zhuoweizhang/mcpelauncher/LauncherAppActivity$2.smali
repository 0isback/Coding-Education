.class Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "LauncherAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->loadInterstitialAdvertisement()V
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
    .line 91
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$400(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    .line 108
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$102(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z

    .line 101
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$202(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z

    .line 103
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$400(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Ad loaded!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$102(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z

    .line 95
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    .line 98
    :cond_0
    return-void
.end method
