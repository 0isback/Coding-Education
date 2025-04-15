.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageTexturepacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TexturesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;


# direct methods
.method public constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    .line 249
    const v0, 0x1090003

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 250
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 251
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 255
    if-nez p2, :cond_0

    .line 256
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 258
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 260
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DEMO:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->textures_demo:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :goto_0
    return-object p2

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
