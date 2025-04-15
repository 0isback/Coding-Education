.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;

.field final synthetic val$strWriter:Ljava/io/StringWriter;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;Ljava/io/StringWriter;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;->val$strWriter:Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "aDialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 566
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 567
    .local v0, "mgr":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;->val$strWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method
