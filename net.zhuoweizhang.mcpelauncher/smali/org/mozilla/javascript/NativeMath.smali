.class final Lorg/mozilla/javascript/NativeMath;
.super Lorg/mozilla/javascript/IdScriptableObject;


# static fields
.field private static final Id_E:I = 0x1e

.field private static final Id_LN10:I = 0x20

.field private static final Id_LN2:I = 0x21

.field private static final Id_LOG10E:I = 0x23

.field private static final Id_LOG2E:I = 0x22

.field private static final Id_PI:I = 0x1f

.field private static final Id_SQRT1_2:I = 0x24

.field private static final Id_SQRT2:I = 0x25

.field private static final Id_abs:I = 0x2

.field private static final Id_acos:I = 0x3

.field private static final Id_asin:I = 0x4

.field private static final Id_atan:I = 0x5

.field private static final Id_atan2:I = 0x6

.field private static final Id_cbrt:I = 0x14

.field private static final Id_ceil:I = 0x7

.field private static final Id_cos:I = 0x8

.field private static final Id_cosh:I = 0x15

.field private static final Id_exp:I = 0x9

.field private static final Id_expm1:I = 0x16

.field private static final Id_floor:I = 0xa

.field private static final Id_hypot:I = 0x17

.field private static final Id_imul:I = 0x1c

.field private static final Id_log:I = 0xb

.field private static final Id_log10:I = 0x19

.field private static final Id_log1p:I = 0x18

.field private static final Id_max:I = 0xc

.field private static final Id_min:I = 0xd

.field private static final Id_pow:I = 0xe

.field private static final Id_random:I = 0xf

.field private static final Id_round:I = 0x10

.field private static final Id_sin:I = 0x11

.field private static final Id_sinh:I = 0x1a

.field private static final Id_sqrt:I = 0x12

.field private static final Id_tan:I = 0x13

.field private static final Id_tanh:I = 0x1b

.field private static final Id_toSource:I = 0x1

.field private static final Id_trunc:I = 0x1d

.field private static final LAST_METHOD_ID:I = 0x1d

.field private static final MATH_TAG:Ljava/lang/Object;

.field private static final MAX_ID:I = 0x25

.field static final serialVersionUID:J = -0x7aa9e4af6da33631L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Math"

    sput-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeMath;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMath;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeMath;->activatePrototypeMap(I)V

    invoke-static {p0}, Lorg/mozilla/javascript/NativeMath;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeMath;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeMath;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeMath;->sealObject()V

    :cond_0
    const-string v1, "Math"

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private js_hypot([Ljava/lang/Object;)D
    .locals 10

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    array-length v5, p1

    const/4 v4, 0x0

    move-wide v6, v0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v0, p1, v4

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    sget-wide v8, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_0

    cmpl-double v8, v0, v2

    if-eqz v8, :cond_2

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v8, v0, v8

    if-nez v8, :cond_3

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    mul-double/2addr v0, v0

    add-double/2addr v6, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private js_imul([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-wide v4, 0x100000000L

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/mozilla/javascript/typedarrays/Conversions;->toUint32(Ljava/lang/Object;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    rem-long/2addr v0, v4

    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    sub-long/2addr v0, v4

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private js_pow(DD)D
    .locals 5

    cmpl-double v0, p3, p3

    if-eqz v0, :cond_1

    move-wide v0, p3

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_4
    double-to-long v0, p3

    long-to-double v2, v0

    cmpl-double v2, v2, p3

    if-nez v2, :cond_6

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_5

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_7
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_8
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p3, v2

    if-nez v2, :cond_b

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, p1

    if-gez v2, :cond_a

    :cond_9
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_a
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v2, p1

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_b
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p3, v2

    if-nez v2, :cond_e

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_c

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, p1

    if-gez v2, :cond_d

    :cond_c
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_d
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v2, v2, p1

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    :cond_e
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p1, v2

    if-nez v2, :cond_10

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_f

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    :cond_f
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    double-to-long v0, p3

    long-to-double v2, v0

    cmpl-double v2, v2, p3

    if-nez v2, :cond_12

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_11

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto/16 :goto_0

    :cond_11
    const-wide/high16 v0, -0x8000000000000000L

    goto/16 :goto_0

    :cond_12
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_13

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    :cond_13
    const-wide/16 v0, 0x0

    goto/16 :goto_0
.end method

.method private js_trunc(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Math"

    goto :goto_0

    :pswitch_1
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-nez v4, :cond_2

    :goto_1
    move-wide v2, v0

    :cond_1
    :goto_2
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :cond_2
    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    neg-double v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :pswitch_2
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v4, v0, v0

    if-nez v4, :cond_1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v0

    if-gtz v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_1

    const/4 v2, 0x3

    if-ne v9, v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    :goto_3
    move-wide v2, v0

    goto :goto_2

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto :goto_3

    :pswitch_3
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    goto :goto_2

    :pswitch_4
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    goto :goto_2

    :pswitch_5
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    goto :goto_2

    :pswitch_6
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_2

    :pswitch_7
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v6, v0, v6

    if-eqz v6, :cond_5

    cmpl-double v4, v0, v4

    if-nez v4, :cond_6

    :cond_5
    move-wide v0, v2

    :goto_4
    move-wide v2, v0

    goto :goto_2

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_4

    :pswitch_8
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeMath;->js_hypot([Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_2

    :pswitch_a
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    cmpl-double v6, v2, v6

    if-nez v6, :cond_8

    move-wide v0, v2

    :cond_7
    :goto_5
    move-wide v2, v0

    goto/16 :goto_2

    :cond_8
    cmpl-double v4, v2, v4

    if-eqz v4, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto :goto_5

    :pswitch_b
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_c
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeMath;->js_imul([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v4

    cmpg-double v0, v4, v0

    if-ltz v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_f
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_10
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_11
    const/16 v0, 0xc

    if-ne v9, v0, :cond_9

    move-wide v0, v4

    :goto_6
    move-wide v2, v0

    move v0, v8

    :goto_7
    array-length v1, p5

    if-eq v0, v1, :cond_1

    aget-object v1, p5, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    cmpl-double v1, v4, v4

    if-eqz v1, :cond_a

    move-wide v2, v4

    goto/16 :goto_2

    :cond_9
    move-wide v0, v6

    goto :goto_6

    :cond_a
    const/16 v1, 0xc

    if-ne v9, v1, :cond_b

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_8

    :pswitch_12
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeMath;->js_pow(DD)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    cmpl-double v8, v2, v2

    if-nez v8, :cond_1

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_1

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_d

    long-to-double v0, v4

    :cond_c
    :goto_9
    move-wide v2, v0

    goto/16 :goto_2

    :cond_d
    cmpg-double v4, v2, v0

    if-gez v4, :cond_e

    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    goto :goto_9

    :cond_e
    cmpl-double v4, v2, v0

    if-nez v4, :cond_c

    move-wide v0, v2

    goto :goto_9

    :pswitch_15
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    cmpl-double v6, v0, v6

    if-eqz v6, :cond_1

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_16
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_17
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_18
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_19
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_1a
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/NativeMath;->js_trunc(D)D

    move-result-wide v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_f
        :pswitch_10
        :pswitch_16
        :pswitch_19
        :pswitch_d
        :pswitch_1a
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 8

    const/16 v6, 0x6f

    const/16 v5, 0x6e

    const/4 v1, 0x0

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x45

    if-ne v0, v3, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x49

    if-ne v0, v3, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x32

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4e

    if-ne v0, v3, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x73

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x73

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x70

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x67

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x78

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "LN10"

    const/16 v2, 0x20

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "tanh"

    const/16 v2, 0x1b

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "cbrt"

    const/16 v2, 0x14

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "acos"

    const/4 v2, 0x3

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "ceil"

    const/4 v2, 0x7

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "sinh"

    const/16 v2, 0x1a

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "imul"

    const/16 v2, 0x1c

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "cosh"

    const/16 v2, 0x15

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "sqrt"

    const/16 v2, 0x12

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "asin"

    const/4 v2, 0x4

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "atan"

    const/4 v2, 0x5

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_2

    move v0, v1

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "LOG2E"

    const/16 v2, 0x22

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "SQRT2"

    const/16 v2, 0x25

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "atan2"

    const/4 v2, 0x6

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "expm1"

    const/16 v2, 0x16

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "floor"

    const/16 v2, 0xa

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "hypot"

    const/16 v2, 0x17

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_1a
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    const-string v0, "log10"

    const/16 v2, 0x19

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x70

    if-ne v0, v3, :cond_0

    const-string v0, "log1p"

    const/16 v2, 0x18

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "round"

    const/16 v2, 0x10

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "trunc"

    const/16 v2, 0x1d

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_4

    const-string v0, "LOG10E"

    const/16 v2, 0x23

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const-string v0, "random"

    const/16 v2, 0xf

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "SQRT1_2"

    const/16 v2, 0x24

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "toSource"

    move-object v2, v0

    move v0, v3

    goto/16 :goto_0

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
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x61 -> :sswitch_1
        0x63 -> :sswitch_2
        0x65 -> :sswitch_3
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
        0x70 -> :sswitch_6
        0x73 -> :sswitch_7
        0x74 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4e -> :sswitch_9
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
        0x63 -> :sswitch_c
        0x65 -> :sswitch_d
        0x69 -> :sswitch_e
        0x6d -> :sswitch_f
        0x6f -> :sswitch_10
        0x71 -> :sswitch_11
        0x73 -> :sswitch_12
        0x74 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x4c -> :sswitch_14
        0x53 -> :sswitch_15
        0x61 -> :sswitch_16
        0x65 -> :sswitch_17
        0x66 -> :sswitch_18
        0x68 -> :sswitch_19
        0x6c -> :sswitch_1a
        0x72 -> :sswitch_1b
        0x74 -> :sswitch_1c
    .end sparse-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Math"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v3, 0x1d

    if-gt p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "toSource"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeMath;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    :goto_1
    return-void

    :pswitch_1
    const-string v0, "abs"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_2
    const-string v0, "acos"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    const-string v0, "asin"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_4
    const-string v0, "atan"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_5
    const-string v0, "atan2"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_6
    const-string v0, "cbrt"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_7
    const-string v0, "ceil"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_8
    const-string v0, "cos"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_9
    const-string v0, "cosh"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_a
    const-string v0, "exp"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_b
    const-string v0, "expm1"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_c
    const-string v0, "floor"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_d
    const-string v0, "hypot"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_e
    const-string v0, "imul"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_f
    const-string v0, "log"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_10
    const-string v0, "log1p"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_11
    const-string v0, "log10"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_12
    const-string v0, "max"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_13
    const-string v0, "min"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_14
    const-string v0, "pow"

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :pswitch_15
    const-string v1, "random"

    goto :goto_0

    :pswitch_16
    const-string v0, "round"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_17
    const-string v0, "sin"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "sinh"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "sqrt"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "tan"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "tanh"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "trunc"

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-string v2, "E"

    :goto_2
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/mozilla/javascript/NativeMath;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1e
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-string v2, "PI"

    goto :goto_2

    :pswitch_1f
    const-wide v0, 0x40026bb1bbb55516L    # 2.302585092994046

    const-string v2, "LN10"

    goto :goto_2

    :pswitch_20
    const-wide v0, 0x3fe62e42fefa39efL    # 0.6931471805599453

    const-string v2, "LN2"

    goto :goto_2

    :pswitch_21
    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    const-string v2, "LOG2E"

    goto :goto_2

    :pswitch_22
    const-wide v0, 0x3fdbcb7b1526e50eL    # 0.4342944819032518

    const-string v2, "LOG10E"

    goto :goto_2

    :pswitch_23
    const-wide v0, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    const-string v2, "SQRT1_2"

    goto :goto_2

    :pswitch_24
    const-wide v0, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-string v2, "SQRT2"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_1b
        :pswitch_e
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method
