.class Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;
.super Ljava/lang/Object;
.source "ModernWrapFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->closePopups(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    iget-object v4, v3, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    iget-object v3, v3, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 47
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/PopupWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PopupWindow;

    .line 48
    .local v2, "window":Landroid/widget/PopupWindow;
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/PopupWindow;>;"
    .end local v2    # "window":Landroid/widget/PopupWindow;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 51
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    iget-object v3, v3, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->popups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 52
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    return-void
.end method
