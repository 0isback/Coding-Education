.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->onRefreshComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 857
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->val$items:Ljava/util/List;

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->sort(Ljava/util/List;)V

    .line 858
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 859
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->val$items:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 860
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    iget-object v4, v4, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 862
    .local v0, "allPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 863
    .local v1, "i":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    iget-object v4, v1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 866
    .end local v1    # "i":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->removeDeadEntries(Ljava/util/Collection;)V

    .line 867
    return-void
.end method
