.class public Lnet/zhuoweizhang/mcpelauncher/texture/PNGImageLoader;
.super Ljava/lang/Object;
.source "PNGImageLoader.java"

# interfaces
.implements Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 9
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 13
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    return-void
.end method
