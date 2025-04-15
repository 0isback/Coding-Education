.class Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;
.super Ljava/lang/Object;
.source "ManagePatchesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 327
    if-nez p2, :cond_1

    .line 330
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->deletePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 331
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 336
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->showDialog(I)V

    goto :goto_0

    .line 337
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 338
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->togglePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 339
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V

    goto :goto_0
.end method
