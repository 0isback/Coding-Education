.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportSourcesDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 427
    if-nez p2, :cond_1

    .line 429
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importPatchFromFile()V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 431
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    goto :goto_0

    .line 432
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 433
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    goto :goto_0

    .line 434
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 435
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    goto :goto_0
.end method
