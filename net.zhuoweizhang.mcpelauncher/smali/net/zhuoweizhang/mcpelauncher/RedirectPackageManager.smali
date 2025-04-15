.class public Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;
.super Lnet/zhuoweizhang/mcpelauncher/WrappedPackageManager;
.source "RedirectPackageManager.java"


# instance fields
.field protected nativeLibraryDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "mgr"    # Landroid/content/pm/PackageManager;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/WrappedPackageManager;-><init>(Landroid/content/pm/PackageManager;)V

    .line 12
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;->nativeLibraryDir:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;->wrapped:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 18
    .local v0, "retval":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 19
    return-object v0
.end method
