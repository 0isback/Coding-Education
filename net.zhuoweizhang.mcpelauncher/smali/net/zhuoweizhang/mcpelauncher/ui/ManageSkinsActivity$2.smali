.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;
.super Ljava/lang/Object;
.source "ManageSkinsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "target":Landroid/content/Intent;
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    const-class v2, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
