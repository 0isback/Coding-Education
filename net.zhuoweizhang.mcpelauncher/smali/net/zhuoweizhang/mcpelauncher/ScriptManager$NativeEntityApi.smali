.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeEntityApi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2620
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2621
    return-void
.end method

.method public static addEffect(Ljava/lang/Object;IIIZZ)V
    .locals 8
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "potionId"    # I
    .param p2, "duration"    # I
    .param p3, "amplifier"    # I
    .param p4, "isAmbient"    # Z
    .param p5, "showParticles"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2898
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2899
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v7

    .line 2900
    .local v7, "typeId":I
    if-lez v7, :cond_0

    const/16 v2, 0x40

    if-lt v7, v2, :cond_1

    .line 2901
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "addEffect only works for mobs"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2904
    :cond_1
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->effectIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2905
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid MobEffect id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 2907
    invoke-static/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobAddEffect(JIIIZZ)V

    .line 2908
    return-void
.end method

.method public static getAll()[J
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2844
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [J

    .line 2845
    .local v0, "entities":[J
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, v0

    if-le v2, v1, :cond_0

    .line 2846
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2845
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2848
    :cond_0
    return-object v0
.end method

.method public static getAnimalAge(Ljava/lang/Object;)I
    .locals 4
    .param p0, "animal"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 2726
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v0

    .line 2727
    .local v0, "type":I
    if-eq v0, v2, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 2728
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeZombieIsBaby(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, -0x5dc0

    .line 2732
    :goto_0
    return v1

    .line 2728
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2729
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    if-lt v0, v2, :cond_4

    .line 2730
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Age can only be get for animals and zombies/skeletons/pigmen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2732
    :cond_4
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetAnimalAge(J)I

    move-result v1

    goto :goto_0
.end method

.method public static getArmor(Ljava/lang/Object;I)I
    .locals 6
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2967
    if-ltz p1, :cond_0

    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    .line 2968
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid armor slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2970
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2971
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2972
    .local v2, "typeId":I
    if-lez v2, :cond_2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_3

    .line 2973
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getArmor only works for mobs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2975
    :cond_3
    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobGetArmor(JII)I

    move-result v3

    return v3
.end method

.method public static getArmorDamage(Ljava/lang/Object;I)I
    .locals 6
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "slot"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2979
    if-ltz p1, :cond_0

    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    .line 2980
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid armor slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2982
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2983
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2984
    .local v2, "typeId":I
    if-lez v2, :cond_2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_3

    .line 2985
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getArmorDamage only works for mobs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2987
    :cond_3
    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobGetArmor(JII)I

    move-result v3

    return v3
.end method

.method public static getEntityTypeId(Ljava/lang/Object;)I
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2700
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v0

    return v0
.end method

.method public static getExtraData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3010
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1200()Lnet/zhuoweizhang/mcpelauncher/WorldData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3011
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1200()Lnet/zhuoweizhang/mcpelauncher/WorldData;

    move-result-object v0

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->getEntityData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHealth(Ljava/lang/Object;)I
    .locals 4
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2754
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v0

    .line 2755
    .local v0, "entityType":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    .line 2756
    :cond_0
    const/4 v1, 0x0

    .line 2758
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetMobHealth(J)I

    move-result v1

    goto :goto_0
.end method

.method public static getItemEntityCount(Ljava/lang/Object;)I
    .locals 5
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2957
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2958
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2959
    .local v2, "typeId":I
    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 2960
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getItemEntity only works on item entities"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2962
    :cond_0
    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemEntityItem(JI)I

    move-result v3

    return v3
.end method

.method public static getItemEntityData(Ljava/lang/Object;)I
    .locals 5
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2947
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2948
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2949
    .local v2, "typeId":I
    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 2950
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getItemEntity only works on item entities"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2952
    :cond_0
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemEntityItem(JI)I

    move-result v3

    return v3
.end method

.method public static getItemEntityId(Ljava/lang/Object;)I
    .locals 6
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2937
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2938
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2939
    .local v2, "typeId":I
    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 2940
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemEntity only works on item entities: got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2942
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemEntityItem(JI)I

    move-result v3

    return v3
.end method

.method public static getMaxHealth(Ljava/lang/Object;)I
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3005
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetMobMaxHealth(J)I

    move-result v0

    return v0
.end method

.method public static getMobSkin(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2868
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityGetMobSkin(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2853
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityGetNameTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPitch(Ljava/lang/Object;)D
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2660
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPitch(J)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getRenderType(Ljava/lang/Object;)I
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2873
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityGetRenderType(J)I

    move-result v0

    return v0
.end method

.method public static getRider(Ljava/lang/Object;)I
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2863
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityGetRider(J)I

    move-result v0

    return v0
.end method

.method public static getRiding(Ljava/lang/Object;)I
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2858
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityGetRiding(J)I

    move-result v0

    return v0
.end method

.method public static getUniqueId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2878
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1100(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVelX(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2819
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityVel(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getVelY(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2824
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityVel(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getVelZ(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2829
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityVel(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getX(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2677
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getY(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2682
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getYaw(Ljava/lang/Object;)D
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2665
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetYaw(J)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getZ(Ljava/lang/Object;)D
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2687
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityLoc(JI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static isSneaking(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2814
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsSneaking(J)Z

    move-result v0

    return v0
.end method

.method public static remove(Ljava/lang/Object;)V
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2749
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRemoveEntity(J)V

    .line 2750
    return-void
.end method

.method public static removeAllEffects(Ljava/lang/Object;)V
    .locals 5
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2926
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2927
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2928
    .local v2, "typeId":I
    if-lez v2, :cond_0

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 2929
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "removeAllEffects only works for mobs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2932
    :cond_1
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobRemoveAllEffects(J)V

    .line 2933
    return-void
.end method

.method public static removeEffect(Ljava/lang/Object;I)V
    .locals 6
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "potionId"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2912
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2913
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2914
    .local v2, "typeId":I
    if-lez v2, :cond_0

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 2915
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "removeEffect only works for mobs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2918
    :cond_1
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->effectIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2919
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MobEffect id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2921
    :cond_2
    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobRemoveEffect(JI)V

    .line 2922
    return-void
.end method

.method public static rideAnimal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "rider"    # Ljava/lang/Object;
    .param p1, "mount"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2645
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRideAnimal(JJ)V

    .line 2646
    return-void
.end method

.method public static setAnimalAge(Ljava/lang/Object;I)V
    .locals 4
    .param p0, "animal"    # Ljava/lang/Object;
    .param p1, "age"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 2714
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v0

    .line 2715
    .local v0, "type":I
    if-eq v0, v2, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 2716
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeZombieSetBaby(JZ)V

    .line 2722
    :goto_1
    return-void

    .line 2716
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2718
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    if-lt v0, v2, :cond_4

    .line 2719
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Age can only be set for animals and zombies/skeletons/pigmen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2721
    :cond_4
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetAnimalAge(JI)V

    goto :goto_1
.end method

.method public static setArmor(Ljava/lang/Object;III)V
    .locals 6
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "slot"    # I
    .param p2, "id"    # I
    .param p3, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2992
    if-ltz p1, :cond_0

    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    .line 2993
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid armor slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2995
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2996
    .local v0, "entityId":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v2

    .line 2997
    .local v2, "typeId":I
    if-lez v2, :cond_2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_3

    .line 2998
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setArmor only works for mobs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3000
    :cond_3
    invoke-static {v0, v1, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeMobSetArmor(JIII)V

    .line 3001
    return-void
.end method

.method public static setCape(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "location"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2888
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v0

    .line 2889
    .local v0, "typeId":I
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    .line 2890
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Set cape only works for humanoid mobs"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2892
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetCape(JLjava/lang/String;)V

    .line 2893
    return-void
.end method

.method public static setCarriedItem(Ljava/lang/Object;III)V
    .locals 3
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "id"    # I
    .param p2, "count"    # I
    .param p3, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2692
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2693
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The item ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2695
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetCarriedItem(JIII)V

    .line 2696
    return-void
.end method

.method public static setCollisionSize(Ljava/lang/Object;DD)V
    .locals 5
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "a"    # D
    .param p3, "b"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2883
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntitySetSize(JFF)V

    .line 2884
    return-void
.end method

.method public static setExtraData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3016
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1200()Lnet/zhuoweizhang/mcpelauncher/WorldData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3018
    :goto_0
    return v0

    .line 3017
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1200()Lnet/zhuoweizhang/mcpelauncher/WorldData;

    move-result-object v0

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->setEntityData(JLjava/lang/String;Ljava/lang/String;)V

    .line 3018
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setFireTicks(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "howLong"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2672
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetOnFire(JI)V

    .line 2673
    return-void
.end method

.method public static setHealth(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "halfhearts"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2763
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetMobHealth(JI)V

    .line 2764
    return-void
.end method

.method public static setMaxHealth(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "halfhearts"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2768
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetMobMaxHealth(JI)V

    .line 2769
    return-void
.end method

.method public static setMobSkin(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2737
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setMobSkinImpl(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 2738
    return-void
.end method

.method public static setMobSkinImpl(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 2741
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetMobSkin(JLjava/lang/String;)V

    .line 2742
    if-eqz p2, :cond_0

    .line 2743
    const-string v0, "zhuowei.bl.s"

    invoke-static {p0, v0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setExtraData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2745
    :cond_0
    return-void
.end method

.method public static setNameTag(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2834
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetEntityTypeId(J)I

    move-result v0

    .line 2835
    .local v0, "entityType":I
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 2836
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setNameTag only works on mobs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2837
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntitySetNameTag(JLjava/lang/String;)V

    .line 2838
    return-void
.end method

.method public static setPosition(Ljava/lang/Object;DDD)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2650
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetPosition(JFFF)V

    .line 2651
    return-void
.end method

.method public static setPositionRelative(Ljava/lang/Object;DDD)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2655
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetPositionRelative(JFFF)V

    .line 2656
    return-void
.end method

.method public static setRenderType(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "renderType"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2773
    const/4 v3, 0x0

    .line 2774
    .local v3, "theRenderer":Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    instance-of v4, p1, Lorg/mozilla/javascript/NativeJavaObject;

    if-eqz v4, :cond_0

    .line 2775
    check-cast p1, Lorg/mozilla/javascript/NativeJavaObject;

    .end local p1    # "renderType":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeJavaObject;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 2777
    .restart local p1    # "renderType":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .line 2778
    .local v0, "alreadySet":Z
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 2779
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "renderType":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2780
    .local v1, "rendererId":I
    invoke-static {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setRenderTypeImpl(Ljava/lang/Object;I)V

    .line 2781
    const/4 v0, 0x1

    .line 2782
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->getById(I)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    move-result-object v3

    .line 2783
    if-nez v3, :cond_2

    .line 2792
    .end local v1    # "rendererId":I
    :goto_0
    return-void

    .line 2784
    .restart local p1    # "renderType":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 2785
    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    .line 2790
    .end local p1    # "renderType":Ljava/lang/Object;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {v3}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->getRenderType()I

    move-result v4

    invoke-static {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setRenderTypeImpl(Ljava/lang/Object;I)V

    .line 2791
    :cond_3
    const-string v4, "zhuowei.bl.rt"

    invoke-virtual {v3}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setExtraData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2787
    .restart local p1    # "renderType":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2788
    .local v2, "theName":Ljava/lang/String;
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->getByName(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    move-result-object v3

    goto :goto_1
.end method

.method public static setRenderTypeImpl(Ljava/lang/Object;I)V
    .locals 4
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "renderType"    # I

    .prologue
    .line 2795
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityRenderType;->isValidRenderType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2796
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Render type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2798
    :cond_0
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 2799
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Villager render type can only be used on villagers"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2801
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetEntityRenderType(JI)Z

    move-result v0

    .line 2802
    .local v0, "ret":Z
    if-nez v0, :cond_2

    .line 2803
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom render type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2805
    :cond_2
    return-void
.end method

.method public static setRot(Ljava/lang/Object;DD)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "yaw"    # D
    .param p3, "pitch"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2640
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetRot(JFF)V

    .line 2641
    return-void
.end method

.method public static setSneaking(Ljava/lang/Object;Z)V
    .locals 2
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "doIt"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2809
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetSneaking(JZ)V

    .line 2810
    return-void
.end method

.method public static setVelX(Ljava/lang/Object;D)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2625
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 2626
    return-void
.end method

.method public static setVelY(Ljava/lang/Object;D)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2630
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 2631
    return-void
.end method

.method public static setVelZ(Ljava/lang/Object;D)V
    .locals 5
    .param p0, "ent"    # Ljava/lang/Object;
    .param p1, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 2635
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 2636
    return-void
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
    .line 2705
    invoke-static {p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2706
    const/4 p7, 0x0

    .line 2708
    :cond_0
    double-to-float v2, p0

    double-to-float v3, p2

    double-to-float v4, p4

    invoke-static {v2, v3, v4, p6, p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 2709
    .local v0, "entityId":J
    return-wide v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3023
    const-string v0, "Entity"

    return-object v0
.end method
