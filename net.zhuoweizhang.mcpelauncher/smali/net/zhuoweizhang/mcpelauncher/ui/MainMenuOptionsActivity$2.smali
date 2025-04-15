.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    iget-object v1, v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
