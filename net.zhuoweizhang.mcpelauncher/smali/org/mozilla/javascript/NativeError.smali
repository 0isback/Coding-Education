.class final Lorg/mozilla/javascript/NativeError;
.super Lorg/mozilla/javascript/IdScriptableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeError$1;,
        Lorg/mozilla/javascript/NativeError$ProtoProps;
    }
.end annotation


# static fields
.field private static final ConstructorId_captureStackTrace:I = -0x1

.field public static final DEFAULT_STACK_LIMIT:I = -0x1

.field private static final ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

.field private static final ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

.field private static final ERROR_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final STACK_HIDE_KEY:Ljava/lang/String; = "_stackHide"

.field static final serialVersionUID:J = -0x4a15dade41b63183L


# instance fields
.field private stackProvider:Lorg/mozilla/javascript/RhinoException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Error"

    sput-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    :try_start_0
    const-class v0, Lorg/mozilla/javascript/NativeError;

    const-string v1, "getStackDelegated"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/mozilla/javascript/Scriptable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    const-class v0, Lorg/mozilla/javascript/NativeError;

    const-string v1, "setStackDelegated"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/mozilla/javascript/Scriptable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private callPrepareStack(Lorg/mozilla/javascript/Function;[Lorg/mozilla/javascript/ScriptStackElement;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    array-length v0, p2

    new-array v4, v0, [Ljava/lang/Object;

    move v1, v2

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_0

    const-string v0, "CallSite"

    invoke-virtual {v3, p0, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeCallSite;

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/NativeCallSite;->setElement(Lorg/mozilla/javascript/ScriptStackElement;)V

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p0, v4}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-interface {p1, v3, p1, p0, v1}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lorg/mozilla/javascript/NativeError;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeError;-><init>()V

    const-string v1, "name"

    const-string v2, "Error"

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "message"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "fileName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lineNumber"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/NativeError;->setAttributes(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/NativeError;->setAttributes(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeError;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/NativeCallSite;->init(Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method

.method private static js_captureStackTrace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    aget-object v0, p2, v5

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v1, 0x0

    array-length v2, p2

    if-le v2, v3, :cond_0

    aget-object v1, p2, v3

    invoke-static {p0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Function;

    :cond_0
    const-string v2, "Error"

    invoke-virtual {p0, p1, v2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/NativeError;

    new-instance v3, Lorg/mozilla/javascript/EvaluatorException;

    const-string v4, "[object Object]"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    if-eqz v1, :cond_1

    const-string v3, "name"

    invoke-interface {v1, v3, v1}, Lorg/mozilla/javascript/Function;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_stackHide"

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/javascript/NativeError;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "stack"

    sget-object v3, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    return-void
.end method

.method private static js_toSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;
    .locals 6

    const-string v0, "name"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "message"

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fileName"

    invoke-static {p2, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lineNumber"

    invoke-static {p2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_3

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v0, :cond_5

    const-string v0, ""

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_3

    :cond_2
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-ne v2, v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v0, :cond_3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "))"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    const-string v0, "name"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, "Error"

    :goto_0
    const-string v1, "message"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    return-object v1

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    move-object v1, v0

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method static make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "prototype"

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/IdFunctionObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Lorg/mozilla/javascript/NativeError;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeError;-><init>()V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeError;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/NativeError;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    array-length v0, p3

    if-lt v0, v5, :cond_1

    aget-object v2, p3, v4

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    const-string v2, "message"

    aget-object v3, p3, v4

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-lt v0, v6, :cond_1

    const-string v2, "fileName"

    aget-object v3, p3, v5

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    aget-object v0, p3, v6

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    const-string v2, "lineNumber"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

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

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p4}, Lorg/mozilla/javascript/NativeError;->js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/NativeError;->js_toSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeError;->js_captureStackTrace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v2, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "captureStackTrace"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeError;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    new-instance v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;-><init>(Lorg/mozilla/javascript/NativeError$1;)V

    const-string v0, "_ErrorPrototypeProps"

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/NativeError;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stackTraceLimit"

    sget-object v3, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_STACK_LIMIT:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_STACK_LIMIT:Ljava/lang/reflect/Method;

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    const-string v1, "prepareStackTrace"

    sget-object v3, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_PREPARE_STACK:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_PREPARE_STACK:Ljava/lang/reflect/Method;

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_0

    const-string v1, "toSource"

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_0
    const/16 v2, 0x74

    if-ne v3, v2, :cond_3

    const-string v1, "toString"

    const/4 v2, 0x2

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    if-ne v3, v2, :cond_3

    const-string v1, "constructor"

    const/4 v2, 0x1

    move-object v5, v1

    move v1, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Error"

    return-object v0
.end method

.method public getStackDelegated(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/NativeError;->NOT_FOUND:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeError;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    const-string v3, "_ErrorPrototypeProps"

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/NativeError;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError$ProtoProps;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getStackTraceLimit()I

    move-result v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getPrepareStackTrace()Lorg/mozilla/javascript/Function;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    :cond_1
    const-string v0, "_stackHide"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeError;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v3, v2, v0}, Lorg/mozilla/javascript/RhinoException;->getScriptStack(ILjava/lang/String;)[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v1}, Lorg/mozilla/javascript/RhinoException;->details()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/RhinoException;->formatStackTrace([Lorg/mozilla/javascript/ScriptStackElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/NativeError;->setStackDelegated(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/NativeError;->callPrepareStack(Lorg/mozilla/javascript/Function;[Lorg/mozilla/javascript/ScriptStackElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    const-string v1, "constructor"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeError;->ERROR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeError;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_1
    const-string v1, "toString"

    goto :goto_0

    :pswitch_2
    const-string v1, "toSource"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStackDelegated(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "stack"

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    const-string v0, "stack"

    invoke-interface {p1, v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public setStackProvider(Lorg/mozilla/javascript/RhinoException;)V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeError;->stackProvider:Lorg/mozilla/javascript/RhinoException;

    const-string v1, "stack"

    sget-object v3, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_GET_STACK:Ljava/lang/reflect/Method;

    sget-object v4, Lorg/mozilla/javascript/NativeError;->ERROR_DELEGATE_SET_STACK:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeError;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/NativeError;->js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
