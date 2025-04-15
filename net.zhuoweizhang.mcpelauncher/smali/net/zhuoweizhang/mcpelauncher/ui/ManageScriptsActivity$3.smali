.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;
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
    .line 390
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 392
    if-nez p2, :cond_1

    .line 395
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->deletePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 396
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 401
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    goto :goto_0

    .line 402
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 403
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$400(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    goto :goto_0

    .line 404
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 405
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->togglePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 406
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    goto :goto_0
.end method
