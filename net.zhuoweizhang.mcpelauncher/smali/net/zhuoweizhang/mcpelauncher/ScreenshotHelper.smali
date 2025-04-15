.class public Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static takeScreenshot(Ljava/lang/String;)V
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 26
    const/4 v0, 0x4

    new-array v7, v0, [I

    .line 27
    .local v7, "screenDim":[I
    const/16 v0, 0xba2

    invoke-static {v0, v7, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 29
    aget v0, v7, v3

    aget v1, v7, v4

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 31
    .local v6, "buf":Ljava/nio/ByteBuffer;
    aget v0, v7, v2

    const/4 v1, 0x1

    aget v1, v7, v1

    aget v2, v7, v3

    aget v3, v7, v4

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;

    invoke-direct {v1, v7, v6, p0}, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;-><init>([ILjava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method
