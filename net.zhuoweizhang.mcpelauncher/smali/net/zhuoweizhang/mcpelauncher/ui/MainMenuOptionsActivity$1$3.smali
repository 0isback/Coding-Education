.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$3;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$3;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$3;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->togglePrefs()V

    .line 198
    return-void
.end method
