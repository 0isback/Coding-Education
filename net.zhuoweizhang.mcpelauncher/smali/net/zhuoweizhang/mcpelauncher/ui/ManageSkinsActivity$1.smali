.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;
.super Ljava/lang/Object;
.source "ManageSkinsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 46
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;

    invoke-virtual {v1, p3}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$SkinsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 50
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-virtual {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setSkin(Ljava/io/File;)V

    .line 51
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->finish()V

    .line 52
    return-void
.end method
