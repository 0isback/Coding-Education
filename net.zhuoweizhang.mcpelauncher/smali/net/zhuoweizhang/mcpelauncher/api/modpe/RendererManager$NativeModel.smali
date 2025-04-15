.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;
.super Ljava/lang/Object;
.source "RendererManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeModel"
.end annotation


# instance fields
.field private final rendererId:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "rendererId"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;->rendererId:I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(ILnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getPart(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;->rendererId:I

    invoke-static {v1, p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->access$200(ILjava/lang/String;)Z

    move-result v0

    .line 95
    .local v0, "partExists":Z
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The model part "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;

    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;->rendererId:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;-><init>(ILjava/lang/String;Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;)V

    return-object v1
.end method
