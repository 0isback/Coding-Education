.class Leu/chainfire/libsuperuser/Shell$Command;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation


# static fields
.field private static commandCounter:I


# instance fields
.field private final code:I

.field private final commands:[Ljava/lang/String;

.field private final marker:Ljava/lang/String;

.field private final onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    sput v0, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/Shell$OnCommandResultListener;)V
    .locals 5
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "onCommandResultListener"    # Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    .line 339
    iput p2, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    .line 340
    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    .line 342
    return-void
.end method

.method static synthetic access$1000(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .prologue
    .line 329
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    return-object v0
.end method

.method static synthetic access$1100(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .prologue
    .line 329
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Leu/chainfire/libsuperuser/Shell$Command;)I
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .prologue
    .line 329
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    return v0
.end method

.method static synthetic access$900(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .prologue
    .line 329
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    return-object v0
.end method
