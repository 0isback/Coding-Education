.class public Lnet/zhuoweizhang/mcpelauncher/api/ImportSkinActivity;
.super Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;
.source "ImportSkinActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportSkinActivity;->installConfirmText:Landroid/widget/TextView;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->skin_import_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    return-void
.end method

.method protected startImport()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "player_skin"

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportSkinActivity;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zz_skin_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->skin_imported:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 20
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportSkinActivity;->finish()V

    .line 21
    return-void
.end method
