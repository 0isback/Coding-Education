.class public Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;
.super Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;
.source "MainMenuOptionsAppActivity.java"


# instance fields
.field private adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;-><init>()V

    return-void
.end method

.method private addAds()V
    .locals 8

    .prologue
    .line 28
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 29
    .local v2, "listView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 30
    .local v3, "parentOfListView":Landroid/view/ViewParent;
    if-nez v3, :cond_0

    .line 31
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Main menu options: no parent (is this device Batman?)"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 35
    .local v4, "parentOfParent":Landroid/view/ViewParent;
    if-nez v4, :cond_1

    .line 36
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Main menu options: no parent of parent"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 41
    .local v5, "parentOfParentOfParent":Landroid/view/ViewParent;
    if-eqz v5, :cond_2

    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    .line 42
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Main menu options: no parent of parent of parent"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v5

    .line 46
    check-cast v1, Landroid/widget/LinearLayout;

    .line 48
    .local v1, "content":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v6, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    .line 49
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    const-string v7, "ca-app-pub-2652482030334356/6560239824"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 50
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v7, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 51
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/AdConfiguration;->buildRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 52
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 53
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    :try_start_0
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->addAds()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 71
    :cond_0
    invoke-super {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 59
    :cond_0
    invoke-super {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/MainMenuOptionsAppActivity;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 66
    :cond_0
    return-void
.end method
