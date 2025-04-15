.class public Lnet/zhuoweizhang/mcpelauncher/api/ImportTexturepackActivity;
.super Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;
.source "ImportTexturepackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/ImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportTexturepackActivity;->installConfirmText:Landroid/widget/TextView;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->texturepack_import_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    return-void
.end method

.method protected startImport()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 21
    :try_start_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadDescriptionsWithIcons(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 22
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    const-string v6, "zip"

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportTexturepackActivity;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v2, "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    const/4 v0, 0x0

    .line 24
    .local v0, "already":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 25
    .local v1, "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    iget-object v6, v1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    iget-object v7, v2, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 30
    .end local v1    # "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    :cond_1
    if-nez v0, :cond_2

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    :cond_2
    invoke-static {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->saveDescriptions(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "already":Z
    .end local v2    # "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    :goto_0
    invoke-static {v8}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "zz_texture_pack_enable"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$string;->texturepack_imported:I

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 37
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/api/ImportTexturepackActivity;->finish()V

    .line 38
    return-void

    .line 32
    :catch_0
    move-exception v3

    .line 33
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
