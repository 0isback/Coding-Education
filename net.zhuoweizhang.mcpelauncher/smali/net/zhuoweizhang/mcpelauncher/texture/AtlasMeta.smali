.class public Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;
.super Ljava/lang/Object;
.source "AtlasMeta.java"


# instance fields
.field public data:Lorg/json/JSONArray;

.field public height:I

.field private nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public occupied:[Z

.field public originalUVCount:I

.field public tileWidth:I

.field public width:I


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->nameMap:Ljava/util/Map;

    .line 13
    const/4 v1, 0x0

    iput v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    .line 16
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    .line 18
    :try_start_0
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->calculateStuff()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private calculateOccupied()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 40
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v8, "name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    const-string v8, "name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->nameMap:Ljava/util/Map;

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v8, "uvs"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 45
    .local v7, "uvs":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 46
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 47
    .local v6, "uv":Lorg/json/JSONArray;
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {p0, v8, v9, v10, v11}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->uvToIndex(DD)I

    move-result v2

    .line 48
    .local v2, "index":I
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    aput-boolean v12, v8, v2

    .line 49
    iget v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 51
    .end local v2    # "index":I
    .end local v6    # "uv":Lorg/json/JSONArray;
    :cond_2
    const-string v8, "flowing_water"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "flowing_lava"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    :cond_3
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 54
    .restart local v6    # "uv":Lorg/json/JSONArray;
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {p0, v8, v9, v10, v11}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->uvToIndex(DD)I

    move-result v2

    .line 55
    .restart local v2    # "index":I
    iget v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v9, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int v4, v8, v9

    .line 56
    .local v4, "row":I
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    add-int/lit8 v9, v2, 0x1

    aput-boolean v12, v8, v9

    .line 57
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    add-int v9, v2, v4

    aput-boolean v12, v8, v9

    .line 58
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    add-int v9, v2, v4

    add-int/lit8 v9, v9, 0x1

    aput-boolean v12, v8, v9

    .line 59
    iget v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    add-int/lit8 v8, v8, 0x3

    iput v8, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->originalUVCount:I

    goto :goto_1

    .line 62
    .end local v0    # "entry":Lorg/json/JSONObject;
    .end local v2    # "index":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "row":I
    .end local v5    # "u":I
    .end local v6    # "uv":Lorg/json/JSONArray;
    .end local v7    # "uvs":Lorg/json/JSONArray;
    :cond_4
    return-void
.end method

.method private calculateStuff()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 25
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, "firstEntry":Lorg/json/JSONObject;
    const-string v3, "uvs"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 27
    .local v2, "uvs":Lorg/json/JSONArray;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    .local v1, "firstUv":Lorg/json/JSONArray;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    .line 29
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    .line 30
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    .line 31
    iget v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->isPowerOfTwo(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non power of two value in icon width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    :cond_0
    iget v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    iget v5, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v4, v5

    mul-int/2addr v3, v4

    new-array v3, v3, [Z

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    .line 35
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->calculateOccupied()V

    .line 36
    return-void
.end method

.method private indexToUv(I)Lorg/json/JSONArray;
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 98
    iget v12, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v12, v13

    rem-int v6, p1, v12

    .line 99
    .local v6, "xCoord":I
    iget v12, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v12, v13

    div-int v7, p1, v12

    .line 100
    .local v7, "yCoord":I
    iget v12, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    mul-int/2addr v12, v6

    int-to-double v2, v12

    .line 101
    .local v2, "x1":D
    add-int/lit8 v12, v6, 0x1

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    mul-int/2addr v12, v13

    int-to-double v4, v12

    .line 102
    .local v4, "x2":D
    iget v12, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    mul-int/2addr v12, v7

    int-to-double v8, v12

    .line 103
    .local v8, "y1":D
    add-int/lit8 v12, v7, 0x1

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    mul-int/2addr v12, v13

    int-to-double v10, v12

    .line 105
    .local v10, "y2":D
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v12

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    iget v13, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->height:I

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .local v0, "arr":Lorg/json/JSONArray;
    return-object v0

    .line 108
    .end local v0    # "arr":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 65
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uvToIndex(DD)I
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 69
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    int-to-double v2, v2

    div-double v2, p1, v2

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 70
    .local v0, "xCoord":I
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    int-to-double v2, v2

    div-double v2, p3, v2

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 71
    .local v1, "yCoord":I
    iget v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->width:I

    iget v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->tileWidth:I

    div-int/2addr v2, v3

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method


# virtual methods
.method public getOrAddIcon(Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->nameMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 76
    .local v1, "entry":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 77
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "uvs"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->nameMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->data:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    :cond_0
    const-string v4, "uvs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 82
    .local v3, "uvs":Lorg/json/JSONArray;
    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 94
    :goto_0
    return-object v2

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    .local v0, "emptyIndex":I
    :goto_1
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 86
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_3

    .line 88
    :cond_2
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 89
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No more space in texture atlas; can\'t add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_4
    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->indexToUv(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 92
    .local v2, "uv":Lorg/json/JSONArray;
    invoke-virtual {v3, p2, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->occupied:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    goto :goto_0
.end method

.method public hasIcon(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 115
    :try_start_0
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->nameMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 116
    .local v1, "texItem":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 121
    .end local v1    # "texItem":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 117
    .restart local v1    # "texItem":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "uvs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 118
    .local v2, "uvs":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ge p2, v4, :cond_0

    .line 119
    const/4 v3, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "texItem":Lorg/json/JSONObject;
    .end local v2    # "uvs":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method
