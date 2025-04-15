.class public abstract Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;
.super Landroid/app/Activity;
.source "ImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public cancelButton:Landroid/widget/Button;

.field public installConfirmText:Landroid/widget/TextView;

.field public mFile:Ljava/io/File;

.field public okButton:Landroid/widget/Button;

.field public patchNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->startImport()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$layout;->import_confirm:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->setContentView(I)V

    .line 27
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ok_button:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->okButton:Landroid/widget/Button;

    .line 28
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->cancel_button:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->cancelButton:Landroid/widget/Button;

    .line 29
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->app_name:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->patchNameText:Landroid/widget/TextView;

    .line 32
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->install_confirm_question:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->installConfirmText:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->finish()V

    .line 50
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->mFile:Ljava/io/File;

    .line 42
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->mFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    :cond_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->patchNameText:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected abstract startImport()V
.end method
