.class Lorg/mozilla/javascript/Arguments$ThrowTypeError;
.super Lorg/mozilla/javascript/BaseFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Arguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowTypeError"
.end annotation


# instance fields
.field private propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;->propertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "msg.arguments.not.access.strict"

    iget-object v1, p0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;->propertyName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method
