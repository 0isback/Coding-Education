.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeLevelApi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2023
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2024
    return-void
.end method

.method public static addParticle(IDDDDDDI)V
    .locals 11
    .param p0, "type"    # I
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "xVel"    # D
    .param p9, "yVel"    # D
    .param p11, "zVel"    # D
    .param p13, "size"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2221
    move/from16 v0, p13

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ParticleType;->checkValid(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2223
    :goto_0
    return-void

    .line 2222
    :cond_0
    double-to-float v3, p1

    double-to-float v4, p3

    move-wide/from16 v0, p5

    double-to-float v5, v0

    move-wide/from16 v0, p7

    double-to-float v6, v0

    move-wide/from16 v0, p9

    double-to-float v7, v0

    move-wide/from16 v0, p11

    double-to-float v8, v0

    move v2, p0

    move/from16 v9, p13

    invoke-static/range {v2 .. v9}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelAddParticle(IFFFFFFI)V

    goto :goto_0
.end method

.method public static biomeIdToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2237
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBiomeIdToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canSeeSky(III)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2293
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelCanSeeSky(III)Z

    move-result v0

    return v0
.end method

.method public static destroyBlock(IIIZ)V
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "shouldDrop"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 2145
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;->getTile(III)I

    move-result v8

    .line 2146
    .local v8, "itmId":I
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;->getData(III)I

    move-result v10

    .line 2148
    .local v10, "itmDmg":I
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDestroyBlock(III)V

    .line 2149
    if-eqz p3, :cond_0

    .line 2150
    int-to-double v0, p0

    add-double/2addr v0, v6

    int-to-double v2, p1

    int-to-double v4, p2

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x1

    invoke-static/range {v0 .. v10}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;->dropItem(DDDDIII)J

    .line 2151
    :cond_0
    return-void
.end method

.method public static dropItem(DDDDIII)J
    .locals 8
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "range"    # D
    .param p8, "id"    # I
    .param p9, "count"    # I
    .param p10, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2115
    double-to-float v0, p0

    double-to-float v1, p2

    double-to-float v2, p4

    double-to-float v3, p6

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDropItem(FFFFIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static explode(DDDDZ)V
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "radius"    # D
    .param p8, "onfire"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2038
    double-to-float v0, p0

    double-to-float v1, p2

    double-to-float v2, p4

    double-to-float v3, p6

    invoke-static {v0, v1, v2, v3, p8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeExplode(FFFFZ)V

    .line 2039
    return-void
.end method

.method public static getAddress()Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2049
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetLevel()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;-><init>(J)V

    return-object v0
.end method

.method public static getBiome(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2227
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetBiome(II)I

    move-result v0

    return v0
.end method

.method public static getBiomeName(II)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # I
    .param p1, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2232
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetBiomeName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrightness(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2195
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetBrightness(III)I

    move-result v0

    return v0
.end method

.method public static getChestSlot(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2161
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemChest(IIII)I

    move-result v0

    return v0
.end method

.method public static getChestSlotCount(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2171
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemCountChest(IIII)I

    move-result v0

    return v0
.end method

.method public static getChestSlotData(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2166
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemDataChest(IIII)I

    move-result v0

    return v0
.end method

.method public static getData(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2099
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetData(III)I

    move-result v0

    return v0
.end method

.method public static getDifficulty()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2298
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetDifficulty()I

    move-result v0

    return v0
.end method

.method public static getFurnaceSlot(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2206
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemFurnace(IIII)I

    move-result v0

    return v0
.end method

.method public static getFurnaceSlotCount(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2216
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemCountFurnace(IIII)I

    move-result v0

    return v0
.end method

.method public static getFurnaceSlotData(IIII)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2211
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemDataFurnace(IIII)I

    move-result v0

    return v0
.end method

.method public static getGameMode()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2125
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetGameType()I

    move-result v0

    return v0
.end method

.method public static getGrassColor(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2247
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetGrassColor(II)I

    move-result v0

    return v0
.end method

.method public static getLightningLevel()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2273
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetLightningLevel()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getRainLevel()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2283
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelGetRainLevel()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getSignText(IIII)Ljava/lang/String;
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "line"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2083
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 2084
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid line for sign: must be in the range of 0 to 3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetSignText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpawnerEntityType(III)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2265
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;->getTile(III)I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    .line 2266
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a mob spawner!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_0
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSpawnerGetEntityType(III)I

    move-result v0

    return v0
.end method

.method public static getTile(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2033
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetTile(III)I

    move-result v0

    return v0
.end method

.method public static getTime()I
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2130
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getWorldDir()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2109
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getWorldName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2104
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldName:Ljava/lang/String;

    return-object v0
.end method

.method public static playSound(DDDLjava/lang/String;DD)V
    .locals 11
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "sound"    # Ljava/lang/String;
    .param p7, "volume"    # D
    .param p9, "pitch"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2178
    double-to-float v2, p0

    double-to-float v3, p2

    double-to-float v4, p4

    const-wide/16 v6, 0x0

    cmpg-double v5, p7, v6

    if-gtz v5, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    const-wide/16 v8, 0x0

    cmpg-double v5, p9, v8

    if-gtz v5, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    move-object/from16 v5, p6

    invoke-static/range {v2 .. v7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlaySound(FFFLjava/lang/String;FF)V

    .line 2180
    return-void

    .line 2178
    :cond_0
    move-wide/from16 v0, p7

    double-to-float v6, v0

    goto :goto_0

    :cond_1
    move-wide/from16 v0, p9

    double-to-float v7, v0

    goto :goto_1
.end method

.method public static playSoundEnt(Ljava/lang/Object;Ljava/lang/String;DD)V
    .locals 10
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "volume"    # D
    .param p4, "pitch"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    .line 2184
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-static {v6, v7, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v0

    .line 2185
    .local v0, "x":F
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-static {v6, v7, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v1

    .line 2186
    .local v1, "y":F
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v6

    const/4 v3, 0x2

    invoke-static {v6, v7, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v2

    .line 2188
    .local v2, "z":F
    cmpg-double v3, p2, v8

    if-gtz v3, :cond_0

    move v4, v5

    :goto_0
    cmpg-double v3, p4, v8

    if-gtz v3, :cond_1

    :goto_1
    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlaySound(FFFLjava/lang/String;FF)V

    .line 2190
    return-void

    .line 2188
    :cond_0
    double-to-float v4, p2

    goto :goto_0

    :cond_1
    double-to-float v5, p4

    goto :goto_1
.end method

.method public static setChestSlot(IIIIIII)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .param p4, "id"    # I
    .param p5, "damage"    # I
    .param p6, "amount"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2156
    invoke-static/range {p0 .. p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddItemChest(IIIIIII)V

    .line 2157
    return-void
.end method

.method public static setDifficulty(I)V
    .locals 0
    .param p0, "difficulty"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2303
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelSetDifficulty(I)V

    .line 2304
    return-void
.end method

.method public static setFurnaceSlot(IIIIIII)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "slot"    # I
    .param p4, "id"    # I
    .param p5, "damage"    # I
    .param p6, "amount"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2201
    invoke-static/range {p0 .. p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddItemFurnace(IIIIIII)V

    .line 2202
    return-void
.end method

.method public static setGameMode(I)V
    .locals 0
    .param p0, "type"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2120
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetGameType(I)V

    .line 2121
    return-void
.end method

.method public static setGrassColor(III)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "z"    # I
    .param p2, "color"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2252
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelSetGrassColor(III)V

    .line 2253
    return-void
.end method

.method public static setLightningLevel(D)V
    .locals 2
    .param p0, "val"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2278
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelSetLightningLevel(F)V

    .line 2279
    return-void
.end method

.method public static setNightMode(Z)V
    .locals 0
    .param p0, "isNight"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2028
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetNightMode(Z)V

    .line 2029
    return-void
.end method

.method public static setRainLevel(D)V
    .locals 2
    .param p0, "val"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2288
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelSetRainLevel(F)V

    .line 2289
    return-void
.end method

.method public static setSignText(IIIILjava/lang/String;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "line"    # I
    .param p4, "newText"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2090
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 2091
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid line for sign: must be in the range of 0 to 3"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetSignText(IIIILjava/lang/String;)V

    .line 2093
    return-void
.end method

.method public static setSpawn(III)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2140
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetSpawn(III)V

    .line 2141
    return-void
.end method

.method public static setSpawnerEntityType(IIII)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "type"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2257
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;->getTile(III)I

    move-result v0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    .line 2258
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a mob spawner!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2260
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSpawnerSetEntityType(IIII)V

    .line 2261
    return-void
.end method

.method public static setTile(IIIII)V
    .locals 0
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "id"    # I
    .param p4, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2043
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetTile(IIIII)V

    .line 2044
    return-void
.end method

.method public static setTime(I)V
    .locals 2
    .param p0, "time"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2135
    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetTime(J)V

    .line 2136
    return-void
.end method

.method public static spawnChicken(DDDLjava/lang/String;)J
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2054
    invoke-static {p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2055
    const-string p6, "mob/chicken.png"

    .line 2057
    :cond_0
    double-to-float v2, p0

    double-to-float v3, p2

    double-to-float v4, p4

    const/16 v5, 0xa

    invoke-static {v2, v3, v4, v5, p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 2058
    .local v0, "entityId":J
    return-wide v0
.end method

.method public static spawnCow(DDDLjava/lang/String;)J
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2063
    invoke-static {p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2064
    const-string p6, "mob/cow.png"

    .line 2066
    :cond_0
    double-to-float v2, p0

    double-to-float v3, p2

    double-to-float v4, p4

    const/16 v5, 0xb

    invoke-static {v2, v3, v4, v5, p6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 2067
    .local v0, "entityId":J
    return-wide v0
.end method

.method public static spawnMob(DDDILjava/lang/String;)J
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "typeId"    # I
    .param p7, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2074
    invoke-static {p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2075
    const/4 p7, 0x0

    .line 2077
    :cond_0
    double-to-float v2, p0

    double-to-float v3, p2

    double-to-float v4, p4

    invoke-static {v2, v3, v4, p6, p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 2078
    .local v0, "entityId":J
    return-wide v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2308
    const-string v0, "Level"

    return-object v0
.end method
