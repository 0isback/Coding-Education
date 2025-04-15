.class Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$3;
.super Ljava/lang/Object;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->controllerChange(Lde/ankri/views/Switch;)V
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
    .line 462
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://gist.github.com/zhuowei/4538923d1963524b71fc#file-getextras-md"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-virtual {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method
