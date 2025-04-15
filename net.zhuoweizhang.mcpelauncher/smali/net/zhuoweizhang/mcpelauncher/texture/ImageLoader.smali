.class public interface abstract Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# virtual methods
.method public abstract load(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
