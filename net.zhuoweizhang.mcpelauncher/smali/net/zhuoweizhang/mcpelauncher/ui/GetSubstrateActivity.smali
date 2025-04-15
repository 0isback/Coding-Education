.class public Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;
.super Landroid/app/Activity;
.source "GetSubstrateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isPlay()Z
    .locals 3

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    :goto_0
    return v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->isPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "market://details?id=com.saurik.substrate"

    .line 21
    .local v1, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .local v0, "downloadIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->finish()V

    .line 25
    return-void

    .line 20
    .end local v0    # "downloadIntent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "http://www.cydiasubstrate.com/"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->get_substrate:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;->setContentView(I)V

    .line 17
    return-void
.end method
