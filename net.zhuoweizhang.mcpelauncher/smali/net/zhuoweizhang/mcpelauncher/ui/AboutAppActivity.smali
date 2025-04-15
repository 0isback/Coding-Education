.class public final Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;
.super Landroid/app/Activity;
.source "AboutAppActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FORUMS_PAGE_URL:Ljava/lang/String; = "http://www.minecraftforum.net/topic/1675581-blocklauncher-an-android-app-that-patches-minecraft-pe-without-reinstall/"

.field public static final LICENSES_URL:Ljava/lang/String; = "https://gist.github.com/zhuowei/da4c2fec46d4d23050bf"

.field public static final SLEEP_INTERVAL:I = 0x78


# instance fields
.field public appNameText:Landroid/widget/TextView;

.field public appVersionText:Landroid/widget/TextView;

.field public frame:I

.field public gotoForumsButton:Landroid/widget/Button;

.field public ossLicensesButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->gotoForumsButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->openForumsPage()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->ossLicensesButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://gist.github.com/zhuowei/da4c2fec46d4d23050bf"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$layout;->about:I

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->setContentView(I)V

    .line 37
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$id;->about_appnametext:I

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->appNameText:Landroid/widget/TextView;

    .line 38
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->appNameText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$id;->about_go_to_forums_button:I

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->gotoForumsButton:Landroid/widget/Button;

    .line 40
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->gotoForumsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$id;->about_oss_license_info_button:I

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->ossLicensesButton:Landroid/widget/Button;

    .line 42
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->ossLicensesButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$id;->about_appversiontext:I

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->appVersionText:Landroid/widget/TextView;

    .line 44
    const-string v0, "Top secret alpha pre-prerelease"

    .line 46
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->appVersionText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->appNameText:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://www.youtube.com/watch?v=6K7VaIdttkw"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    const/4 v1, 0x1

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected openForumsPage()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://www.minecraftforum.net/topic/1675581-blocklauncher-an-android-app-that-patches-minecraft-pe-without-reinstall/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
