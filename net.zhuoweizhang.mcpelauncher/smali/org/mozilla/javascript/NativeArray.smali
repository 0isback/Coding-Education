.class public Lorg/mozilla/javascript/NativeArray;
.super Lorg/mozilla/javascript/IdScriptableObject;

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final ARRAY_TAG:Ljava/lang/Object;

.field private static final ConstructorId_concat:I = -0xd

.field private static final ConstructorId_every:I = -0x11

.field private static final ConstructorId_filter:I = -0x12

.field private static final ConstructorId_find:I = -0x16

.field private static final ConstructorId_findIndex:I = -0x17

.field private static final ConstructorId_forEach:I = -0x13

.field private static final ConstructorId_indexOf:I = -0xf

.field private static final ConstructorId_isArray:I = -0x1a

.field private static final ConstructorId_join:I = -0x5

.field private static final ConstructorId_lastIndexOf:I = -0x10

.field private static final ConstructorId_map:I = -0x14

.field private static final ConstructorId_pop:I = -0x9

.field private static final ConstructorId_push:I = -0x8

.field private static final ConstructorId_reduce:I = -0x18

.field private static final ConstructorId_reduceRight:I = -0x19

.field private static final ConstructorId_reverse:I = -0x6

.field private static final ConstructorId_shift:I = -0xa

.field private static final ConstructorId_slice:I = -0xe

.field private static final ConstructorId_some:I = -0x15

.field private static final ConstructorId_sort:I = -0x7

.field private static final ConstructorId_splice:I = -0xc

.field private static final ConstructorId_unshift:I = -0xb

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xa

.field private static final GROW_FACTOR:D = 1.5

.field private static final Id_concat:I = 0xd

.field private static final Id_constructor:I = 0x1

.field private static final Id_every:I = 0x11

.field private static final Id_filter:I = 0x12

.field private static final Id_find:I = 0x16

.field private static final Id_findIndex:I = 0x17

.field private static final Id_forEach:I = 0x13

.field private static final Id_indexOf:I = 0xf

.field private static final Id_iterator:I = 0x1a

.field private static final Id_join:I = 0x5

.field private static final Id_lastIndexOf:I = 0x10

.field private static final Id_length:I = 0x1

.field private static final Id_map:I = 0x14

.field private static final Id_pop:I = 0x9

.field private static final Id_push:I = 0x8

.field private static final Id_reduce:I = 0x18

.field private static final Id_reduceRight:I = 0x19

.field private static final Id_reverse:I = 0x6

.field private static final Id_shift:I = 0xa

.field private static final Id_slice:I = 0xe

.field private static final Id_some:I = 0x15

.field private static final Id_sort:I = 0x7

.field private static final Id_splice:I = 0xc

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_unshift:I = 0xb

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PRE_GROW_SIZE:I = 0x55555554

.field private static final MAX_PROTOTYPE_ID:I = 0x1a

.field private static final NEGATIVE_ONE:Ljava/lang/Integer;

.field private static maximumInitialCapacity:I = 0x0

.field static final serialVersionUID:J = 0x65be3f5055db7c6aL


# instance fields
.field private dense:[Ljava/lang/Object;

.field private denseOnly:Z

.field private length:J

.field private lengthAttr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Array"

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    const/16 v0, 0x2710

    sput v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const/16 v1, 0xa

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_1

    long-to-int v0, p1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-void
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v1, "writable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v1, "enumerable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v1, "configurable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private static defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p2

    invoke-interface {p1, v0, p1, p4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static deleteElem(Lorg/mozilla/javascript/Scriptable;J)V
    .locals 5

    long-to-int v0, p1

    int-to-long v2, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureCapacity(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_1

    const v1, 0x55555554

    if-le p1, v1, :cond_0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    array-length v2, v1

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0
.end method

.method static getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J
    .locals 2

    instance-of v0, p1, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/NativeString;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeString;->getLength()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-string v0, "length"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static getMaximumInitialCapacity()I
    .locals 1

    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return v0
.end method

.method private static getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-int v0, p1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeArray;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v14

    const/16 v4, 0x16

    if-eq v4, v14, :cond_0

    const/16 v4, 0x17

    if-ne v4, v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v16

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget-object v4, p4, v4

    :goto_0
    if-eqz v4, :cond_2

    instance-of v5, v4, Lorg/mozilla/javascript/Function;

    if-nez v5, :cond_4

    :cond_2
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_3
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_5

    instance-of v5, v4, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_5
    check-cast v4, Lorg/mozilla/javascript/Function;

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v13

    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v5, v6, :cond_c

    :cond_6
    move-object v12, v13

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x12

    if-eq v14, v6, :cond_7

    const/16 v6, 0x14

    if-ne v14, v6, :cond_8

    :cond_7
    const/16 v5, 0x14

    if-ne v14, v5, :cond_d

    move-wide/from16 v0, v16

    long-to-int v5, v0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    :cond_8
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    move-wide v10, v6

    :goto_3
    cmp-long v6, v10, v16

    if-gez v6, :cond_e

    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v6, v7, :cond_a

    const/16 v6, 0x16

    if-eq v14, v6, :cond_9

    const/16 v6, 0x17

    if-ne v14, v6, :cond_b

    :cond_9
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_a
    const/4 v7, 0x0

    aput-object v6, v15, v7

    const/4 v7, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v15, v7

    const/4 v7, 0x2

    aput-object p3, v15, v7

    move-object/from16 v0, p0

    invoke-interface {v4, v0, v13, v12, v15}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    packed-switch v14, :pswitch_data_0

    :cond_b
    move-wide v6, v8

    :goto_4
    const-wide/16 v8, 0x1

    add-long/2addr v8, v10

    move-wide v10, v8

    move-wide v8, v6

    goto :goto_3

    :cond_c
    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    move-object v12, v5

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    goto :goto_2

    :pswitch_0
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v6

    :pswitch_1
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    const/16 v18, 0x0

    aget-object v15, v15, v18

    move-object/from16 v0, p0

    invoke-static {v0, v5, v8, v9, v15}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    move-wide v6, v8

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v5, v10, v11, v7}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v6, v8

    goto :goto_4

    :pswitch_4
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_5
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_5

    :pswitch_6
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    long-to-double v4, v10

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    goto :goto_5

    :cond_e
    packed-switch v14, :pswitch_data_1

    :pswitch_7
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_5

    :pswitch_8
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_9
    move-object v6, v5

    goto :goto_5

    :pswitch_a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_b
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    array-length v0, p2

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v1, p2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v2

    long-to-double v4, v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_4

    const-string v0, "msg.arraylength.bad"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangeError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_4
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    goto :goto_0
.end method

.method private static js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 15

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_4

    instance-of v2, v4, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_4

    move-object/from16 v2, p2

    check-cast v2, Lorg/mozilla/javascript/NativeArray;

    move-object v3, v4

    check-cast v3, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    iget-wide v8, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v6, v8

    const/4 v5, 0x0

    move v14, v5

    move v5, v7

    move v7, v6

    move v6, v14

    :goto_0
    move-object/from16 v0, p3

    array-length v8, v0

    if-ge v6, v8, :cond_1

    if-eqz v5, :cond_1

    aget-object v8, p3, v6

    instance-of v8, v8, Lorg/mozilla/javascript/NativeArray;

    if-eqz v8, :cond_0

    aget-object v5, p3, v6

    check-cast v5, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v8, v5, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    int-to-long v10, v7

    iget-wide v12, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    add-long/2addr v10, v12

    long-to-int v7, v10

    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v8

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v8, v5

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_4

    invoke-direct {v3, v7}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v12, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v11, v12

    invoke-static {v6, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v8, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v6, v8

    const/4 v2, 0x0

    move v8, v6

    move v6, v2

    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v6, v2, :cond_3

    if-eqz v5, :cond_3

    aget-object v2, p3, v6

    instance-of v2, v2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_2

    aget-object v2, p3, v6

    check-cast v2, Lorg/mozilla/javascript/NativeArray;

    iget-object v9, v2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v12, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v12, v12

    invoke-static {v9, v10, v11, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v10, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v10

    add-int/2addr v8, v2

    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    :cond_2
    iget-object v9, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    add-int/lit8 v2, v8, 0x1

    aget-object v10, p3, v6

    aput-object v10, v9, v8

    move v8, v2

    goto :goto_3

    :cond_3
    int-to-long v6, v7

    iput-wide v6, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    :goto_4
    return-object v4

    :cond_4
    const-wide/16 v6, 0x0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    :goto_5
    cmp-long v5, v2, v6

    if-gez v5, :cond_7

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v8, :cond_5

    invoke-static {p0, v4, v2, v3, v5}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_5
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_5

    :cond_6
    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    move-object/from16 v0, p2

    invoke-static {p0, v4, v6, v7, v0}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_7
    const/4 v5, 0x0

    move-wide v6, v2

    move v3, v5

    :goto_6
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v3, v2, :cond_b

    aget-object v2, p3, v3

    invoke-static {v2}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    aget-object v2, p3, v3

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    :goto_7
    cmp-long v5, v8, v10

    if-gez v5, :cond_a

    invoke-static {v2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v12, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v12, :cond_8

    invoke-static {p0, v4, v6, v7, v5}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_8
    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    goto :goto_7

    :cond_9
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aget-object v2, p3, v3

    invoke-static {p0, v4, v6, v7, v2}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v6, v8

    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_b
    invoke-static {p0, v4, v6, v7}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    goto :goto_4
.end method

.method private static js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v2, 0x0

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v1, v0

    :goto_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v6

    array-length v0, p2

    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v4, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeArray;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    long-to-int v2, v2

    move v3, v2

    :goto_1
    int-to-long v8, v3

    cmp-long v2, v8, v6

    if-gez v2, :cond_5

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v2, v2, v3

    sget-object v5, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v5, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    sget-object v5, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v5, :cond_4

    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-long v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    double-to-long v4, v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_9

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_9

    :goto_3
    sub-long v4, v6, v8

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2

    :cond_6
    add-long/2addr v2, v8

    :cond_7
    cmp-long v0, v2, v6

    if-gez v0, :cond_8

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v4, :cond_6

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_8
    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2

    :cond_9
    move-wide v2, v4

    goto :goto_3
.end method

.method private static js_isArray(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Array"

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    long-to-int v4, v0

    int-to-long v6, v4

    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    const-string v2, "msg.arraylength.too.big"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    aget-object v0, p2, v2

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    :cond_1
    const-string v0, ","

    move-object v1, v0

    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v3, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v2, v4, :cond_5

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v5, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eqz v5, :cond_3

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    sget-object v6, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v0, p2, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_6
    if-nez v4, :cond_7

    const-string v0, ""

    goto :goto_2

    :cond_7
    new-array v5, v4, [Ljava/lang/String;

    move v3, v2

    move v0, v2

    :goto_3
    if-eq v3, v4, :cond_9

    int-to-long v6, v3

    invoke-static {p0, p1, v6, v7}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v6, v7, :cond_8

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    aput-object v6, v5, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    :goto_4
    if-eq v0, v4, :cond_c

    if-eqz v0, :cond_a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    aget-object v2, v5, v0

    if-eqz v2, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v1, v0

    :goto_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    sub-long v2, v4, v8

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v4, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeArray;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    long-to-int v2, v2

    move v3, v2

    :goto_1
    if-ltz v3, :cond_7

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v2, v2, v3

    sget-object v5, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v5, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    sget-object v5, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v5, :cond_6

    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-long v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    double-to-long v2, v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    sub-long v2, v4, v8

    :cond_4
    :goto_3
    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2

    :cond_5
    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    add-long/2addr v2, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2

    :cond_8
    sub-long/2addr v2, v8

    :cond_9
    cmp-long v0, v2, v6

    if-ltz v0, :cond_a

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v4, :cond_8

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_2
.end method

.method private static js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    sub-long/2addr v2, v6

    iput-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget-object v1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v2

    aget-object v2, v1, v2

    iget-object v1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v4, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v0, v4

    sget-object v3, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    aput-object v3, v1, v0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    sub-long/2addr v0, v6

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    :goto_1
    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1
.end method

.method private static js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v2, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v4, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v3, v4

    aget-object v4, p2, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v2

    :goto_2
    array-length v0, p2

    if-ge v1, v0, :cond_3

    int-to-long v4, v1

    add-long/2addr v4, v2

    aget-object v0, p2, v1

    invoke-static {p0, p1, v4, v5, v0}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    array-length v0, p2

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_4

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    goto :goto_1
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 12

    const-wide/16 v10, 0x1

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-wide v4, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object v5, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    iget-object v4, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object v3, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v2

    const-wide/16 v0, 0x2

    div-long v4, v2, v0

    const-wide/16 v0, 0x0

    :goto_1
    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long v6, v2, v0

    sub-long/2addr v6, v10

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p1, v6, v7}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, p1, v0, v1, v9}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    invoke-static {p0, p1, v6, v7, v8}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v0, v10

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private static js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    sub-long/2addr v2, v6

    iput-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget-object v1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v1, v8

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v6, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v5, v6

    invoke-static {v2, v3, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v4, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v0, v4

    sget-object v3, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    aput-object v3, v2, v0

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    sub-long/2addr v0, v6

    invoke-static {p0, p1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v2

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    move-wide v4, v6

    :goto_1
    cmp-long v3, v4, v0

    if-gtz v3, :cond_2

    invoke-static {p1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v3

    sub-long v8, v4, v6

    invoke-static {p0, p1, v8, v9, v3}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-long/2addr v4, v6

    goto :goto_1

    :cond_2
    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    :goto_2
    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_2
.end method

.method private js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v8

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v0

    array-length v2, p3

    if-nez v2, :cond_2

    move-wide v2, v4

    :cond_0
    :goto_0
    move-wide v6, v2

    :goto_1
    cmp-long v9, v6, v0

    if-gez v9, :cond_3

    invoke-static {p2, v6, v7}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v9, v10, :cond_1

    sub-long v10, v6, v2

    invoke-static {p1, v8, v10, v11, v9}, Lorg/mozilla/javascript/NativeArray;->defineElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_1
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    goto :goto_1

    :cond_2
    aget-object v2, p3, v3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v2

    array-length v6, p3

    if-eq v6, v9, :cond_0

    aget-object v6, p3, v9

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v6, v7, :cond_0

    aget-object v6, p3, v9

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p1, v8, v0, v1}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    return-object v8
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 10

    const/4 v6, 0x0

    array-length v0, p3

    if-lez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p3, v6

    if-eq v0, v1, :cond_0

    aget-object v0, p3, v6

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v0, Lorg/mozilla/javascript/NativeArray$1;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray$1;-><init>([Ljava/lang/Object;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v2

    long-to-int v4, v2

    int-to-long v8, v4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    const-string v0, "msg.arraylength.too.big"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/NativeArray$2;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArray$2;-><init>()V

    goto :goto_0

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    move v1, v6

    :goto_1
    if-eq v1, v4, :cond_2

    int-to-long v8, v1

    invoke-static {p2, v8, v9}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v0, v6

    :goto_2
    if-ge v0, v4, :cond_3

    int-to-long v6, v0

    aget-object v1, v2, v0

    invoke-static {p0, p2, v6, v7, v1}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method private static js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    instance-of v6, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v6, :cond_0

    move-object/from16 v4, p2

    check-cast v4, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v5, v4, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    move/from16 v22, v5

    move-object v5, v4

    move/from16 v4, v22

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    move-object/from16 v0, p3

    array-length v6, v0

    if-nez v6, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v16

    const/4 v7, 0x0

    aget-object v7, p3, v7

    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v8

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v12

    add-int/lit8 v8, v6, -0x1

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    sub-long v6, v16, v12

    move-wide v14, v6

    move v7, v8

    :goto_1
    add-long v8, v12, v14

    const-wide/16 v18, 0x0

    cmp-long v6, v14, v18

    if-eqz v6, :cond_b

    const-wide/16 v18, 0x1

    cmp-long v6, v14, v18

    if-nez v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v6

    const/16 v11, 0x78

    if-ne v6, v11, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v13}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    :goto_2
    int-to-long v10, v7

    sub-long/2addr v10, v14

    if-eqz v4, :cond_d

    add-long v14, v16, v10

    const-wide/32 v18, 0x7fffffff

    cmp-long v4, v14, v18

    if-gez v4, :cond_d

    add-long v14, v16, v10

    long-to-int v4, v14

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v14, v8

    iget-object v15, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    int-to-long v0, v7

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    sub-long v8, v16, v8

    long-to-int v8, v8

    move/from16 v0, v18

    invoke-static {v4, v14, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v7, :cond_2

    const/4 v4, 0x2

    iget-object v8, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v9, v12

    move-object/from16 v0, p3

    invoke-static {v0, v4, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v4, v10, v8

    if-gez v4, :cond_3

    iget-object v4, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    add-long v8, v16, v10

    long-to-int v7, v8

    move-wide/from16 v0, v16

    long-to-int v8, v0

    sget-object v9, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v4, v7, v8, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_3
    add-long v8, v16, v10

    iput-wide v8, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    move-object v4, v6

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x1

    aget-object v6, p3, v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmpg-double v9, v6, v14

    if-gez v9, :cond_5

    const-wide/16 v6, 0x0

    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-wide v14, v6

    move v7, v8

    goto/16 :goto_1

    :cond_5
    sub-long v14, v16, v12

    long-to-double v14, v14

    cmpl-double v9, v6, v14

    if-lez v9, :cond_6

    sub-long v6, v16, v12

    goto :goto_3

    :cond_6
    double-to-long v6, v6

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    sub-long v18, v8, v12

    move-wide/from16 v0, v18

    long-to-int v6, v0

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v0, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 v18, v0

    long-to-int v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v11, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto/16 :goto_2

    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    move-wide v10, v12

    :goto_4
    cmp-long v18, v10, v8

    if-eqz v18, :cond_a

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_9

    sub-long v20, v10, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v18

    invoke-static {v0, v6, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_9
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    goto :goto_4

    :cond_a
    sub-long v10, v8, v12

    move-object/from16 v0, p0

    invoke-static {v0, v6, v10, v11}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v6

    const/16 v11, 0x78

    if-ne v6, v11, :cond_c

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto/16 :goto_2

    :cond_d
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_e

    const-wide/16 v4, 0x1

    sub-long v4, v16, v4

    :goto_5
    cmp-long v14, v4, v8

    if-ltz v14, :cond_10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v14

    add-long v18, v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3, v14}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v14, 0x1

    sub-long/2addr v4, v14

    goto :goto_5

    :cond_e
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gez v4, :cond_10

    move-wide v4, v8

    :goto_6
    cmp-long v8, v4, v16

    if-gez v8, :cond_f

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    add-long v14, v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v15, v8}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_6

    :cond_f
    add-long v4, v16, v10

    :goto_7
    cmp-long v8, v4, v16

    if-gez v8, :cond_10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_7

    :cond_10
    move-object/from16 v0, p3

    array-length v4, v0

    sub-int v5, v4, v7

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v7, :cond_11

    int-to-long v8, v4

    add-long/2addr v8, v12

    add-int v14, v4, v5

    aget-object v14, p3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8, v9, v14}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    add-long v4, v16, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-object v4, v6

    goto/16 :goto_0
.end method

.method private static js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    iget-boolean v1, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v4, p2

    iget-wide v6, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v3, p2, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    array-length v1, p2

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v2

    array-length v4, p2

    array-length v0, p2

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_2

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    int-to-long v6, v4

    add-long/2addr v6, v0

    invoke-static {p0, p1, v6, v7, v5}, Lorg/mozilla/javascript/NativeArray;->setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_3

    int-to-long v4, v0

    aget-object v1, p2, v0

    invoke-static {p0, p1, v4, v5, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    array-length v0, p2

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p3

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v10

    move-object/from16 v0, p4

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, p4, v2

    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/mozilla/javascript/Function;

    if-nez v3, :cond_2

    :cond_0
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    check-cast v2, Lorg/mozilla/javascript/Function;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v12

    const/16 v3, 0x18

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    const/4 v4, 0x1

    aget-object v4, p4, v4

    :goto_2
    const-wide/16 v6, 0x0

    move-object v8, v4

    :goto_3
    cmp-long v4, v6, v10

    if-gez v4, :cond_8

    if-eqz v3, :cond_5

    move-wide v4, v6

    :goto_4
    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    sget-object v13, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v9, v13, :cond_6

    move-object v4, v8

    :goto_5
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object v8, v4

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    sub-long/2addr v4, v6

    goto :goto_4

    :cond_6
    sget-object v13, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v8, v13, :cond_7

    move-object v4, v9

    goto :goto_5

    :cond_7
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v8, 0x1

    aput-object v9, v13, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v13, v8

    const/4 v4, 0x3

    aput-object p3, v13, v4

    invoke-interface {v2, p0, v12, v12, v13}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_8
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v8, v2, :cond_9

    const-string v2, "msg.empty.array.reduce"

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v2

    throw v2

    :cond_9
    return-object v8
.end method

.method private static setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p2

    invoke-static {p1, v0, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setLength(Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v2

    long-to-double v6, v2

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_1

    const-string v0, "msg.arraylength.bad"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangeError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_4

    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    long-to-int v1, v2

    iget-object v4, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v4, v4

    sget-object v5, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0x55555554

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    long-to-double v4, v2

    iget-wide v6, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_4
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_8

    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1000

    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v4

    move v1, v0

    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_8

    aget-object v0, v4, v1

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-ltz v5, :cond_5

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->delete(Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v5, v6, v2

    if-ltz v5, :cond_5

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->delete(I)V

    goto :goto_2

    :cond_7
    move-wide v0, v2

    :goto_3
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_8

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_3

    :cond_8
    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto/16 :goto_0
.end method

.method private static setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 2

    long-to-double v0, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const-string v1, "length"

    invoke-static {p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static setMaximumInitialCapacity(I)V
    .locals 0

    sput p0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method private static setRawElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-ne p4, v0, :cond_0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private static toArrayIndex(D)J
    .locals 4

    cmpl-double v0, p0, p0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v0

    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-nez v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static toArrayIndex(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static toArrayIndex(Ljava/lang/String;)J
    .locals 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static toDenseIndex(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p0}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static toSliceIndex(DJ)J
    .locals 4

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_2

    long-to-double v0, p2

    add-double/2addr v0, p0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 p2, 0x0

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    long-to-double v0, p2

    add-double/2addr v0, p0

    double-to-long p2, v0

    goto :goto_0

    :cond_2
    long-to-double v0, p2

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-long p2, p0

    goto :goto_0
.end method

.method private static toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;
    .locals 12

    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v10

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_3

    const/16 v0, 0x5b

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", "

    move-object v1, v0

    :goto_0
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    if-nez v0, :cond_4

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v6, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v7, 0x1f

    invoke-direct {v6, v7}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v6, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    move v8, v5

    :goto_1
    if-nez v0, :cond_10

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v2, 0x96

    if-ge v0, v2, :cond_5

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    const-wide/16 v6, 0x0

    move v0, v4

    move-wide v4, v6

    :goto_3
    cmp-long v3, v4, v10

    if-gez v3, :cond_c

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p2, v4, v5}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_6

    :cond_2
    const/4 v0, 0x0

    :goto_4
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_3

    :cond_3
    const-string v0, ","

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v0

    move v8, v5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    if-eqz p3, :cond_7

    :try_start_1
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_4

    :cond_7
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_a

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_8

    const/16 v6, 0x22

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_9
    throw v0

    :cond_a
    if-eqz p4, :cond_b

    :try_start_2
    const-string v6, "toLocaleString"

    invoke-static {v0, v6, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p0, p1, v6, v7}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_b
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    goto :goto_4

    :cond_c
    move v2, v0

    move-wide v0, v4

    :goto_6
    if-eqz v8, :cond_d

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    :cond_d
    if-eqz p3, :cond_e

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const-string v0, ", ]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/16 v0, 0x5d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    move-wide v0, v2

    move v2, v4

    goto :goto_6
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/NativeArray;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    sget-object v3, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v0, p0, v2}, Lorg/mozilla/javascript/NativeArray;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/Object;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    return-void
.end method

.method public delete(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->isSealed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    aput-object v1, v0, p1

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(I)V

    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    move v6, v0

    move-object v3, p5

    move-object v0, p4

    :goto_1
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array.prototype has no method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    array-length v2, v3

    if-lez v2, :cond_5

    aget-object v0, v3, v1

    invoke-static {p2, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [Ljava/lang/Object;

    move v0, v1

    :goto_2
    array-length v7, v2

    if-ge v0, v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    aget-object v7, v3, v7

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v2

    move-object v2, v4

    :goto_3
    neg-int v3, v6

    move v6, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_1

    :pswitch_2
    array-length v0, v3

    if-lez v0, :cond_2

    aget-object v0, v3, v1

    invoke-static {v0}, Lorg/mozilla/javascript/NativeArray;->js_isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-nez v0, :cond_3

    :goto_4
    if-nez v5, :cond_4

    invoke-virtual {p1, p2, p3, v3}, Lorg/mozilla/javascript/IdFunctionObject;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_4

    :cond_4
    invoke-static {p2, p3, v3}, Lorg/mozilla/javascript/NativeArray;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    invoke-static {p2, p3, v0, v2, v1}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p2, p3, v0, v1, v5}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p2, p3, v0, v5, v1}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, p3, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p2, p3, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    invoke-static {p2, p3, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    invoke-direct {p0, p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_indexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    invoke-static {p2, v0, v3}, Lorg/mozilla/javascript/NativeArray;->js_lastIndexOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    invoke-static {p2, p1, p3, v0, v3}, Lorg/mozilla/javascript/NativeArray;->iterativeMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    invoke-static {p2, v6, p3, v0, v3}, Lorg/mozilla/javascript/NativeArray;->reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_15
    new-instance v1, Lorg/mozilla/javascript/NativeArrayIterator;

    invoke-direct {v1, p3, v0}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x1

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "join"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v9, -0x6

    const-string v10, "reverse"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x7

    const-string v4, "sort"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x8

    const-string v4, "push"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0x9

    const-string v10, "pop"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xa

    const-string v10, "shift"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xb

    const-string v4, "unshift"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xc

    const-string v10, "splice"

    move-object v6, p0

    move-object v7, p1

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xd

    const-string v4, "concat"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xe

    const-string v10, "slice"

    move-object v6, p0

    move-object v7, p1

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xf

    const-string v4, "indexOf"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x10

    const-string v4, "lastIndexOf"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x11

    const-string v4, "every"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x12

    const-string v4, "filter"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x13

    const-string v4, "forEach"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x14

    const-string v4, "map"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x15

    const-string v4, "some"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x16

    const-string v4, "find"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x17

    const-string v4, "findIndex"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x18

    const-string v4, "reduce"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x19

    const-string v4, "reduceRight"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x1a

    const-string v4, "isArray"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 2

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->instanceIdInfo(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x3

    const/16 v6, 0x70

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, p1, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :cond_1
    if-ne v4, v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    move-object v2, v1

    move v1, v0

    goto :goto_0

    :pswitch_4
    const-string v1, "join"

    const/4 v2, 0x5

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_5
    const-string v1, "some"

    const/16 v2, 0x15

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_6
    const-string v1, "find"

    const/16 v2, 0x16

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_7
    const-string v1, "sort"

    const/4 v2, 0x7

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_8
    const-string v1, "push"

    const/16 v2, 0x8

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_2

    const-string v1, "shift"

    const/16 v2, 0xa

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :cond_2
    const/16 v3, 0x6c

    if-ne v2, v3, :cond_3

    const-string v1, "slice"

    const/16 v2, 0xe

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x76

    if-ne v2, v3, :cond_0

    const-string v1, "every"

    const/16 v2, 0x11

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "concat"

    const/16 v2, 0xd

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "filter"

    const/16 v2, 0x12

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "reduce"

    const/16 v2, 0x18

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "splice"

    const/16 v2, 0xc

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "forEach"

    const/16 v2, 0x13

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "indexOf"

    const/16 v2, 0xf

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "reverse"

    const/4 v2, 0x6

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "unshift"

    const/16 v2, 0xb

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_4

    const-string v1, "toSource"

    const/4 v2, 0x4

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x74

    if-ne v3, v4, :cond_0

    const-string v1, "toString"

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_d
    const-string v1, "findIndex"

    const/16 v2, 0x17

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_e
    const-string v1, "@@iterator"

    const/16 v2, 0x1a

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x63

    if-ne v2, v4, :cond_5

    const-string v1, "constructor"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x6c

    if-ne v2, v3, :cond_6

    const-string v1, "lastIndexOf"

    const/16 v2, 0x10

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    const-string v1, "reduceRight"

    const/16 v2, 0x19

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_10
    const-string v1, "toLocaleString"

    move-object v2, v1

    move v1, v4

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x69
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x66 -> :sswitch_1
        0x72 -> :sswitch_2
        0x73 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x66 -> :sswitch_4
        0x69 -> :sswitch_5
        0x72 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/NativeArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    instance-of v1, v0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllIds()[Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getAttributes(I)I

    move-result v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Array"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 10

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    iget-wide v6, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v8, v0

    cmp-long v1, v8, v6

    if-lez v1, :cond_5

    long-to-int v0, v6

    move v5, v0

    :goto_1
    if-nez v5, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    array-length v6, v3

    add-int v0, v5, v6

    new-array v2, v0, [Ljava/lang/Object;

    move v1, v4

    move v0, v4

    :goto_2
    if-eq v1, v5, :cond_3

    iget-object v7, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v7, v7, v1

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v7, v8, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eq v0, v5, :cond_4

    add-int v1, v0, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-static {v3, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_3

    :cond_5
    move v5, v0

    goto :goto_1
.end method

.method public getIndexIds()[Ljava/lang/Integer;
    .locals 8

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    int-to-double v6, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "length"

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-wide v0
.end method

.method protected getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/mozilla/javascript/NativeArray;->toDenseIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeArray;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v1, p1

    sget-object v2, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    long-to-int v1, v2

    if-nez p1, :cond_3

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected initPrototypeId(I)V
    .locals 6

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v3, "constructor"

    :goto_0
    sget-object v1, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_1
    const-string v3, "toString"

    move v5, v0

    goto :goto_0

    :pswitch_2
    const-string v3, "toLocaleString"

    move v5, v0

    goto :goto_0

    :pswitch_3
    const-string v3, "toSource"

    move v5, v0

    goto :goto_0

    :pswitch_4
    const-string v3, "join"

    goto :goto_0

    :pswitch_5
    const-string v3, "reverse"

    move v5, v0

    goto :goto_0

    :pswitch_6
    const-string v3, "sort"

    goto :goto_0

    :pswitch_7
    const-string v3, "push"

    goto :goto_0

    :pswitch_8
    const-string v3, "pop"

    move v5, v0

    goto :goto_0

    :pswitch_9
    const-string v3, "shift"

    move v5, v0

    goto :goto_0

    :pswitch_a
    const-string v3, "unshift"

    goto :goto_0

    :pswitch_b
    const-string v3, "splice"

    move v5, v1

    goto :goto_0

    :pswitch_c
    const-string v3, "concat"

    goto :goto_0

    :pswitch_d
    const-string v3, "slice"

    move v5, v1

    goto :goto_0

    :pswitch_e
    const-string v3, "indexOf"

    goto :goto_0

    :pswitch_f
    const-string v3, "lastIndexOf"

    goto :goto_0

    :pswitch_10
    const-string v3, "every"

    goto :goto_0

    :pswitch_11
    const-string v3, "filter"

    goto :goto_0

    :pswitch_12
    const-string v3, "forEach"

    goto :goto_0

    :pswitch_13
    const-string v3, "map"

    goto :goto_0

    :pswitch_14
    const-string v3, "some"

    goto :goto_0

    :pswitch_15
    const-string v3, "find"

    goto :goto_0

    :pswitch_16
    const-string v3, "findIndex"

    goto :goto_0

    :pswitch_17
    const-string v3, "reduce"

    goto :goto_0

    :pswitch_18
    const-string v3, "reduceRight"

    goto :goto_0

    :pswitch_19
    const-string v3, "@@iterator"

    const-string v4, "[Symbol.iterator]"

    move v5, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public jsGet_length()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    long-to-int v0, v0

    if-nez p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    long-to-int v0, v0

    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lorg/mozilla/javascript/NativeArray$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/mozilla/javascript/NativeArray$3;-><init>(Lorg/mozilla/javascript/NativeArray;II)V

    return-object v1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 8

    const-wide/16 v6, 0x1

    if-ne p2, p0, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->isSealed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->isExtensible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, v0, p1

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_4

    int-to-double v0, p1

    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, v0, p1

    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_1

    iget v0, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    if-ne p2, p0, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setDenseOnly(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    return-void
.end method

.method protected setInstanceIdAttributes(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lorg/mozilla/javascript/NativeArray;->lengthAttr:I

    :cond_0
    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->setLength(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    long-to-int v1, v0

    array-length v0, p1

    if-lt v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    :cond_2
    return-object p1
.end method
