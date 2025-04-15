.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeBlockApi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3507
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 3508
    return-void
.end method

.method public static defineBlock(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p0, "blockId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textures"    # Ljava/lang/Object;
    .param p3, "materialSourceIdSrc"    # Ljava/lang/Object;
    .param p4, "opaqueSrc"    # Ljava/lang/Object;
    .param p5, "renderTypeSrc"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3513
    const/4 v6, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;->defineBlockImpl(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 3514
    return-void
.end method

.method private static defineBlockImpl(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 9
    .param p0, "blockId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textures"    # Ljava/lang/Object;
    .param p3, "materialSourceIdSrc"    # Ljava/lang/Object;
    .param p4, "opaqueSrc"    # Ljava/lang/Object;
    .param p5, "renderTypeSrc"    # Ljava/lang/Object;
    .param p6, "customBlockType"    # I

    .prologue
    .line 3526
    if-ltz p0, :cond_0

    const/16 v0, 0x100

    if-lt p0, v0, :cond_1

    .line 3527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block IDs must be >= 0 and < 256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3529
    :cond_1
    const/16 v4, 0x11

    .line 3530
    .local v4, "materialSourceId":I
    const/4 v5, 0x1

    .line 3531
    .local v5, "opaque":Z
    const/4 v6, 0x0

    .line 3532
    .local v6, "renderType":I
    if-eqz p3, :cond_2

    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 3533
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "materialSourceIdSrc":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 3534
    const-string v0, "BlockLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting material source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_2
    if-eqz p4, :cond_3

    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 3537
    check-cast p4, Ljava/lang/Boolean;

    .end local p4    # "opaqueSrc":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3538
    const-string v0, "BlockLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting opaque to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_3
    if-eqz p5, :cond_4

    instance-of v0, p5, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 3541
    check-cast p5, Ljava/lang/Number;

    .end local p5    # "renderTypeSrc":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 3542
    const-string v0, "BlockLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting renderType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    :cond_4
    invoke-static {p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->expandTexturesArray(Ljava/lang/Object;)Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;

    move-result-object v8

    .line 3545
    .local v8, "finalTextures":Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;
    invoke-static {v8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1900(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;)V

    .line 3546
    iget-object v2, v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->names:[Ljava/lang/String;

    iget-object v3, v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->coords:[I

    move v0, p0

    move-object v1, p1

    move v7, p6

    invoke-static/range {v0 .. v7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDefineBlock(ILjava/lang/String;[Ljava/lang/String;[IIZII)V

    .line 3548
    return-void
.end method

.method public static defineLiquidBlock(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p0, "blockId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "textures"    # Ljava/lang/Object;
    .param p3, "materialSourceIdSrc"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 3519
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;->defineBlockImpl(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 3520
    add-int/lit8 v0, p0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;->defineBlockImpl(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 3521
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static getAllBlockIds()[I
    .locals 8
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    const/16 v7, 0x100

    .line 3638
    new-array v5, v7, [Z

    .line 3639
    .local v5, "validIds":[Z
    const/4 v4, 0x0

    .line 3640
    .local v4, "theCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 3641
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3642
    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    .line 3643
    add-int/lit8 v4, v4, 0x1

    .line 3640
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3646
    :cond_1
    new-array v3, v4, [I

    .line 3647
    .local v3, "retval":[I
    const/4 v0, 0x0

    .line 3648
    .local v0, "b":I
    const/4 v2, 0x0

    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 3649
    aget-boolean v6, v5, v2

    if-eqz v6, :cond_3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    aput v2, v3, v1

    .line 3648
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_1

    .line 3651
    :cond_2
    return-object v3

    :cond_3
    move v0, v1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_2
.end method

.method public static getDestroyTime(II)D
    .locals 2
    .param p0, "id"    # I
    .param p1, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3656
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockGetDestroyTime(II)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getFriction(II)D
    .locals 2
    .param p0, "id"    # I
    .param p1, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3661
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockGetFriction(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getRenderType(I)I
    .locals 1
    .param p0, "blockId"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3557
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetBlockRenderShape(I)I

    move-result v0

    return v0
.end method

.method public static setColor(ILorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .param p0, "blockId"    # I
    .param p1, "colorArray"    # Lorg/mozilla/javascript/Scriptable;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3588
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->expandColorsArray(Lorg/mozilla/javascript/Scriptable;)[I

    move-result-object v0

    .line 3589
    .local v0, "finalColors":[I
    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetColor(I[I)V

    .line 3590
    return-void
.end method

.method public static setDestroyTime(ID)V
    .locals 1
    .param p0, "blockId"    # I
    .param p1, "time"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3552
    double-to-float v0, p1

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetDestroyTime(IF)V

    .line 3553
    return-void
.end method

.method public static setExplosionResistance(ID)V
    .locals 1
    .param p0, "blockId"    # I
    .param p1, "resist"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3567
    double-to-float v0, p1

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetExplosionResistance(IF)V

    .line 3568
    return-void
.end method

.method public static setFriction(ID)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "friction"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3666
    double-to-float v0, p1

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetFriction(IF)V

    .line 3667
    return-void
.end method

.method public static setLightLevel(II)V
    .locals 0
    .param p0, "blockId"    # I
    .param p1, "lightLevel"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3583
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetLightLevel(II)V

    .line 3584
    return-void
.end method

.method public static setLightOpacity(II)V
    .locals 0
    .param p0, "blockId"    # I
    .param p1, "lightLevel"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3604
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetLightOpacity(II)V

    .line 3605
    return-void
.end method

.method public static setRedstoneConsumer(IZ)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "enabled"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3671
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetRedstoneConsumer(IZ)V

    .line 3672
    return-void
.end method

.method public static setRenderLayer(II)V
    .locals 0
    .param p0, "blockId"    # I
    .param p1, "layer"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3594
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetRenderLayer(II)V

    .line 3595
    return-void
.end method

.method public static setRenderType(II)V
    .locals 0
    .param p0, "blockId"    # I
    .param p1, "renderType"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3562
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetBlockRenderShape(II)V

    .line 3563
    return-void
.end method

.method public static setShape(IDDDDDDI)V
    .locals 11
    .param p0, "blockId"    # I
    .param p1, "v1"    # D
    .param p3, "v2"    # D
    .param p5, "v3"    # D
    .param p7, "v4"    # D
    .param p9, "v5"    # D
    .param p11, "v6"    # D
    .param p13, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3573
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

    invoke-static/range {v2 .. v9}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeBlockSetShape(IFFFFFFI)V

    .line 3575
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3676
    const-string v0, "Block"

    return-object v0
.end method
