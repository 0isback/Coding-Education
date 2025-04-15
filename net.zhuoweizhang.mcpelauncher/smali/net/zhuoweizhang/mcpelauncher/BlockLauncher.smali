.class public Lnet/zhuoweizhang/mcpelauncher/BlockLauncher;
.super Landroid/app/Application;
.source "BlockLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/BlockLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setContext(Landroid/content/Context;)V

    .line 10
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 12
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ThemeLifecycleCallbacks;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/ThemeLifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/BlockLauncher;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    :cond_0
    return-void
.end method
