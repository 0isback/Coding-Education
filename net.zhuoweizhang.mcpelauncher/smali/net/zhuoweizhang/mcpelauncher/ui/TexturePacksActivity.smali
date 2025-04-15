.class public Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;
.super Landroid/app/ListActivity;
.source "TexturePacksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$1;,
        Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;,
        Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_ADD_TEXTURE:I = 0x20a


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
            ">;"
        }
    .end annotation
.end field

.field private addButton:Landroid/widget/Button;

.field private extractButton:Landroid/widget/Button;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;ILjava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->addTexturePack(ILjava/io/File;)V

    return-void
.end method

.method private addTexturePack(ILjava/io/File;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 80
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    const-string v2, "zip"

    invoke-direct {v0, v2, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    invoke-direct {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->addTexturePack(ILnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V

    .line 83
    return-void
.end method

.method private addTexturePack(ILnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "desc"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .prologue
    .line 86
    const/4 v3, 0x0

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "zz_texture_pack_enable"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 88
    .local v0, "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    iget-object v3, v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    iget-object v4, p2, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    .end local v0    # "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v3, p2, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->img:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 92
    :try_start_0
    invoke-static {p2}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadIconForDescription(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    :goto_1
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-interface {v3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->updateContents()V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private fb(I)Landroid/widget/Button;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-object v0
.end method

.method private saveState()V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-static {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->saveDescriptions(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateContents()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 103
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->saveState()V

    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->setResult(I)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    const/16 v2, 0x20a

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 111
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->addTexturePack(ILjava/io/File;)V

    .line 115
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->extractButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 59
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->addButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 61
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "target":Landroid/content/Intent;
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "net.zhuoweizhang.afilechooser.extra.MIME_TYPES"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "application/zip"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "application/x-appx"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "application/vnd.android.package-archive"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-class v1, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const/16 v1, 0x20a

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    :try_start_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadDescriptionsWithIcons(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/bl_clearTextures"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    .line 43
    :cond_0
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$layout;->manage_textures:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->setContentView(I)V

    .line 44
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;

    invoke-direct {v1, p0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 45
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_textures_extract:I

    invoke-direct {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->fb(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->extractButton:Landroid/widget/Button;

    .line 48
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_textures_select:I

    invoke-direct {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->fb(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->addButton:Landroid/widget/Button;

    .line 49
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 139
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_clear_script_texture_overrides:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_clear_script_texture_overrides:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 147
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_clear_script_texture_overrides:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTextureDownClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, "index":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 127
    .local v0, "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->updateContents()V

    .line 129
    return-void
.end method

.method public onTextureRemoveClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    .local v1, "index":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 134
    .local v0, "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->updateContents()V

    .line 135
    return-void
.end method

.method public onTextureUpClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, "index":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 120
    .local v0, "desc":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->list:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->updateContents()V

    .line 122
    return-void
.end method
