.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updatePatches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

.field final synthetic val$p:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field final synthetic val$sm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;->val$p:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;->val$sm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;->val$p:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$1;->val$sm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
