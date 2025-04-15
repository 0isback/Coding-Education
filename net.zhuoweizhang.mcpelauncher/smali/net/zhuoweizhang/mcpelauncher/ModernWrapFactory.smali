.class public Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;
.super Lorg/mozilla/javascript/WrapFactory;
.source "ModernWrapFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BlockLauncher/ModernWrapFactory"


# instance fields
.field public popups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/PopupWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/mozilla/javascript/WrapFactory;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected closePopups(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;

    invoke-direct {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 5
    .param p1, "cx"    # Lorg/mozilla/javascript/Context;
    .param p2, "scope"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "staticType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p3, Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 35
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v0, p3

    check-cast v0, Landroid/widget/PopupWindow;

    move-object v1, v0

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
