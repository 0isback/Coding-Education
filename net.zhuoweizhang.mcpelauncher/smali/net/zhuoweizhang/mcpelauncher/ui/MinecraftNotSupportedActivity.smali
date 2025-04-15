.class public Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;
.super Landroid/app/Activity;
.source "MinecraftNotSupportedActivity.java"


# instance fields
.field public theText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$layout;->no_minecraft:I

    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->setContentView(I)V

    .line 16
    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$id;->no_minecraft_text:I

    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->theText:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "minecraftVersion"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "minecraftVersion":Ljava/lang/String;
    const-string v5, "supportedVersion"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "supportedVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$string;->minecraft_version_not_supported:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "textToDisplay":Ljava/lang/String;
    const-string v5, "MINECRAFT_VERSION"

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUPPORTED_VERSION"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "textWithReplacements":Ljava/lang/String;
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;->theText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method
