.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;
.super Landroid/app/ListActivity;
.source "ManageTexturepacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;,
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_DEMO:Ljava/io/File;

.field public static final REQUEST_DISABLE:Ljava/io/File;

.field public static final REQUEST_ENABLE:Ljava/io/File;


# instance fields
.field protected adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

.field ls:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected master:Landroid/widget/CompoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/demo/textures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DEMO:Ljava/io/File;

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, "/just/enable/textures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_ENABLE:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/io/File;

    const-string v1, "/just/disable/textures"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DISABLE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    .line 188
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;

    invoke-direct {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->ls:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 269
    return-void
.end method

.method public static setTexturepack(Ljava/io/File;Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .param p1, "activity"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 151
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "p1":Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 153
    .local v1, "p2":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DISABLE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const-string v2, "zz_texture_pack_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v2, "zz_texture_pack_demo"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->refreshABToggle()V

    .line 180
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setResult(I)V

    .line 182
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_ENABLE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const-string v2, "zz_texture_pack_enable"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "texturePack"

    const-string v4, "no_pack"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no_pack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "zz_texture_pack_demo"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DEMO:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    const-string v2, "zz_texture_pack_enable"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v2, "zz_texture_pack_demo"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "texturePack"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 170
    :cond_4
    const-string v2, "zz_texture_pack_enable"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v2, "texturePack"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v2, "zz_texture_pack_demo"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method protected canAccessMCPE()Z
    .locals 5

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.mojang.minecraftpe"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 239
    .local v1, "mcAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 240
    .end local v1    # "mcAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sh":Landroid/content/SharedPreferences;
    const-string v1, "zz_texture_pack_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public loadHistory()V
    .locals 9

    .prologue
    .line 113
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->clear()V

    .line 114
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->canAccessMCPE()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    sget-object v8, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DEMO:Ljava/io/File;

    invoke-virtual {v7, v8}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->add(Ljava/lang/Object;)V

    .line 117
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 118
    .local v6, "sh":Landroid/content/SharedPreferences;
    const-string v7, "textures_history"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "data":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 120
    .local v5, "s":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v7, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 125
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->notifyDataSetChanged()V

    .line 127
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "sh":Landroid/content/SharedPreferences;
    :cond_4
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 90
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 92
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v2, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->add(Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->notifyDataSetChanged()V

    .line 94
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;)V

    .line 95
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->finish()V

    .line 97
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->manage_textures:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-direct {v0, p0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    .line 54
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_textures_select:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_textures_extract:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$3;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->loadHistory()V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$menu;->ab_master:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch_container:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    .line 207
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->ls:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->refreshABToggle()V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_clear_script_texture_overrides:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WTF?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_clear_script_texture_overrides:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 108
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->saveHistory()V

    .line 109
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->refreshABToggle()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 102
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->refreshABToggle()V

    .line 103
    return-void
.end method

.method protected refreshABToggle()V
    .locals 2

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->master:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->ls:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    :cond_0
    return-void
.end method

.method public saveHistory()V
    .locals 6

    .prologue
    .line 130
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const-string v2, ""

    .line 132
    .local v2, "out":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_0
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 134
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v5, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 135
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    const-string v5, ";"

    invoke-static {v3, v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const/4 v5, 0x0

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 140
    .local v4, "sh":Landroid/content/SharedPreferences$Editor;
    const-string v5, "textures_history"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .end local v1    # "l":I
    .end local v2    # "out":Ljava/lang/String;
    .end local v3    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sh":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method protected setTexturepack(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 185
    invoke-static {p1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    .line 186
    return-void
.end method
