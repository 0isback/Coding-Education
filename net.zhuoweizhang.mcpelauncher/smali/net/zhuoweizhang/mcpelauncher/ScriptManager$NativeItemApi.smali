.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeItemApi"
.end annotation


# static fields
.field private static activeRecipes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->activeRecipes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3283
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 3284
    return-void
.end method

.method public static addCraftRecipe(IIILorg/mozilla/javascript/Scriptable;)V
    .locals 21
    .param p0, "id"    # I
    .param p1, "count"    # I
    .param p2, "damage"    # I
    .param p3, "ingredientsScriptable"    # Lorg/mozilla/javascript/Scriptable;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3296
    invoke-static/range {p3 .. p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1800(Lorg/mozilla/javascript/Scriptable;)[I

    move-result-object v6

    .line 3297
    .local v6, "expanded":[I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 3298
    .local v16, "temprow":Ljava/lang/StringBuilder;
    const/16 v13, 0x61

    .line 3299
    .local v13, "nextchar":C
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v8, v0, [I

    .line 3300
    .local v8, "ingredients":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 3301
    aget v11, v6, v7

    .line 3302
    .local v11, "inputid":I
    add-int/lit8 v19, v7, 0x1

    aget v9, v6, v19

    .line 3303
    .local v9, "inputcount":I
    add-int/lit8 v19, v7, 0x2

    aget v10, v6, v19

    .line 3304
    .local v10, "inputdamage":I
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    int-to-char v14, v0

    .end local v13    # "nextchar":C
    .local v14, "nextchar":C
    move v12, v13

    .line 3305
    .local v12, "mychar":C
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_1
    if-ge v3, v9, :cond_0

    .line 3306
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3308
    :cond_0
    aput v12, v8, v7

    .line 3309
    add-int/lit8 v19, v7, 0x1

    aput v11, v8, v19

    .line 3310
    add-int/lit8 v19, v7, 0x2

    aput v10, v8, v19

    .line 3300
    add-int/lit8 v7, v7, 0x3

    move v13, v14

    .end local v14    # "nextchar":C
    .restart local v13    # "nextchar":C
    goto :goto_0

    .line 3312
    .end local v3    # "a":I
    .end local v9    # "inputcount":I
    .end local v10    # "inputdamage":I
    .end local v11    # "inputid":I
    .end local v12    # "mychar":C
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 3313
    .local v17, "temprowLength":I
    const/16 v19, 0x9

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 3314
    const-string v19, "Too many ingredients in shapeless recipe: max of 9 slots, the extra items have been ignored"

    invoke-static/range {v19 .. v19}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$500(Ljava/lang/String;)V

    .line 3316
    const/16 v19, 0x9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3317
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    .line 3320
    :cond_2
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    const/16 v18, 0x2

    .line 3321
    .local v18, "width":I
    :goto_2
    div-int v20, v17, v18

    rem-int v19, v17, v18

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    :goto_3
    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    .line 3322
    .local v15, "shape":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_4
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 3323
    mul-int v4, v7, v18

    .line 3324
    .local v4, "begin":I
    add-int v5, v4, v18

    .line 3325
    .local v5, "end":I
    move/from16 v0, v17

    if-le v5, v0, :cond_3

    move/from16 v5, v17

    .line 3326
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v7

    .line 3322
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3320
    .end local v4    # "begin":I
    .end local v5    # "end":I
    .end local v15    # "shape":[Ljava/lang/String;
    .end local v18    # "width":I
    :cond_4
    const/16 v18, 0x3

    goto :goto_2

    .line 3321
    .restart local v18    # "width":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 3328
    .restart local v15    # "shape":[Ljava/lang/String;
    :cond_6
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v15, v8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->verifyAndAddShapedRecipe(III[Ljava/lang/String;[I)V

    .line 3329
    return-void
.end method

.method public static addFurnaceRecipe(III)V
    .locals 3
    .param p0, "inputId"    # I
    .param p1, "outputId"    # I
    .param p2, "outputDamage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3335
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3336
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input in furnace recipe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid item. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "You must create the item before you can add it to a recipe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3339
    :cond_0
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3340
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output in furnace recipe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid item. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "You must create the item before you can add it to a recipe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3343
    :cond_1
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddFurnaceRecipe(III)V

    .line 3344
    return-void
.end method

.method public static addShapedRecipe(IIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 8
    .param p0, "id"    # I
    .param p1, "count"    # I
    .param p2, "damage"    # I
    .param p3, "shape"    # Lorg/mozilla/javascript/Scriptable;
    .param p4, "ingredients"    # Lorg/mozilla/javascript/Scriptable;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3348
    const-string v6, "length"

    invoke-static {p3, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 3350
    .local v4, "shapeArrayLength":I
    new-array v3, v4, [Ljava/lang/String;

    .line 3351
    .local v3, "shapeArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 3352
    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 3351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3354
    :cond_0
    const-string v6, "length"

    invoke-static {p4, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3356
    .local v2, "ingredientsArrayLength":I
    rem-int/lit8 v6, v2, 0x3

    if-eqz v6, :cond_1

    .line 3357
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Ingredients array must be [\"?\", id, damage, ...]"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3359
    :cond_1
    new-array v1, v2, [I

    .line 3360
    .local v1, "ingredientsArray":[I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 3361
    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v5

    .line 3362
    .local v5, "str":Ljava/lang/Object;
    rem-int/lit8 v6, v0, 0x3

    if-nez v6, :cond_2

    .line 3363
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput v6, v1, v0

    .line 3360
    .end local v5    # "str":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3365
    .restart local v5    # "str":Ljava/lang/Object;
    :cond_2
    check-cast v5, Ljava/lang/Number;

    .end local v5    # "str":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, v1, v0

    goto :goto_2

    .line 3370
    :cond_3
    invoke-static {p0, p1, p2, v3, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->verifyAndAddShapedRecipe(III[Ljava/lang/String;[I)V

    .line 3371
    return-void
.end method

.method public static defineArmor(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "iconIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "texture"    # Ljava/lang/String;
    .param p5, "damageReduceAmount"    # I
    .param p6, "maxDamage"    # I
    .param p7, "armorType"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3437
    if-ltz p7, :cond_0

    const/4 v0, 0x3

    if-le p7, v0, :cond_1

    .line 3438
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid armor type: use ArmorType.helmet, ArmorType.chestplate,ArmorType.leggings, or ArmorType.boots"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3441
    :cond_1
    if-ltz p0, :cond_2

    sget v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    if-lt p0, v0, :cond_3

    .line 3442
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item IDs must be >= 0 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3444
    :cond_3
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    if-eqz v0, :cond_4

    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    invoke-virtual {v0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->hasIcon(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The item icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3447
    :cond_4
    invoke-static/range {p0 .. p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDefineArmor(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    .line 3449
    return-void
.end method

.method public static getName(IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "damage"    # I
    .param p2, "raw"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3288
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3289
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName called with invalid item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3291
    :cond_0
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemName(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseAnimation(I)I
    .locals 1
    .param p0, "id"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3475
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeItemGetUseAnimation(I)I

    move-result v0

    return v0
.end method

.method public static isValidItem(I)Z
    .locals 1
    .param p0, "id"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3453
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v0

    return v0
.end method

.method public static reregisterRecipes()V
    .locals 7

    .prologue
    .line 3405
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->activeRecipes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3406
    .local v1, "r":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v1, v3

    check-cast v3, [I

    check-cast v3, [I

    invoke-static {v4, v5, v6, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddShapedRecipe(III[Ljava/lang/String;[I)V

    goto :goto_0

    .line 3408
    .end local v1    # "r":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static setCategory(II)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "category"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3417
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 3418
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": should be one of ItemCategory.MATERIAL, ItemCategory.DECORATION, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ItemCategory.TOOL, or ItemCategory.FOOD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3421
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetItemCategory(III)V

    .line 3422
    return-void
.end method

.method public static setEnchantType(III)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3497
    invoke-static {p0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetAllowEnchantments(III)V

    .line 3498
    return-void
.end method

.method public static setHandEquipped(IZ)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "yep"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3431
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetHandEquipped(IZ)V

    .line 3432
    return-void
.end method

.method public static setMaxDamage(II)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "maxDamage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3412
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetItemMaxDamage(II)V

    .line 3413
    return-void
.end method

.method public static setProperties(ILjava/lang/Object;)V
    .locals 7
    .param p0, "id"    # I
    .param p1, "props"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3458
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->isValidItem(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3460
    :cond_0
    instance-of v3, p1, Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3461
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3469
    .local v2, "theJson":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeItemSetProperties(ILjava/lang/String;)Z

    move-result v0

    .line 3470
    .local v0, "ret":Z
    if-nez v0, :cond_4

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set properties for item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3462
    .end local v0    # "ret":Z
    .end local v2    # "theJson":Ljava/lang/String;
    :cond_2
    instance-of v3, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 3463
    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    .line 3464
    .local v1, "s":Lorg/mozilla/javascript/Scriptable;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v3, v4, v1, v5, v6}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3465
    .restart local v2    # "theJson":Ljava/lang/String;
    goto :goto_0

    .line 3467
    .end local v1    # "s":Lorg/mozilla/javascript/Scriptable;
    .end local v2    # "theJson":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid input to setProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be converted to JSON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3471
    .restart local v0    # "ret":Z
    .restart local v2    # "theJson":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static setStackedByData(IZ)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "stacked"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3485
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeItemSetStackedByData(IZ)V

    .line 3486
    return-void
.end method

.method public static setUseAnimation(II)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "animation"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3480
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeItemSetUseAnimation(II)V

    .line 3481
    return-void
.end method

.method private static verifyAndAddShapedRecipe(III[Ljava/lang/String;[I)V
    .locals 11
    .param p0, "id"    # I
    .param p1, "count"    # I
    .param p2, "damage"    # I
    .param p3, "shape"    # [Ljava/lang/String;
    .param p4, "ingredients"    # [I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3375
    if-ltz p0, :cond_0

    sget v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    if-lt p0, v3, :cond_1

    .line 3376
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid result in recipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": must be between 0 and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3378
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3379
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid result in recipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid item. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "You must create the item before you can add it to a recipe."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3382
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p4

    if-ge v0, v3, :cond_4

    .line 3383
    add-int/lit8 v3, v0, 0x1

    aget v3, p4, v3

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3384
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid input in recipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid item. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "You must create the item before you can add it to a recipe."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3382
    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 3388
    :cond_4
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->activeRecipes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 3389
    .local v2, "r":[Ljava/lang/Object;
    aget-object v3, v2, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p0, :cond_5

    aget-object v3, v2, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_5

    aget-object v3, v2, v8

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_5

    aget-object v3, v2, v9

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, v2, v10

    check-cast v3, [I

    check-cast v3, [I

    invoke-static {v3, p4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3396
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Recipe already exists."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3402
    .end local v2    # "r":[Ljava/lang/Object;
    :goto_1
    return-void

    .line 3400
    :cond_6
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->activeRecipes:Ljava/util/List;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p3, v4, v9

    aput-object p4, v4, v10

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3401
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddShapedRecipe(III[Ljava/lang/String;[I)V

    goto :goto_1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3502
    const-string v0, "Item"

    return-object v0
.end method
