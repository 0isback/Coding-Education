.class public Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;
.super Ljava/lang/Object;
.source "RefreshContentListThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/app/Activity;

.field protected final mListener:Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;)V
    .locals 0
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "listener"    # Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->mContext:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->mListener:Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;

    .line 16
    return-void
.end method

.method private combOneFolder(Ljava/io/File;Ljava/util/List;)V
    .locals 7
    .param p1, "patchesFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "patches":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 32
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "no storage folder"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 35
    .local v4, "patchFile":Ljava/io/File;
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->mListener:Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;

    invoke-interface {v5, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;->isEnabled(Ljava/io/File;)Z

    move-result v3

    .line 36
    .local v3, "patchEnabled":Z
    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-direct {v5, v4, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;-><init>(Ljava/io/File;Z)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->mListener:Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;

    invoke-interface {v3}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;->getFolders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 22
    .local v0, "folder":Ljava/io/File;
    invoke-direct {p0, v0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->combOneFolder(Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    .line 25
    .end local v0    # "folder":Ljava/io/File;
    :cond_0
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->sort(Ljava/util/List;)V

    .line 27
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;->mListener:Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;

    invoke-interface {v3, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;->onRefreshComplete(Ljava/util/List;)V

    .line 28
    return-void
.end method
