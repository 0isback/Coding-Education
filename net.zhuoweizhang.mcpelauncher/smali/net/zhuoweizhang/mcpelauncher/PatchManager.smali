.class public Lnet/zhuoweizhang/mcpelauncher/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field public static final blankArray:[Ljava/lang/String;

.field public static patchMgr:Lnet/zhuoweizhang/mcpelauncher/PatchManager;


# instance fields
.field private context:Landroid/content/Context;

.field private enabledPatches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->loadEnabledPatches()V

    .line 30
    return-void
.end method

.method public static getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->patchMgr:Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    invoke-direct {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->patchMgr:Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    .line 24
    :cond_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->patchMgr:Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    return-object v0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "list"    # [Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 91
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->saveEnabledPatches()V

    .line 43
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public disableAllPatches()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 101
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->saveEnabledPatches()V

    .line 102
    return-void
.end method

.method public getEnabledPatches()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    return-object v0
.end method

.method public isEnabled(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected loadEnabledPatches()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledPatches()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    .line 77
    return-void
.end method

.method public removeDeadEntries(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "allPossibleFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->saveEnabledPatches()V

    .line 73
    return-void
.end method

.method protected saveEnabledPatches()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 80
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "enabledPatches"

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v2, v4}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v2, "force_prepatch"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v2, "patchManagerVersion"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public setEnabled(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "state"    # Z

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public setEnabled([Ljava/io/File;Z)V
    .locals 6
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "state"    # Z

    .prologue
    .line 46
    move-object v0, p1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 47
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 46
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_2
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->enabledPatches:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->saveEnabledPatches()V

    .line 56
    return-void
.end method
