.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;
.super Landroid/app/ListActivity;
.source "ManagePatchesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;


# static fields
.field private static final DIALOG_MANAGE_PATCH:I = 0x1

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_DISABLED:I = 0x2

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_ENABLED:I = 0x3

.field private static final DIALOG_PATCH_INFO:I = 0x4

.field private static final REQUEST_IMPORT_PATCH:I = 0xd4


# instance fields
.field private importButton:Landroid/widget/Button;

.field private libBytes:[B

.field protected master:Landroid/widget/CompoundButton;

.field private patches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;"
        }
    .end annotation
.end field

.field private prePatchConfigure:Z

.field private refreshThread:Ljava/lang/Thread;

.field private selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 56
    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->prePatchConfigure:Z

    .line 60
    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    return-void
.end method

.method static synthetic access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->patches:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->patches:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;
    .param p1, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->openManagePatchWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    return-void
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    return-object v0
.end method

.method static synthetic access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->findPatches()V

    return-void
.end method

.method private afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 5
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->isValidPatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v1

    iget-object v2, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 208
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_invalid_patches:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-boolean v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->prePatchConfigure:Z

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setPatchListModified()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->canLivePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->livePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 220
    const/4 v1, 0x1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "force_prepatch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setPatchListModified()V

    goto :goto_0
.end method

.method private createPatchInfoDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Whoops! info fail"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Whoops - try again, this is a tiny fail"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private findPatches()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;

    invoke-direct {v1, p0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;-><init>(Landroid/app/Activity;Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->refreshThread:Ljava/lang/Thread;

    .line 150
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->refreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method private getPatchInfo(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Ljava/lang/String;
    .locals 5
    .param p1, "patchItem"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_path:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v3, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    new-instance v2, Lcom/joshuahuelsman/patchtool/PTPatch;

    invoke-direct {v2}, Lcom/joshuahuelsman/patchtool/PTPatch;-><init>()V

    .line 291
    .local v2, "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    iget-object v3, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/joshuahuelsman/patchtool/PTPatch;->loadPatch(Ljava/io/File;)V

    .line 292
    invoke-virtual {v2}, Lcom/joshuahuelsman/patchtool/PTPatch;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "desc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 294
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_metadata:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 298
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_no_metadata:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private isValidPatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z
    .locals 4
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 353
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openManagePatchWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 2
    .param p1, "item"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 154
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 155
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->prePatchConfigure:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->canLivePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    :cond_0
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->showDialog(I)V

    .line 162
    :goto_1
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "This patch cannot be disabled in game."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public canLivePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z
    .locals 2
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->canLivePatch(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createManagePatchDialog(I)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "enableStatus"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_info:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 311
    .local v1, "patchInfoStr":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 312
    .local v0, "options":[Ljava/lang/CharSequence;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 313
    new-array v0, v6, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    .line 324
    .restart local v0    # "options":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Patch name goes here"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;

    invoke-direct {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 316
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v1, v0, v5

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_enable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v6

    .restart local v0    # "options":[Ljava/lang/CharSequence;
    goto :goto_0

    .end local v0    # "options":[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_disable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public deletePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 3
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 265
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->prePatchConfigure:Z

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->livePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 267
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_prepatch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setPatchListModified()V

    .line 270
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 271
    return-void
.end method

.method public getFolders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v1, "ptpatches"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/data/com.snowbound.pockettool.free/Patches"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/data/com.joshuahuelsman.pockettool/Patches"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-object v0
.end method

.method public importPatch()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "target":Landroid/content/Intent;
    const-string v1, "application/x-ptpatch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-class v1, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    const-string v1, "net.zhuoweizhang.afilechooser.extra.SORT_METHOD"

    const-string v2, "net.zhuoweizhang.afilechooser.extra.SORT_LAST_MODIFIED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/16 v1, 0xd4

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method

.method public isEnabled(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 431
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v0

    .line 432
    .local v0, "patchMgr":Lnet/zhuoweizhang/mcpelauncher/PatchManager;
    invoke-virtual {v0, p1}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->isEnabled(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public livePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 9
    .param p1, "patchItem"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.mojang.minecraftpe"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 233
    .local v2, "mcAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v6, "patched"

    invoke-virtual {p0, v6, v8}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 234
    .local v5, "patched":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/libminecraftpe.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "originalLibminecraft":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "libminecraftpe.so"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    new-instance v4, Lcom/joshuahuelsman/patchtool/PTPatch;

    invoke-direct {v4}, Lcom/joshuahuelsman/patchtool/PTPatch;-><init>()V

    .line 237
    .local v4, "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    iget-object v6, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v4, v6}, Lcom/joshuahuelsman/patchtool/PTPatch;->loadPatch(Ljava/io/File;)V

    .line 238
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 239
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 241
    sget-object v6, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v6, v4}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->patch(Ljava/nio/ByteBuffer;Lcom/joshuahuelsman/patchtool/PTPatch;)V

    .line 253
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    if-nez v6, :cond_1

    .line 244
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    iput-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    .line 246
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 247
    .local v1, "is":Ljava/io/InputStream;
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    .line 248
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 251
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    sget-object v6, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    invoke-static {v6, v7, v4}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->unpatch(Ljava/nio/ByteBuffer;[BLcom/joshuahuelsman/patchtool/PTPatch;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 123
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "ptpatches"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v2, "to":Ljava/io/File;
    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 128
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 129
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyPatches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_too_many:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setPatchListModified()V

    .line 137
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->findPatches()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v2    # "to":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "to":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 134
    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->importButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->importPatch()V

    .line 98
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 66
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setResult(I)V

    .line 68
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$layout;->manage_patches:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 70
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 71
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_patches_import_button:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->importButton:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->importButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "prePatchConfigure"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->prePatchConfigure:Z

    .line 79
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->get(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v1

    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 80
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->createPatchInfoDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$menu;->ab_master:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch_container:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    .line 366
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->refreshABToggle()V

    .line 385
    :goto_0
    const/4 v0, 0x1

    .line 387
    :goto_1
    return v0

    .line 383
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WTF?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->libBytes:[B

    .line 92
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .param p1, "dialogId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 180
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 193
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    move-object v0, p2

    .line 184
    check-cast v0, Landroid/app/AlertDialog;

    .line 185
    .local v0, "aDialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->toString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    .end local v0    # "aDialog":Landroid/app/AlertDialog;
    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-virtual {p0, p2, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->preparePatchInfo(Landroid/app/AlertDialog;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRefreshComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 85
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->findPatches()V

    .line 86
    return-void
.end method

.method public preparePatchInfo(Landroid/app/AlertDialog;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 274
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->toString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    :try_start_0
    invoke-direct {p0, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getPatchInfo(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    .local v1, "patchInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 278
    .end local v1    # "patchInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot show info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "patchInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method protected refreshABToggle()V
    .locals 4

    .prologue
    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->master:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_manage_patches"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 395
    :cond_0
    return-void
.end method

.method protected setPatchListModified()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setResult(I)V

    .line 115
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_prepatch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method

.method public togglePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 5
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyPatches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_too_many:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v3

    iget-object v4, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/io/File;Z)V

    .line 201
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 202
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_1

    :cond_2
    move v1, v2

    .line 201
    goto :goto_2
.end method
