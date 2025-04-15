.class public Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;
.super Landroid/widget/PopupWindow;
.source "HoverCar.java"


# instance fields
.field public mainButton:Landroid/widget/ImageButton;

.field private theContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "safeMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->theContext:Landroid/content/Context;

    .line 20
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    .local v0, "inf":Landroid/view/LayoutInflater;
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$layout;->hovercar:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->getContentView()Landroid/view/View;

    move-result-object v3

    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$id;->hovercar_main_button:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->mainButton:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$dimen;->hovercar_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 26
    .local v2, "myWidth":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$dimen;->hovercar_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 28
    .local v1, "myHeight":F
    float-to-int v3, v2

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setWidth(I)V

    .line 29
    float-to-int v3, v1

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setHeight(I)V

    .line 30
    if-eqz p2, :cond_0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x7f010000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void

    :cond_0
    move-object v3, v4

    .line 30
    goto :goto_0
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->mainButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 47
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->update()V

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 34
    const/16 v0, 0x31

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->theContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$dimen;->hovercar_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->showAtLocation(Landroid/view/View;III)V

    .line 36
    return-void
.end method
