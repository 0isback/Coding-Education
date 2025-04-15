.class Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TexturePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TexturesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;


# direct methods
.method public constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    .line 158
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->texture_pack_entry:I

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_name:I

    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->access$100(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 159
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 160
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 164
    if-nez p2, :cond_0

    .line 165
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v9, Lnet/zhuoweizhang/mcpelauncher/R$layout;->texture_pack_entry:I

    invoke-virtual {v6, v9, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 168
    .local v3, "item":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_name:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .local v4, "text":Landroid/widget/TextView;
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-static {v6, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->describeTexturePack(Landroid/content/Context;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_desc:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->description:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->description:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_up:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 175
    .local v5, "up":Landroid/view/View;
    if-eqz p1, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_down:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "down":Landroid/view/View;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$TexturesAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq p1, v6, :cond_3

    :goto_2
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    sget v6, Lnet/zhuoweizhang/mcpelauncher/R$id;->texture_entry_img:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 179
    .local v2, "img":Landroid/widget/ImageView;
    iget-object v6, v3, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->img:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, v3, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->img:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-object p2

    .end local v1    # "down":Landroid/view/View;
    .end local v2    # "img":Landroid/widget/ImageView;
    .end local v5    # "up":Landroid/view/View;
    :cond_1
    move v6, v7

    .line 173
    goto :goto_0

    .restart local v5    # "up":Landroid/view/View;
    :cond_2
    move v6, v7

    .line 175
    goto :goto_1

    .restart local v1    # "down":Landroid/view/View;
    :cond_3
    move v8, v7

    .line 177
    goto :goto_2

    .line 179
    .restart local v2    # "img":Landroid/widget/ImageView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method
