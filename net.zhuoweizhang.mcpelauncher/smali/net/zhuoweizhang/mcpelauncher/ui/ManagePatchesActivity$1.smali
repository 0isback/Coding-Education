.class Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;
.super Ljava/lang/Object;
.source "ManagePatchesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 71
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

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
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-static {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$100(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    .line 74
    return-void
.end method
