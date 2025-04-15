.class Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;
.super Ljava/lang/Object;
.source "ManagePatchesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->onRefreshComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 402
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->val$items:Ljava/util/List;

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->sort(Ljava/util/List;)V

    .line 403
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->val$items:Ljava/util/List;

    invoke-static {v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$002(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;Ljava/util/List;)Ljava/util/List;

    .line 404
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;

    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$layout;->patch_list_item:I

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 406
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-virtual {v5, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v1, "allPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 409
    .local v2, "i":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    iget-object v5, v2, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    .end local v2    # "i":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->removeDeadEntries(Ljava/util/Collection;)V

    .line 414
    return-void
.end method
