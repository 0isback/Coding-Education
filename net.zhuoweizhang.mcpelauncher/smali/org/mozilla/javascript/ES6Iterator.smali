.class public abstract Lorg/mozilla/javascript/ES6Iterator;
.super Lorg/mozilla/javascript/IdScriptableObject;


# static fields
.field public static final DONE_PROPERTY:Ljava/lang/String; = "done"

.field private static final Id_iterator:I = 0x2

.field private static final Id_next:I = 0x1

.field private static final Id_toStringTag:I = 0x3

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field public static final NEXT_METHOD:Ljava/lang/String; = "next"

.field public static final VALUE_PROPERTY:Ljava/lang/String; = "value"


# instance fields
.field protected exhausted:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ES6Iterator;->exhausted:Z

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ES6Iterator;->exhausted:Z

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ES6Iterator;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ES6Iterator;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/IdScriptableObject;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ES6Iterator;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lorg/mozilla/javascript/IdScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0}, Lorg/mozilla/javascript/ES6Iterator;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/IdScriptableObject;->sealObject()V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private makeIteratorResult(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ZLjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 3

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1, p4}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "done"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ES6Iterator;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :goto_0
    :pswitch_0
    return-object p4

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    instance-of v1, p4, Lorg/mozilla/javascript/ES6Iterator;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/mozilla/javascript/ES6Iterator;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_1
    check-cast p4, Lorg/mozilla/javascript/ES6Iterator;

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual {p4, p2, p3}, Lorg/mozilla/javascript/ES6Iterator;->next(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "@@iterator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "@@toStringTag"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected initPrototypeId(I)V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ES6Iterator;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {p0, v0, p1, v1, v5}, Lorg/mozilla/javascript/ES6Iterator;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/ES6Iterator;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "@@iterator"

    const-string v4, "[Symbol.iterator]"

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ES6Iterator;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    goto :goto_0

    :pswitch_2
    const-string v0, "@@toStringTag"

    invoke-virtual {p0}, Lorg/mozilla/javascript/ES6Iterator;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, v2}, Lorg/mozilla/javascript/ES6Iterator;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
.end method

.method protected next(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ES6Iterator;->isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/mozilla/javascript/ES6Iterator;->exhausted:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ES6Iterator;->nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/ES6Iterator;->makeIteratorResult(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ZLjava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lorg/mozilla/javascript/ES6Iterator;->exhausted:Z

    goto :goto_1
.end method

.method protected abstract nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
.end method
