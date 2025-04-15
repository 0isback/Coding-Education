.class public Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;->mResources:Landroid/content/res/Resources;

    .line 17
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22
    .local v1, "view":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 23
    .local v0, "item":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->toString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const/4 v3, 0x0

    iget-boolean v2, v0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 25
    return-object v1

    .line 24
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
