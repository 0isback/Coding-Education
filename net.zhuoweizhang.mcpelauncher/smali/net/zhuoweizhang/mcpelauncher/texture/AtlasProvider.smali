.class public Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;
.super Ljava/lang/Object;
.source "AtlasProvider.java"

# interfaces
.implements Lnet/zhuoweizhang/mcpelauncher/TexturePack;


# instance fields
.field private atlasCanvas:Landroid/graphics/Canvas;

.field public atlasImg:Landroid/graphics/Bitmap;

.field public atlasName:Ljava/lang/String;

.field public hasChanges:Z

.field public importDir:Ljava/lang/String;

.field public loader:Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;

.field public metaName:Ljava/lang/String;

.field public metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

.field private mipLevels:I

.field private mipPrefix:Ljava/lang/String;

.field private tempPaint:Landroid/graphics/Paint;

.field private tempRect:Landroid/graphics/Rect;

.field private tempRect2:Landroid/graphics/Rect;

.field public xscale:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;II)V
    .locals 1
    .param p1, "metaName"    # Ljava/lang/String;
    .param p2, "atlasName"    # Ljava/lang/String;
    .param p3, "importDir"    # Ljava/lang/String;
    .param p4, "loader"    # Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;
    .param p5, "xscale"    # I
    .param p6, "mipLevels"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->hasChanges:Z

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->importDir:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->loader:Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;

    .line 37
    iput p5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    .line 38
    iput p6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->mipLevels:I

    .line 39
    invoke-direct {p0, p2}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->getMipMapPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->mipPrefix:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private addAllToMeta(Lcom/mojang/minecraftpe/MainActivity;)Z
    .locals 11
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    iget-object v6, p1, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->importDir:Ljava/lang/String;

    invoke-static {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/TextureUtils;->getAllFilesFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "pathsForMeta":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v8

    .line 138
    :goto_0
    return v6

    .line 127
    :cond_0
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 128
    .local v3, "nameParts":[Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 129
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 128
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 131
    :cond_2
    invoke-direct {p0, v1, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->parseNameParts(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    aget-object v6, v3, v8

    if-eqz v6, :cond_1

    .line 133
    iget-object v10, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    aget-object v6, v3, v8

    check-cast v6, Ljava/lang/String;

    aget-object v7, v3, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v6, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->getOrAddIcon(Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v5

    .line 134
    .local v5, "uv":Lorg/json/JSONArray;
    invoke-direct {p0, p1, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->readBitmap(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 136
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    invoke-direct {p0, v0, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->placeIntoAtlas(Landroid/graphics/Bitmap;Lorg/json/JSONArray;Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;)V

    goto :goto_2

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v5    # "uv":Lorg/json/JSONArray;
    :cond_3
    move v6, v9

    .line 138
    goto :goto_0
.end method

.method private calcXScale(Lcom/mojang/minecraftpe/MainActivity;Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;)V
    .locals 8
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p2, "metaArr"    # Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v5, p1, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->importDir:Ljava/lang/String;

    invoke-static {v5, v6}, Lnet/zhuoweizhang/mcpelauncher/texture/TextureUtils;->getAllFilesFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "pathsForMeta":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v5, p2, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v6, p2, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v5, v6

    iget v6, p2, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    iget v7, p2, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v6, v7

    mul-int v1, v5, v6

    .line 87
    .local v1, "curMetaSize":I
    iget v5, p2, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    sub-int v2, v1, v5

    .line 88
    .local v2, "curRemaining":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 89
    .local v3, "needed":I
    const/4 v5, 0x1

    iput v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    .line 90
    move v0, v2

    .line 91
    .local v0, "cr":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    const/16 v6, 0x40

    if-ge v5, v6, :cond_0

    .line 92
    iget v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    .line 93
    iget v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v1

    add-int v0, v2, v5

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private getMipMap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 223
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    shr-int v1, v2, v3

    .line 224
    .local v1, "newwidth":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    shr-int v0, v2, v3

    .line 225
    .local v0, "newheight":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getMipMapPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "atlasName"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "dotIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_mip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadAtlas(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 10
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 100
    .local v5, "metaIs":Ljava/io/InputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 102
    .local v0, "a":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "p":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 104
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 107
    new-instance v4, Lorg/json/JSONArray;

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "metaArr":Lorg/json/JSONArray;
    new-instance v7, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    invoke-direct {v7, v4}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {p0, p1, v7}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->calcXScale(Lcom/mojang/minecraftpe/MainActivity;Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;)V

    .line 109
    invoke-direct {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->scaleMeta(Lorg/json/JSONArray;)V

    .line 110
    new-instance v7, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    invoke-direct {v7, v4}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;-><init>(Lorg/json/JSONArray;)V

    iput-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    .line 113
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 114
    .local v2, "atlasIs":Ljava/io/InputStream;
    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->loader:Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;

    invoke-interface {v7, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;->load(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, "atlasImgRaw":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->scaleAtlas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    .line 116
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasCanvas:Landroid/graphics/Canvas;

    .line 117
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 118
    return-void
.end method

.method private parseNameParts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "nameParts"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 142
    const/4 v5, 0x0

    aput-object v5, p2, v7

    .line 143
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "fileName":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 145
    .local v4, "underscoreIndex":I
    if-gez v4, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "number":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p2, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    aput-object v1, p2, v7

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private placeIntoAtlas(Landroid/graphics/Bitmap;Lorg/json/JSONArray;Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;)V
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "uv"    # Lorg/json/JSONArray;
    .param p3, "metaObj"    # Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 165
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 166
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 167
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 168
    .local v1, "atlaswidth":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 169
    .local v0, "atlasheight":I
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    int-to-double v6, v1

    mul-double/2addr v4, v6

    iget v3, p3, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    int-to-double v6, v1

    mul-double/2addr v4, v6

    iget v3, p3, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 171
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v3, p3, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 172
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v3, p3, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 173
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 174
    return-void
.end method

.method private readBitmap(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 158
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private scaleAtlas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "in"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 194
    .local v3, "inW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 195
    .local v7, "inH":I
    iget v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    mul-int/2addr v0, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 196
    .local v8, "newBmp":Landroid/graphics/Bitmap;
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "buf":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v0, v8

    move v4, v2

    move v5, v2

    move v6, v3

    .line 198
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 199
    return-object v8
.end method

.method private scaleMeta(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 177
    iget v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 190
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 179
    .local v0, "arrsize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 181
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v7, "uvs"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 182
    .local v5, "uvs":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 183
    .local v6, "uvslength":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 184
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 185
    .local v4, "uv":Lorg/json/JSONArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    iget v10, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 186
    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    iget v10, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 187
    const/4 v7, 0x4

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    iget v10, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->xscale:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v4    # "uv":Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    .line 230
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    .line 231
    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasCanvas:Landroid/graphics/Canvas;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->hasChanges:Z

    .line 233
    return-void
.end method

.method public dumpAtlas()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    .line 203
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bl_atlas_dump_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    .local v0, "os":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 206
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 207
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bl_atlas_dump_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mip0.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v1, "os2":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->getMipMap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 211
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bl_atlas_dump_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v2, "os3":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    iget-object v3, v3, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 214
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 215
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-boolean v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->hasChanges:Z

    if-nez v4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v3

    .line 44
    :cond_1
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    iget-object v4, v4, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->loader:Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasImg:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;->save(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    .line 54
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 55
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    iget v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->mipLevels:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->mipPrefix:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    :try_start_0
    const-string v4, "_mip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "mipLevel":I
    if-ltz v1, :cond_0

    iget v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->mipLevels:I

    if-ge v1, v4, :cond_0

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->loader:Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;

    invoke-direct {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->getMipMap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;->save(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    .line 62
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 63
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "mipLevel":I
    :catch_0
    move-exception v2

    .line 64
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public initAtlas(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/mojang/minecraftpe/MainActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->hasChanges:Z

    .line 78
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->tempPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->loadAtlas(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 80
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->addAllToMeta(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->hasChanges:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->atlasCanvas:Landroid/graphics/Canvas;

    .line 82
    return-void
.end method

.method public listFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
