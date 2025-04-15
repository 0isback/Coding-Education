.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "RendererManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeRendererApi"
.end annotation


# static fields
.field public static renderersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public static renderersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersByName:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersById:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 29
    return-void
.end method

.method public static createHumanoidRenderer()Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->access$000()I

    move-result v0

    .line 51
    .local v0, "id":I
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    invoke-direct {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;-><init>(I)V

    return-object v1
.end method

.method public static get(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "id":I
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    invoke-direct {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "id":I
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 37
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersByName:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    goto :goto_0
.end method

.method public static getById(I)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 41
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersById:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    return-object v0
.end method

.method public static register(Ljava/lang/String;Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "renderer"    # Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersByName:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->renderersById:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->getRenderType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "Renderer"

    return-object v0
.end method
