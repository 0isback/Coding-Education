.class public Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;
.super Lnet/zhuoweizhang/mcpelauncher/ui/LauncherActivity;
.source "LauncherAppActivity.java"


# static fields
.field private static final MESSAGE_AD_TIMEOUT:I = 0x261

.field private static final MESSAGE_SHOW_AD:I = 0x260


# instance fields
.field private adError:Z

.field private adHandler:Landroid/os/Handler;

.field private hasCalledShowAdvertisement:Z

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private needsShowAd:Z

.field private shadePopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/LauncherActivity;-><init>()V

    .line 16
    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 17
    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adError:Z

    .line 64
    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->hasCalledShowAdvertisement:Z

    .line 127
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;

    invoke-direct {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->hasCalledShowAdvertisement:Z

    return p1
.end method

.method static synthetic access$102(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adError:Z

    return p1
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    .prologue
    .line 13
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    return v0
.end method

.method static synthetic access$202(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    return p1
.end method

.method static synthetic access$300(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->actuallyShowAdvertisement()V

    return-void
.end method

.method static synthetic access$400(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adOver()V

    return-void
.end method

.method static synthetic access$500(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adTimedOut()V

    return-void
.end method

.method private actuallyShowAdvertisement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x261

    const/4 v2, 0x0

    .line 141
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetExitEnabled(Z)V

    .line 142
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->shadePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No longer ready to show ad."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    iput-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iput-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 150
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 151
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->loadInterstitialAdvertisement()V

    goto :goto_0

    .line 153
    :cond_1
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adError:Z

    if-eqz v0, :cond_2

    .line 155
    iput-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 156
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adOver()V

    goto :goto_0

    .line 159
    :cond_2
    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 160
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private adOver()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->needsShowAd:Z

    .line 166
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->shadePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetExitEnabled(Z)V

    .line 168
    return-void
.end method

.method private adTimedOut()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adOver()V

    .line 172
    return-void
.end method


# virtual methods
.method public leaveGameCallback()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/LauncherActivity;->leaveGameCallback()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->hasCalledShowAdvertisement:Z

    .line 71
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;

    invoke-direct {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    :goto_0
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->hasCalledShowAdvertisement:Z

    if-nez v0, :cond_0

    .line 79
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :goto_1
    return-void

    .line 84
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected loadInterstitialAdvertisement()V
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adError:Z

    .line 89
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 90
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v2, "ca-app-pub-2652482030334356/8558350222"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;

    invoke-direct {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 110
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/AdConfiguration;->buildRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 111
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->loadInterstitialAdvertisement()V

    .line 26
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->shadePopup:Landroid/widget/PopupWindow;

    .line 29
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->shadePopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 43
    :goto_0
    invoke-super {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/LauncherActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 45
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p0, p2}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->prepareRuntimeOptionsDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method protected prepareRuntimeOptionsDialog(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v6, 0x0

    const v5, -0x41104111

    .line 48
    const v4, 0x102002b

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 49
    .local v3, "view":Landroid/widget/FrameLayout;
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 50
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 51
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 54
    .local v1, "adView":Lcom/google/android/gms/ads/AdView;
    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    .end local v1    # "adView":Lcom/google/android/gms/ads/AdView;
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v1    # "adView":Lcom/google/android/gms/ads/AdView;
    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 57
    const-string v4, "ca-app-pub-2652482030334356/6560239824"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/AdView;->setId(I)V

    .line 59
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 61
    :cond_1
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/AdConfiguration;->buildRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 62
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 63
    return-void
.end method

.method public showAdvertisement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adError:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->loadInterstitialAdvertisement()V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->shadePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 121
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetExitEnabled(Z)V

    .line 122
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    const/16 v1, 0x261

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/LauncherAppActivity;->adHandler:Landroid/os/Handler;

    const/16 v1, 0x260

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
