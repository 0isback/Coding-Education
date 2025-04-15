.class public final Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem$ContentListComparator;
.super Ljava/lang/Object;
.source "ContentListItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    check-cast p2, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-virtual {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem$ContentListComparator;->compare(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)I
    .locals 2
    .param p1, "a"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .param p2, "b"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 41
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z
    .locals 2
    .param p1, "a"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .param p2, "b"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 45
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
