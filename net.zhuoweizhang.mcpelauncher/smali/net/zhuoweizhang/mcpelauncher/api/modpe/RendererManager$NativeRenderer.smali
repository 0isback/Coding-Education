.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
.super Ljava/lang/Object;
.source "RendererManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeRenderer"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private final rendererId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->name:Ljava/lang/String;

    .line 68
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->rendererId:I

    .line 69
    return-void
.end method


# virtual methods
.method public getModel()Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->rendererId:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;-><init>(ILnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->rendererId:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Renderer name must be in format of author.modname.name; for example, coolmcpemodder.sz.SwagYolo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->name:Ljava/lang/String;

    .line 82
    invoke-static {p1, p0}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->register(Ljava/lang/String;Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;)V

    .line 83
    return-void
.end method
