.class public Lnet/zhuoweizhang/mcpelauncher/AddonManager;
.super Ljava/lang/Object;
.source "AddonManager.java"


# static fields
.field public static addonMgr:Lnet/zhuoweizhang/mcpelauncher/AddonManager;


# instance fields
.field private context:Landroid/content/Context;

.field private disabledAddons:Ljava/util/Set;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->context:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->loadDisabledAddons()V

    .line 31
    return-void
.end method

.method public static getAddonManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/AddonManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->addonMgr:Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->addonMgr:Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    .line 25
    :cond_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->addonMgr:Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    return-object v0
.end method


# virtual methods
.method public getDisabledAddons()Ljava/util/Set;
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
    .line 34
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    return-object v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDisabledAddons()V
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "disabledAddons"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    .line 58
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
    .line 51
    .local p1, "allPossibleFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->saveDisabledAddons()V

    .line 53
    return-void
.end method

.method protected saveDisabledAddons()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "disabledAddons"

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v2, v4}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    const-string v2, "addonManagerVersion"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->saveDisabledAddons()V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->disabledAddons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
