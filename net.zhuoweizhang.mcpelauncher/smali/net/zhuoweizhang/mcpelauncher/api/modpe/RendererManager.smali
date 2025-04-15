.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;
.super Ljava/lang/Object;
.source "RendererManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$1;,
        Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModelPart;,
        Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeModel;,
        Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;,
        Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->nativeCreateHumanoidRenderer()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->nativeModelPartExists(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(ILjava/lang/String;FFFIIIFIIZFF)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # F
    .param p9, "x9"    # I
    .param p10, "x10"    # I
    .param p11, "x11"    # Z
    .param p12, "x12"    # F
    .param p13, "x13"    # F

    .prologue
    .line 9
    invoke-static/range {p0 .. p13}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->nativeModelAddBox(ILjava/lang/String;FFFIIIFIIZFF)V

    return-void
.end method

.method static synthetic access$500(ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->nativeModelClear(ILjava/lang/String;)V

    return-void
.end method

.method public static defineClasses(Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .param p0, "scope"    # Lorg/mozilla/javascript/Scriptable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const-class v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method private static native nativeCreateHumanoidRenderer()I
.end method

.method private static native nativeModelAddBox(ILjava/lang/String;FFFIIIFIIZFF)V
.end method

.method private static native nativeModelClear(ILjava/lang/String;)V
.end method

.method private static native nativeModelPartExists(ILjava/lang/String;)Z
.end method

.method public static native nativeModelSetRotationPoint(ILjava/lang/String;FFF)V
.end method
