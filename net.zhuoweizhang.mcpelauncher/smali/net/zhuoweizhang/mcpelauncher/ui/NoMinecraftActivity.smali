.class public Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;
.super Landroid/app/Activity;
.source "NoMinecraftActivity.java"


# instance fields
.field private learnmoreUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->learnmoreUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public learnMoreClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->learnmoreUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v1, "learnmoreIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$layout;->no_minecraft:I

    invoke-virtual {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 21
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$id;->no_minecraft_text:I

    invoke-virtual {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    const-string v4, "learnmore_uri"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->learnmoreUri:Ljava/lang/String;

    .line 25
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->learnmoreUri:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 26
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$id;->no_minecraft_learn_more:I

    invoke-virtual {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 27
    .local v3, "theButton":Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    .end local v3    # "theButton":Landroid/widget/Button;
    :cond_1
    return-void
.end method
