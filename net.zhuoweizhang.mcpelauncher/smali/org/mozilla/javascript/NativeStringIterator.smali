.class public final Lorg/mozilla/javascript/NativeStringIterator;
.super Lorg/mozilla/javascript/ES6Iterator;


# static fields
.field private static final ITERATOR_TAG:Ljava/lang/String; = "StringIterator"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private index:I

.field private string:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/NativeStringIterator;->index:I

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeStringIterator;->string:Ljava/lang/String;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeStringIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeStringIterator;-><init>()V

    const-string v1, "StringIterator"

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "String Iterator"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StringIterator"

    return-object v0
.end method

.method protected isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/NativeStringIterator;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/NativeStringIterator;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeStringIterator;->string:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/NativeStringIterator;->index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeStringIterator;->string:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/NativeStringIterator;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lorg/mozilla/javascript/NativeStringIterator;->index:I

    return-object v1
.end method
