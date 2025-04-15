.class Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginWebViewClient"
.end annotation


# instance fields
.field hasFiredLaunchEvent:Z

.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method private constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 1

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->hasFiredLaunchEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p2, "x1"    # Lcom/mojang/minecraftpe/MainActivity$1;

    .prologue
    .line 2422
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2458
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2461
    .local v1, "tempUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getRealmsRedirectInfo()Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    move-result-object v2

    iget-object v0, v2, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->accountUrl:Ljava/lang/String;

    .line 2462
    .local v0, "endHost":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2463
    const-string v0, "account.mojang.com"

    .line 2464
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2465
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/m/launch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->hasFiredLaunchEvent:Z

    if-nez v2, :cond_1

    .line 2466
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2, v1}, Lcom/mojang/minecraftpe/MainActivity;->loginLaunchCallback(Landroid/net/Uri;)V

    .line 2467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->hasFiredLaunchEvent:Z

    .line 2470
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isRedirectingRealms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 2454
    :goto_0
    return-void

    .line 2453
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2427
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2430
    .local v1, "tempUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v3}, Lcom/mojang/minecraftpe/MainActivity;->getRealmsRedirectInfo()Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    move-result-object v3

    iget-object v0, v3, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->accountUrl:Ljava/lang/String;

    .line 2431
    .local v0, "endHost":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2432
    const-string v0, "account.mojang.com"

    .line 2433
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2434
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/m/launch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2435
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v3, v1}, Lcom/mojang/minecraftpe/MainActivity;->loginLaunchCallback(Landroid/net/Uri;)V

    .line 2436
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;->hasFiredLaunchEvent:Z

    .line 2442
    :goto_0
    return v2

    .line 2438
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 2442
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
