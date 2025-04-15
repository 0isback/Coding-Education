.class Lcom/mojang/minecraftpe/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->openLoginWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1301
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->access$502(Lcom/mojang/minecraftpe/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1302
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1305
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1306
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1317
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->access$702(Lcom/mojang/minecraftpe/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1318
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1319
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1320
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1321
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1323
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1325
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getRealmsRedirectInfo()Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    move-result-object v2

    iget-object v2, v2, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->loginUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1326
    return-void
.end method
