.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromCfgyDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

.field final synthetic val$view:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;->val$view:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;->val$view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$500(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/String;)V

    .line 448
    return-void
.end method
