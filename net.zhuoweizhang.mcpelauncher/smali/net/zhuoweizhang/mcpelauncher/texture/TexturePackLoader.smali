.class public Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;
.super Ljava/lang/Object;
.source "TexturePackLoader.java"


# static fields
.field public static final TYPE_ADDON:Ljava/lang/String; = "addon"

.field public static final TYPE_MPKG:Ljava/lang/String; = "mpkg"

.field public static final TYPE_ZIP:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describeTexturePack(Landroid/content/Context;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "desc"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .prologue
    .line 114
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    .line 115
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    const-string v2, "zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    const-string v2, "mpkg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_1
    return-object v0
.end method

.method private static doLoadIcon(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    .locals 2
    .param p0, "pack"    # Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    .param p1, "d"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const-string v1, "pack.png"

    invoke-interface {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 86
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->img:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private static doLoadMeta(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    .locals 7
    .param p0, "pack"    # Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    .param p1, "d"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const-string v5, "pack.mcmeta"

    invoke-interface {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 93
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 97
    .local v0, "a":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "p":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 101
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "pack"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isCompatible(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "pack"    # Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/zhuoweizhang/mcpelauncher/TexturePack;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "terrainMeta":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "itemsMeta":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "assets/images/terrain.meta"

    invoke-static {p0, v0, p1}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->isCompatibleArray(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "assets/images/items.meta"

    invoke-static {p0, v0, p2}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->isCompatibleArray(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCompatibleArray(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .param p0, "pack"    # Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/zhuoweizhang/mcpelauncher/TexturePack;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "realMeta":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 135
    invoke-interface {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 136
    .local v2, "myMetaIs":Ljava/io/InputStream;
    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v5

    .line 137
    :cond_1
    invoke-interface {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getSize(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    new-array v1, v6, [B

    .line 138
    .local v1, "myMetaBuffer":[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 139
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 140
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->metaToSet([B)Ljava/util/Set;

    move-result-object v3

    .line 141
    .local v3, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, "s":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static loadDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v5, "mcpelauncherprefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "texture_packs"

    const-string v7, "[]"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "descriptionList":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 23
    .local v1, "arrLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .local v3, "descs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 25
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->fromJson(Lorg/json/JSONObject;)Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-object v3
.end method

.method public static loadDescriptionsWithIcons(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "descs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 71
    .local v0, "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    :try_start_0
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadIconForDescription(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public static loadIconForDescription(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V
    .locals 1
    .param p0, "d"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadTexturePack(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    move-result-object v0

    .line 81
    .local v0, "pack":Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->doLoadIcon(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V

    .line 82
    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->doLoadMeta(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)V

    .line 83
    return-void
.end method

.method private static loadTexturePack(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    .locals 3
    .param p0, "desc"    # Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    const-string v1, "mpkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;-><init>(Ljava/io/File;)V

    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported texture pack type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadTexturePacks(Landroid/content/Context;Ljava/util/List;[B[B)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "terrainMeta"    # [B
    .param p3, "itemsMeta"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B[B)",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/TexturePack;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "incompatibles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->metaToList([B)Ljava/util/List;

    move-result-object v6

    .line 53
    .local v6, "terrainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->metaToList([B)Ljava/util/List;

    move-result-object v3

    .line 54
    .local v3, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, "descs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v5, "packs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/TexturePack;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    .line 57
    .local v0, "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadTexturePack(Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    move-result-object v4

    .line 58
    .local v4, "pack":Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    invoke-static {v4, v6, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->isCompatible(Lnet/zhuoweizhang/mcpelauncher/TexturePack;Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->describeTexturePack(Landroid/content/Context;Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "d":Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .end local v4    # "pack":Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    :cond_1
    return-object v5
.end method

.method public static metaToList([B)Ljava/util/List;
    .locals 6
    .param p0, "meta"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v3, Lorg/json/JSONArray;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "metaJson":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 43
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v2
.end method

.method public static metaToSet([B)Ljava/util/Set;
    .locals 6
    .param p0, "meta"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Lorg/json/JSONArray;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "metaJson":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 33
    .local v1, "len":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 34
    .local v3, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 35
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-object v3
.end method

.method public static saveDescriptions(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "descs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const-string v2, "mcpelauncherprefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "texture_packs"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method
