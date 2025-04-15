.class public Lorg/mozilla/javascript/NativeSymbol;
.super Lorg/mozilla/javascript/IdScriptableObject;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "Symbol"

.field public static final ITERATOR_PROPERTY:Ljava/lang/String; = "@@iterator"

.field private static final Id_constructor:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x1

.field public static final SPECIES_PROPERTY:Ljava/lang/String; = "@@species"

.field public static final TO_STRING_TAG_PROPERTY:Ljava/lang/String; = "@@toStringTag"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeSymbol;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/javascript/NativeSymbol;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Symbol"

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

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeSymbol;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 3

    const/4 v2, 0x7

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    const-string v0, "iterator"

    const-string v1, "@@iterator"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "species"

    const-string v1, "@@species"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "toStringTag"

    const-string v1, "@@toStringTag"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    const-string v1, "constructor"

    const/4 v2, 0x1

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Symbol"

    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    const-string v0, "symbol"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeId(I)V

    :goto_0
    const-string v2, "Symbol"

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeSymbol;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_0
    const/4 v0, 0x0

    const-string v1, "constructor"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
