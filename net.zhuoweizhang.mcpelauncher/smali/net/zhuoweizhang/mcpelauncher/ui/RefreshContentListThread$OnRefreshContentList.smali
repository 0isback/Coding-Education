.class public interface abstract Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;
.super Ljava/lang/Object;
.source "RefreshContentListThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshContentList"
.end annotation


# virtual methods
.method public abstract getFolders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnabled(Ljava/io/File;)Z
.end method

.method public abstract onRefreshComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;)V"
        }
    .end annotation
.end method
