.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
.super Ljava/lang/Object;
.source "RendererManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeModelPart"
.end annotation


# instance fields
.field private modelPartName:Ljava/lang/String;

.field private rendererId:I

.field private textureHeight:F

.field private textureWidth:F

.field private textureX:I

.field private textureY:I

.field private transparent:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "rendererId"    # I
    .param p2, "modelPartName"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureWidth:F

    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureHeight:F

    .line 107
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->rendererId:I

    .line 108
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->modelPartName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addBox(FFFIII)V
    .locals 8
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "zOffset"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I

    .prologue
    .line 123
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->addBox(FFFIIIF)V

    .line 124
    return-void
.end method

.method public addBox(FFFIIIF)V
    .locals 14
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "zOffset"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "scale"    # F

    .prologue
    .line 127
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->rendererId:I

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->modelPartName:Ljava/lang/String;

    iget v9, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureX:I

    iget v10, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureY:I

    iget-boolean v11, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->transparent:Z

    iget v12, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureWidth:F

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureHeight:F

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v13}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->access$400(ILjava/lang/String;FFFIIIFIIZFF)V

    .line 131
    return-void
.end method

.method public clear()Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->rendererId:I

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->modelPartName:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->access$500(ILjava/lang/String;)V

    .line 135
    return-object p0
.end method

.method public setRotationPoint(FFF)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 145
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->rendererId:I

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->modelPartName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->nativeModelSetRotationPoint(ILjava/lang/String;FFF)V

    .line 146
    return-object p0
.end method

.method public setTextureOffset(II)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 1
    .param p1, "textureX"    # I
    .param p2, "textureY"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->setTextureOffset(IIZ)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;

    move-result-object v0

    return-object v0
.end method

.method public setTextureOffset(IIZ)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 0
    .param p1, "textureX"    # I
    .param p2, "textureY"    # I
    .param p3, "transparent"    # Z

    .prologue
    .line 116
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureX:I

    .line 117
    iput p2, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureY:I

    .line 118
    iput-boolean p3, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->transparent:Z

    .line 119
    return-object p0
.end method

.method public setTextureSize(FF)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 139
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureWidth:F

    .line 140
    iput p2, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;->textureHeight:F

    .line 141
    return-object p0
.end method
