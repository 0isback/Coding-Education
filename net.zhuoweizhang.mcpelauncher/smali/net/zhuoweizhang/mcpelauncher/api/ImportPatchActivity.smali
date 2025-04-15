.class public Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;
.super Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;
.source "ImportPatchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hasTooManyPatches()Z
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$integer;->max_num_patches:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 63
    .local v1, "maxPatchCount":I
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getEnabledPatches()Ljava/util/Set;

    move-result-object v0

    .line 64
    .local v0, "enabledPatches":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-ltz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->installConfirmText:Landroid/widget/TextView;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    return-void
.end method

.method protected startImport()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    new-instance v2, Ljava/io/File;

    const-string v3, "ptpatches"

    invoke-virtual {p0, v3, v6}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v2, "to":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->mFile:Ljava/io/File;

    invoke-static {v3, v2}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->setResult(I)V

    .line 37
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->hasTooManyPatches()Z

    move-result v1

    .line 38
    .local v1, "hasTooManyPatches":Z
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 39
    if-eqz v1, :cond_0

    .line 40
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_too_many:I

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 41
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->finish()V

    .line 59
    .end local v1    # "hasTooManyPatches":Z
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "hasTooManyPatches":Z
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 45
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "force_prepatch"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    sget-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->libLoaded:Z

    if-eqz v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity$1;

    invoke-direct {v4, p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 57
    :cond_1
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_done:I

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->finish()V

    goto :goto_0
.end method
