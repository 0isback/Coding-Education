.class final Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;
.super Ljava/lang/Object;
.source "ManageAddonsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddonListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 270
    check-cast p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    check-cast p2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    invoke-virtual {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListComparator;->compare(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)I
    .locals 2
    .param p1, "a"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .param p2, "b"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    .line 273
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;)Z
    .locals 2
    .param p1, "a"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
    .param p2, "b"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;

    .prologue
    .line 277
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
