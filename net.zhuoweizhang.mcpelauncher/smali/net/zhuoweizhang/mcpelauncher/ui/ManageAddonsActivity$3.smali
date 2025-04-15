.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;
.super Ljava/lang/Object;
.source "ManageAddonsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->createManageAddonDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 238
    if-nez p2, :cond_1

    .line 241
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$400(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->deleteAddon(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V

    .line 242
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 247
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$400(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->toggleAddon(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)V

    .line 248
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    goto :goto_0
.end method
