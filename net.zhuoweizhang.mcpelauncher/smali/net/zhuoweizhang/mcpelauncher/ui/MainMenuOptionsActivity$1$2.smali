.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;->updateScripts()V
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
    .line 184
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;->val$p:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;->val$sm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;->val$p:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1$2;->val$sm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method
