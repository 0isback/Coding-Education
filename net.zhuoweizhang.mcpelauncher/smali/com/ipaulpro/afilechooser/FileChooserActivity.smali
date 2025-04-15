.class public Lcom/ipaulpro/afilechooser/FileChooserActivity;
.super Landroid/app/ListActivity;
.source "FileChooserActivity.java"


# static fields
.field private static final BREADCRUMB:Ljava/lang/String; = "breadcrumb"

.field private static final DEBUG:Z = true

.field private static final HIDDEN_PREFIX:Ljava/lang/String; = "."

.field public static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final POSTIION:Ljava/lang/String; = "position"

.field public static final REQUEST_CODE:I = 0x18f0

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"


# instance fields
.field private extendedMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBreadcrumb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mDirFilter:Ljava/io/FileFilter;

.field private mExternalDir:Ljava/io/File;

.field private mExternalStorageAvailable:Z

.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mExternalStorageWriteable:Z

.field private mFileFilter:Ljava/io/FileFilter;

.field private mLastModifiedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    .line 63
    iput-boolean v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageAvailable:Z

    .line 64
    iput-boolean v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageWriteable:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->extendedMimeTypes:Ljava/util/Set;

    .line 73
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFileFilter:Ljava/io/FileFilter;

    .line 86
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$2;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mDirFilter:Ljava/io/FileFilter;

    .line 98
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$3;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mComparator:Ljava/util/Comparator;

    .line 106
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$4;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mLastModifiedComparator:Ljava/util/Comparator;

    .line 118
    new-instance v0, Lcom/ipaulpro/afilechooser/FileChooserActivity$5;

    invoke-direct {v0, p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity$5;-><init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ipaulpro/afilechooser/FileChooserActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/ipaulpro/afilechooser/FileChooserActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->extendedMimeTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/ipaulpro/afilechooser/FileChooserActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->updateExternalStorageState()V

    return-void
.end method

.method private fillList(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 176
    const-string v8, "ChooserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {v8}, Lcom/ipaulpro/afilechooser/FileListAdapter;->clear()V

    .line 184
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v7, "pathDir":Ljava/io/File;
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 188
    .local v2, "dirs":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 190
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 192
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .local v1, "dir":Ljava/io/File;
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 197
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 199
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 201
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .local v3, "file":Ljava/io/File;
    iget-object v8, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 204
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 205
    const-string v8, "ChooserActivity"

    const-string v9, "Directory is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/ipaulpro/afilechooser/FileListAdapter;

    iget-object v9, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/ipaulpro/afilechooser/FileListAdapter;->setListItems(Ljava/util/ArrayList;)V

    .line 211
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {v8}, Lcom/ipaulpro/afilechooser/FileListAdapter;->notifyDataSetChanged()V

    .line 213
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 214
    return-void
.end method

.method private handleExternalStorageState(ZZ)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "writeable"    # Z

    .prologue
    .line 287
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->isIntentGetContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "ChooserActivity"

    const-string v1, "External Storage was disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileDisconnect()V

    .line 290
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finish()V

    .line 292
    :cond_0
    return-void
.end method

.method private restoreMe(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 451
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 454
    const-string v0, "breadcrumb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    .line 455
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->fillList(I)V

    .line 456
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startWatchingExternalStorage()V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->isIntentGetContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->updateExternalStorageState()V

    .line 272
    :cond_0
    return-void
.end method

.method private stopWatchingExternalStorage()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method

.method private updateBreadcrumb(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileSelectCancel()V

    .line 228
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finish()V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->fillList(I)V

    goto :goto_0
.end method

.method private updateExternalStorageState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iput-boolean v3, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageWriteable:Z

    iput-boolean v3, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageAvailable:Z

    .line 257
    :goto_0
    iget-boolean v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageAvailable:Z

    iget-boolean v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageWriteable:Z

    invoke-direct {p0, v1, v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->handleExternalStorageState(ZZ)V

    .line 259
    return-void

    .line 250
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iput-boolean v3, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageAvailable:Z

    .line 252
    iput-boolean v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageWriteable:Z

    goto :goto_0

    .line 254
    :cond_1
    iput-boolean v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageWriteable:Z

    iput-boolean v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalStorageAvailable:Z

    goto :goto_0
.end method


# virtual methods
.method protected isIntentGetContent()Z
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 434
    return-void

    .line 416
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 420
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 422
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-static {p0, v2}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileSelect(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-nez p2, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileSelectCancel()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x18f0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->updateBreadcrumb(Z)V

    .line 385
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "net.zhuoweizhang.afilechooser.extra.MIME_TYPES"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "extraMimeTypes":[Ljava/lang/String;
    iget-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->extendedMimeTypes:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 331
    if-eqz v1, :cond_0

    .line 332
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 333
    .local v4, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->extendedMimeTypes:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalDir:Ljava/io/File;

    .line 339
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "net.zhuoweizhang.afilechooser.extra.SORT_METHOD"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "sortMethod":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 341
    const-string v7, "net.zhuoweizhang.afilechooser.extra.SORT_LAST_MODIFIED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    iget-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mLastModifiedComparator:Ljava/util/Comparator;

    iput-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mComparator:Ljava/util/Comparator;

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    if-nez v7, :cond_2

    .line 348
    new-instance v7, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-direct {v7, p0}, Lcom/ipaulpro/afilechooser/FileListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    :cond_2
    if-eqz p1, :cond_4

    .line 352
    invoke-direct {p0, p1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->restoreMe(Landroid/os/Bundle;)V

    .line 366
    :cond_3
    :goto_1
    return-void

    .line 355
    :cond_4
    iget-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mExternalDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "startPath"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "startPath":Ljava/lang/String;
    if-eqz v6, :cond_5

    iput-object v6, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 359
    :cond_5
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->updateBreadcrumb(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->isIntentGetContent()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 362
    sget v7, Lcom/ipaulpro/afilechooser/R$layout;->explorer:I

    invoke-virtual {p0, v7}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setContentView(I)V

    .line 363
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->fillList(I)V

    goto :goto_1
.end method

.method protected onFileDisconnect()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "ChooserActivity"

    const-string v1, "External storage disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method protected onFileError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 307
    const-string v0, "ChooserActivity"

    const-string v1, "Error selecting file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    return-void
.end method

.method protected onFileSelect(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 299
    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method protected onFileSelectCancel()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "ChooserActivity"

    const-string v1, "File selection canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 389
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 392
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 394
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    .line 395
    const-string v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->updateBreadcrumb(Z)V

    .line 401
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->fillList(I)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, "data":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 379
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->stopWatchingExternalStorage()V

    .line 380
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 372
    invoke-direct {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->startWatchingExternalStorage()V

    .line 373
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    const-string v0, "path"

    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "breadcrumb"

    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity;->mBreadcrumb:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 442
    const-string v0, "position"

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    return-void
.end method

.method protected showFileChooser()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->showFileChooser(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected showFileChooser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/ipaulpro/afilechooser/R$string;->select_file:I

    invoke-virtual {p0, v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "*/*"

    .line 150
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :try_start_0
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x18f0

    invoke-virtual {p0, v2, v3}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
