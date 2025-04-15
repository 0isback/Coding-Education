.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativePlayerApi"
.end annotation


# static fields
.field private static playerEnt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2313
    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->playerEnt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2316
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2317
    return-void
.end method

.method public static addExp(I)V
    .locals 0
    .param p0, "value"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2557
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerAddExperience(I)V

    .line 2558
    return-void
.end method

.method public static addItemCreativeInv(III)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "count"    # I
    .param p2, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2399
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddItemCreativeInv(III)V

    .line 2400
    return-void
.end method

.method public static addItemInventory(III)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "amount"    # I
    .param p2, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2347
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddItemInventory(III)V

    .line 2348
    return-void
.end method

.method public static canFly()Z
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2502
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerCanFly()Z

    move-result v0

    return v0
.end method

.method public static clearInventorySlot(I)V
    .locals 0
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2369
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeClearSlotInventory(I)V

    .line 2370
    return-void
.end method

.method public static enchant(III)Z
    .locals 3
    .param p0, "slot"    # I
    .param p1, "enchantment"    # I
    .param p2, "level"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2572
    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    .line 2573
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid enchantment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2575
    :cond_1
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerEnchant(III)Z

    move-result v0

    return v0
.end method

.method public static getArmorSlot(I)I
    .locals 2
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2406
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getArmor(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getArmorSlotDamage(I)I
    .locals 2
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2411
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getArmorDamage(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getCarriedItem()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2342
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetCarriedItem(I)I

    move-result v0

    return v0
.end method

.method public static getCarriedItemCount()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2394
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetCarriedItem(I)I

    move-result v0

    return v0
.end method

.method public static getCarriedItemData()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2389
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetCarriedItem(I)I

    move-result v0

    return v0
.end method

.method public static getDimension()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2512
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetDimension()I

    move-result v0

    return v0
.end method

.method public static getEnchantments(I)[Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;
    .locals 6
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2580
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetEnchantments(I)[I

    move-result-object v2

    .line 2581
    .local v2, "ret":[I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 2586
    :cond_0
    return-object v0

    .line 2582
    :cond_1
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;

    .line 2583
    .local v0, "en":[Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 2584
    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;

    mul-int/lit8 v4, v1, 0x2

    aget v4, v2, v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    invoke-direct {v3, v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;-><init>(II)V

    aput-object v3, v0, v1

    .line 2583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getEntity()J
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2336
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerEnt()J

    move-result-wide v0

    sput-wide v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->playerEnt:J

    .line 2337
    sget-wide v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->playerEnt:J

    return-wide v0
.end method

.method public static getExhaustion()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2527
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetExhaustion()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getExp()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2562
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetExperience()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getHunger()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2517
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetHunger(J)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getInventorySlot(I)I
    .locals 1
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2374
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetSlotInventory(II)I

    move-result v0

    return v0
.end method

.method public static getInventorySlotCount(I)I
    .locals 1
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2384
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetSlotInventory(II)I

    move-result v0

    return v0
.end method

.method public static getInventorySlotData(I)I
    .locals 1
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2379
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetSlotInventory(II)I

    move-result v0

    return v0
.end method

.method public static getItemCustomName(I)Ljava/lang/String;
    .locals 1
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2591
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetItemCustomName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLevel()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2547
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetLevel()I

    move-result v0

    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2421
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->isPlayer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2422
    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2423
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1000()Ljava/lang/String;

    move-result-object v0

    .line 2427
    :goto_0
    return-object v0

    .line 2425
    :cond_1
    const-string v0, "Not a player"

    goto :goto_0

    .line 2427
    :cond_2
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerName(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPointedBlockData()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2462
    const/16 v0, 0x11

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedBlockId()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2457
    const/16 v0, 0x10

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedBlockSide()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2467
    const/16 v0, 0x12

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedBlockX()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2442
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedBlockY()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2447
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedBlockZ()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2452
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedBlock(I)I

    move-result v0

    return v0
.end method

.method public static getPointedEntity()J
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2437
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedEntity()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPointedVecX()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2472
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedVec(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getPointedVecY()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2477
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedVec(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getPointedVecZ()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2482
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetPointedVec(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getSaturation()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2537
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerGetSaturation()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getSelectedSlotId()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2359
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetSelectedSlotId()I

    move-result v0

    return v0
.end method

.method public static getX()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2321
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getY()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2326
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getZ()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2331
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static isFlying()Z
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2492
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerIsFlying()Z

    move-result v0

    return v0
.end method

.method public static isPlayer(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2432
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setArmorSlot(III)V
    .locals 2
    .param p0, "slot"    # I
    .param p1, "id"    # I
    .param p2, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2416
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setArmor(Ljava/lang/Object;III)V

    .line 2417
    return-void
.end method

.method public static setCanFly(Z)V
    .locals 0
    .param p0, "val"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2507
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetCanFly(Z)V

    .line 2508
    return-void
.end method

.method public static setExhaustion(D)V
    .locals 2
    .param p0, "value"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2532
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetExhaustion(F)V

    .line 2533
    return-void
.end method

.method public static setExp(D)V
    .locals 2
    .param p0, "value"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2567
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetExperience(F)V

    .line 2568
    return-void
.end method

.method public static setFlying(Z)V
    .locals 0
    .param p0, "val"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2497
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetFlying(Z)V

    .line 2498
    return-void
.end method

.method public static setHealth(I)V
    .locals 2
    .param p0, "value"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2354
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerEnt()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetMobHealth(JI)V

    .line 2355
    return-void
.end method

.method public static setHunger(D)V
    .locals 4
    .param p0, "value"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2522
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->getEntity()J

    move-result-wide v0

    double-to-float v2, p0

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetHunger(JF)V

    .line 2523
    return-void
.end method

.method public static setInventorySlot(IIII)V
    .locals 0
    .param p0, "slot"    # I
    .param p1, "itemId"    # I
    .param p2, "count"    # I
    .param p3, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2487
    invoke-static {p0, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetInventorySlot(IIII)V

    .line 2488
    return-void
.end method

.method public static setItemCustomName(ILjava/lang/String;)V
    .locals 0
    .param p0, "slot"    # I
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2596
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetItemCustomName(ILjava/lang/String;)V

    .line 2597
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .param p0, "value"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2552
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetLevel(I)V

    .line 2553
    return-void
.end method

.method public static setSaturation(D)V
    .locals 2
    .param p0, "value"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2542
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePlayerSetSaturation(F)V

    .line 2543
    return-void
.end method

.method public static setSelectedSlotId(I)V
    .locals 0
    .param p0, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2363
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetSelectedSlotId(I)V

    .line 2364
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2601
    const-string v0, "Player"

    return-object v0
.end method
