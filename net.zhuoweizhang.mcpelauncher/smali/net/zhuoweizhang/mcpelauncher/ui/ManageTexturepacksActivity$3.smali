.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$3;
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
    .line 75
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method
