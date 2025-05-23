.class final Lorg/mozilla/javascript/NativeNumber;
.super Lorg/mozilla/javascript/IdScriptableObject;


# static fields
.field private static final ConstructorId_isFinite:I = -0x1

.field private static final ConstructorId_isInteger:I = -0x3

.field private static final ConstructorId_isNaN:I = -0x2

.field private static final ConstructorId_isSafeInteger:I = -0x4

.field private static final ConstructorId_parseFloat:I = -0x5

.field private static final ConstructorId_parseInt:I = -0x6

.field private static final Id_constructor:I = 0x1

.field private static final Id_toExponential:I = 0x7

.field private static final Id_toFixed:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toPrecision:I = 0x8

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PRECISION:I = 0x64

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field private static final MAX_SAFE_INTEGER:D

.field private static final MIN_SAFE_INTEGER:D

.field private static final NUMBER_TAG:Ljava/lang/Object;

.field static final serialVersionUID:J = 0x30a28b6f31d79da5L


# instance fields
.field private doubleValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Number"

    sput-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, 0x404a800000000000L    # 53.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    sput-wide v0, Lorg/mozilla/javascript/NativeNumber;->MAX_SAFE_INTEGER:D

    sget-wide v0, Lorg/mozilla/javascript/NativeNumber;->MAX_SAFE_INTEGER:D

    neg-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeNumber;->MIN_SAFE_INTEGER:D

    return-void
.end method

.method constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    return-void
.end method

.method private doubleVal(Ljava/lang/Number;)Ljava/lang/Double;
    .locals 2

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0
.end method

.method private execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v0, p2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p2, v2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    aget-object v0, p2, v2

    invoke-static {v0}, Lorg/mozilla/javascript/NativeNumber;->isFinite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    array-length v0, p2

    if-eqz v0, :cond_3

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p2, v2

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_5

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isNaN(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    array-length v0, p2

    if-eqz v0, :cond_6

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p2, v2

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_7
    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isInteger(Ljava/lang/Number;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    array-length v0, p2

    if-eqz v0, :cond_9

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v1, p2, v2

    if-ne v0, v1, :cond_a

    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_a
    aget-object v0, p2, v2

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isSafeInteger(Ljava/lang/Number;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p2}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeNumber;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private isDoubleInteger(Ljava/lang/Double;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDoubleNan(Ljava/lang/Double;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    return v0
.end method

.method private isDoubleSafeInteger(Ljava/lang/Double;)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/javascript/NativeNumber;->MAX_SAFE_INTEGER:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/javascript/NativeNumber;->MIN_SAFE_INTEGER:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInteger(Ljava/lang/Number;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->doubleVal(Ljava/lang/Number;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleInteger(Ljava/lang/Double;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNaN(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->doubleVal(Ljava/lang/Number;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleNan(Ljava/lang/Double;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isSafeInteger(Ljava/lang/Number;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeNumber;->doubleVal(Ljava/lang/Number;)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeNumber;->isDoubleSafeInteger(Ljava/lang/Double;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    array-length v1, p2

    if-nez v1, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v0, p6

    invoke-static {v1, p3, v0, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuilder;IID)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    int-to-double v4, p5

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    :cond_1
    const-string v1, "msg.bad.precision"

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangeError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    move p3, p4

    goto :goto_0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_3

    array-length v0, p5

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    move-wide v2, v0

    :goto_1
    if-nez p4, :cond_2

    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ge v2, v0, :cond_4

    invoke-direct {p0, v2, p5}, Lorg/mozilla/javascript/NativeNumber;->execConstructorCall(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p4, Lorg/mozilla/javascript/NativeNumber;

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_5
    check-cast p4, Lorg/mozilla/javascript/NativeNumber;

    iget-wide v0, p4, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v2, p5

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    aget-object v2, p5, v2

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v3, :cond_7

    :cond_6
    const/16 v2, 0xa

    :goto_2
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    aget-object v2, p5, v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(new Number("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, -0x14

    const/4 v6, 0x0

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "NaN"

    goto/16 :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_9

    const-string v0, "Infinity"

    goto/16 :goto_0

    :cond_9
    const-string v0, "-Infinity"

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    array-length v2, p5

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, p5, v2

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v3, :cond_c

    :cond_b
    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "NaN"

    goto/16 :goto_0

    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_f

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_e

    const-string v0, "Infinity"

    goto/16 :goto_0

    :cond_e
    const-string v0, "-Infinity"

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x7

    const-string v0, "NaN"

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "POSITIVE_INFINITY"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "NEGATIVE_INFINITY"

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "MAX_VALUE"

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "MIN_VALUE"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "MAX_SAFE_INTEGER"

    sget-wide v2, Lorg/mozilla/javascript/NativeNumber;->MAX_SAFE_INTEGER:D

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "MIN_SAFE_INTEGER"

    sget-wide v2, Lorg/mozilla/javascript/NativeNumber;->MIN_SAFE_INTEGER:D

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "isFinite"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x2

    const-string v4, "isNaN"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "isInteger"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x4

    const-string v4, "isSafeInteger"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "parseFloat"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    const/4 v3, -0x6

    const-string v4, "parseInt"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeNumber;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x3

    const/16 v4, 0x74

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, p1, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v1, "toFixed"

    const/4 v2, 0x6

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_1
    const/16 v3, 0x76

    if-ne v2, v3, :cond_0

    const-string v1, "valueOf"

    const/4 v2, 0x5

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_2

    const-string v1, "toSource"

    const/4 v2, 0x4

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_0

    const-string v1, "toString"

    const/4 v2, 0x2

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    const-string v1, "constructor"

    const/4 v2, 0x1

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_0

    const-string v1, "toPrecision"

    const/16 v2, 0x8

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :pswitch_4
    const-string v1, "toExponential"

    const/4 v2, 0x7

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :pswitch_5
    const-string v1, "toLocaleString"

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Number"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "constructor"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeNumber;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_1
    const-string v1, "toString"

    goto :goto_0

    :pswitch_2
    const-string v1, "toLocaleString"

    goto :goto_0

    :pswitch_3
    const-string v0, "toSource"

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :pswitch_4
    const-string v0, "valueOf"

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :pswitch_5
    const-string v1, "toFixed"

    goto :goto_0

    :pswitch_6
    const-string v1, "toExponential"

    goto :goto_0

    :pswitch_7
    const-string v1, "toPrecision"

    goto :goto_0

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
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
