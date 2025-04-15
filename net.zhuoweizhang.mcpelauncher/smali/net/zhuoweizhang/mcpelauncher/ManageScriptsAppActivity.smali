.class public Lnet/zhuoweizhang/mcpelauncher/ManageScriptsAppActivity;
.super Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.source "ManageScriptsAppActivity.java"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ManageScriptsAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ManageScriptsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    .line 15
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/AdConfiguration;->buildRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 16
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ManageScriptsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 17
    return-void
.end method
