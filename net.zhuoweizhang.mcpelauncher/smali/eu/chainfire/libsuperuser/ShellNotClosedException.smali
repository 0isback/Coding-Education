.class public Leu/chainfire/libsuperuser/ShellNotClosedException;
.super Ljava/lang/RuntimeException;
.source "ShellNotClosedException.java"


# static fields
.field public static final EXCEPTION_NOT_CLOSED:Ljava/lang/String; = "Application did not close() interactive shell"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Application did not close() interactive shell"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
