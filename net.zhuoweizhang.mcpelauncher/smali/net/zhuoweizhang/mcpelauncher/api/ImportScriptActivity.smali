.class public Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;
.super Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;
.source "ImportScriptActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->installConfirmText:Landroid/widget/TextView;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    return-void
.end method

.method protected startImport()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "modscripts"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .local v1, "to":Ljava/io/File;
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->mFile:Ljava/io/File;

    invoke-static {v2, v1}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 26
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadEnabledScriptsNames(Landroid/content/Context;)V

    .line 28
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->mFile:Ljava/io/File;

    invoke-static {v2, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setOriginalLocation(Ljava/io/File;Ljava/io/File;)V

    .line 29
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V

    .line 30
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_imported:I

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 32
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "to":Ljava/io/File;
    :goto_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->finish()V

    .line 40
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 37
    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/api/ImportScriptActivity;->setResult(I)V

    goto :goto_0
.end method
