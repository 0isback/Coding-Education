.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;
.super Landroid/app/ListActivity;
.source "ManageAddonsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;,
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    }
.end annotation


# static fields
.field private static final DIALOG_MANAGE_PATCH:I = 0x1

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_DISABLED:I = 0x2

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_ENABLED:I = 0x3

.field private static disabledString:Ljava/lang/String;

.field private static enabledString:Ljava/lang/String;


# instance fields
.field private addons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected master:Landroid/widget/CompoundButton;

.field private selectedAddonItem:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->enabledString:Ljava/lang/String;

    .line 40
    const-string v0, " (disabled)"

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->disabledString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->addons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;
    .param p1, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->openManageAddonWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V

    return-void
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->findAddons()V

    return-void
.end method

.method static synthetic access$400(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->selectedAddonItem:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->enabledString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->disabledString:Ljava/lang/String;

    return-object v0
.end method

.method private afterAddonToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V
    .locals 0
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->setAddonListModified()V

    .line 200
    return-void
.end method

.method private findAddons()V
    .locals 11

    .prologue
    .line 126
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 127
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 128
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "addonListItems":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;>;"
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->getAddonManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    move-result-object v6

    .line 130
    .local v6, "manager":Lnet/zhuoweizhang/mcpelauncher/AddonManager;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 131
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    .line 133
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "net.zhuoweizhang.mcpelauncher.api.nativelibname"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "nativeLibName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 136
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 137
    .local v3, "enabled":Z
    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    invoke-direct {v5, p0, v1, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;Landroid/content/pm/ApplicationInfo;Z)V

    .line 138
    .local v5, "itm":Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    .line 139
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "enabled":Z
    .end local v5    # "itm":Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .end local v7    # "nativeLibName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->receiveAddons(Ljava/util/List;)V

    .line 143
    return-void
.end method

.method private openManageAddonWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V
    .locals 1
    .param p1, "item"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    .line 162
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->selectedAddonItem:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .line 163
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->showDialog(I)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private receiveAddons(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "addons":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;>;"
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->addons:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v1, "allPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .line 150
    .local v2, "i":Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    iget-object v5, v2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 151
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v2    # "i":Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->getAddonManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->removeDeadEntries(Ljava/util/Collection;)V

    .line 155
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$layout;->patch_list_item:I

    invoke-direct {v0, p0, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 157
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;>;"
    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$1;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 158
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected createManageAddonDialog(I)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "enableStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "options":[Ljava/lang/CharSequence;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 225
    new-array v0, v4, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 235
    .restart local v0    # "options":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Addon name goes here"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;

    invoke-direct {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 228
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_enable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v4

    .restart local v0    # "options":[Ljava/lang/CharSequence;
    goto :goto_0

    .end local v0    # "options":[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_disable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public deleteAddon(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V
    .locals 4
    .param p1, "addon"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const/16 v2, 0x7b

    invoke-virtual {p0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 206
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->setAddonListModified()V

    .line 207
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 212
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->findAddons()V

    .line 214
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 55
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 56
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->createManageAddonDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->createManageAddonDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->createManageAddonDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$menu;->ab_master:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch_container:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    .line 70
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->refreshABToggle()V

    .line 89
    :goto_0
    const/4 v0, 0x1

    .line 91
    :goto_1
    return v0

    .line 87
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WTF?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 105
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->refreshABToggle()V

    .line 106
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "dialogId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 190
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 184
    check-cast v0, Landroid/app/AlertDialog;

    .line 185
    .local v0, "aDialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->selectedAddonItem:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 111
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->refreshABToggle()V

    .line 112
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 98
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->findAddons()V

    .line 99
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->refreshABToggle()V

    .line 100
    return-void
.end method

.method protected refreshABToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->master:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_load_native_addons"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method protected setAddonListModified()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->setResult(I)V

    .line 123
    return-void
.end method

.method public toggleAddon(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V
    .locals 5
    .param p1, "addon"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->getAddonManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    move-result-object v3

    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->setEnabled(Ljava/lang/String;Z)V

    .line 194
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    .line 195
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->afterAddonToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V

    .line 196
    return-void

    :cond_0
    move v0, v2

    .line 193
    goto :goto_0

    :cond_1
    move v1, v2

    .line 194
    goto :goto_1
.end method
