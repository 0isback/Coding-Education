.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativePointer"
.end annotation


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2011
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 2012
    iput-wide p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;->value:J

    .line 2013
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2017
    const-string v0, "NativePointer"

    return-object v0
.end method
