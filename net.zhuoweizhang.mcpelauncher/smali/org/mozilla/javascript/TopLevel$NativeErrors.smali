.class final enum Lorg/mozilla/javascript/TopLevel$NativeErrors;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/TopLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NativeErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/javascript/TopLevel$NativeErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

.field public static final enum URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "Error"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "EvalError"

    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "RangeError"

    invoke-direct {v0, v1, v5}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "ReferenceError"

    invoke-direct {v0, v1, v6}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "SyntaxError"

    invoke-direct {v0, v1, v7}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "TypeError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "URIError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "InternalError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    new-instance v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const-string v1, "JavaException"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/TopLevel$NativeErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/mozilla/javascript/TopLevel$NativeErrors;

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->Error:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->EvalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->ReferenceError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v1, v0, v6

    sget-object v1, Lorg/mozilla/javascript/TopLevel$NativeErrors;->SyntaxError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->TypeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->URIError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->InternalError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/mozilla/javascript/TopLevel$NativeErrors;->JavaException:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->$VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/TopLevel$NativeErrors;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/javascript/TopLevel$NativeErrors;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/TopLevel$NativeErrors;->$VALUES:[Lorg/mozilla/javascript/TopLevel$NativeErrors;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/TopLevel$NativeErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/TopLevel$NativeErrors;

    return-object v0
.end method
