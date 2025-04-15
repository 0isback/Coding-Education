.class final Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenshotWriter"
.end annotation


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private fileName:Ljava/lang/String;

.field private screenDim:[I


# direct methods
.method public constructor <init>([ILjava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenDim"    # [I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->screenDim:[I

    .line 45
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    .line 46
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->fileName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private createOutputFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "allPicturesFolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "BlockLauncher"

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v2, "picturesFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 99
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH-mm"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "currentTime":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v4, "retFile":Ljava/io/File;
    const/4 v3, 0x1

    .line 102
    .local v3, "postFix":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    new-instance v4, Ljava/io/File;

    .end local v4    # "retFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "retFile":Ljava/io/File;
    goto :goto_0

    .line 106
    :cond_0
    return-object v4
.end method

.method private runCallBack(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 110
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 112
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->screenshotCallback(Ljava/io/File;)V

    .line 116
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 50
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->screenDim:[I

    const/4 v11, 0x2

    aget v8, v10, v11

    .line 51
    .local v8, "width":I
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->screenDim:[I

    const/4 v11, 0x3

    aget v5, v10, v11

    .line 53
    .local v5, "height":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    mul-int/lit8 v10, v8, 0x4

    mul-int/lit8 v10, v10, 0x2

    new-array v6, v10, [B

    .line 56
    .local v6, "rowBuffer":[B
    mul-int/lit8 v7, v8, 0x4

    .line 57
    .local v7, "stride":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    div-int/lit8 v10, v5, 0x2

    if-ge v9, v10, :cond_0

    .line 60
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    mul-int v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v6, v12, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    sub-int v11, v5, v9

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v6, v7, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    sub-int v11, v5, v9

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v6, v12, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 66
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    mul-int v11, v9, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v6, v7, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 57
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v6, 0x0

    .line 70
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 72
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 73
    const/4 v10, 0x0

    iput-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->buf:Ljava/nio/ByteBuffer;

    .line 75
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->fileName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->createOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 76
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 78
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-eqz v4, :cond_3

    .line 85
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 89
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 91
    invoke-direct {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper$ScreenshotWriter;->runCallBack(Ljava/io/File;)V

    .line 92
    return-void

    .line 86
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v3, :cond_1

    .line 85
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 86
    :catch_2
    move-exception v10

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v3, :cond_2

    .line 85
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 86
    :cond_2
    :goto_4
    throw v10

    :catch_3
    move-exception v11

    goto :goto_4

    .line 83
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 80
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
