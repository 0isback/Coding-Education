.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;
.super Ljava/lang/Object;
.source "ManageTexturepacksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "target":Landroid/content/Intent;
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    const-class v2, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method
