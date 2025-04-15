.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;
.super Landroid/app/ListActivity;
.source "ManageSkinsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_DISABLE:Ljava/io/File;

.field public static final REQUEST_ENABLE:Ljava/io/File;


# instance fields
.field protected adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

.field protected master:Landroid/widget/CompoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/just/enable/skins"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_ENABLE:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    const-string v1, "/just/disable/skins"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_DISABLE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    .line 228
    return-void
.end method

.method public static setSkin(Ljava/io/File;Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .param p1, "activity"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 170
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, "p1":Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 172
    .local v1, "p2":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_DISABLE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "zz_skin_enable"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->refreshABToggle()V

    .line 185
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setResult(I)V

    .line 187
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_ENABLE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    const-string v2, "zz_skin_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 178
    :cond_2
    const-string v2, "zz_skin_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v2, "player_skin"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "sh":Landroid/content/SharedPreferences;
    const-string v1, "zz_skin_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public loadHistory()V
    .locals 9

    .prologue
    .line 134
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->clear()V

    .line 135
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    const/4 v7, 0x1

    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 137
    .local v6, "sh":Landroid/content/SharedPreferences;
    const-string v7, "skins_history"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
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
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 139
    .local v5, "s":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v7, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->notifyDataSetChanged()V

    .line 146
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "sh":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    const/4 v2, 0x7

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
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v2, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->add(Ljava/lang/Object;)V

    .line 114
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->notifyDataSetChanged()V

    .line 115
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setSkin(Ljava/io/File;)V

    .line 116
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->finish()V

    .line 118
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->manage_skins:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setContentView(I)V

    .line 44
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-direct {v0, p0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    .line 45
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_skins_select:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_skins_players:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->loadHistory()V

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$menu;->ab_master:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 198
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch_container:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    .line 200
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->refreshABToggle()V

    .line 216
    :goto_0
    const/4 v0, 0x1

    .line 218
    :goto_1
    return v0

    .line 214
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WTF?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 129
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->saveHistory()V

    .line 130
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->refreshABToggle()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 123
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->refreshABToggle()V

    .line 124
    return-void
.end method

.method protected refreshABToggle()V
    .locals 2

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->master:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public saveHistory()V
    .locals 6

    .prologue
    .line 149
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    const-string v2, ""

    .line 151
    .local v2, "out":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_0
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 153
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v5, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 154
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    const-string v5, ";"

    invoke-static {v3, v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    const/4 v5, 0x1

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 159
    .local v4, "sh":Landroid/content/SharedPreferences$Editor;
    const-string v5, "skins_history"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    .end local v1    # "l":I
    .end local v2    # "out":Ljava/lang/String;
    .end local v3    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sh":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method protected setSkin(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 190
    invoke-static {p1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setSkin(Ljava/io/File;Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V

    .line 191
    return-void
.end method
