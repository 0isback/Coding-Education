.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 555
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 556
    .local v2, "strWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 557
    .local v1, "pWriter":Ljava/io/PrintWriter;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->val$t:Ljava/lang/Throwable;

    instance-of v3, v3, Lorg/mozilla/javascript/RhinoException;

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->val$t:Ljava/lang/Throwable;

    check-cast v3, Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v3}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "lineSource":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    .end local v0    # "lineSource":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 562
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040001

    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;

    invoke-direct {v5, p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;Ljava/io/StringWriter;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 571
    return-void
.end method
