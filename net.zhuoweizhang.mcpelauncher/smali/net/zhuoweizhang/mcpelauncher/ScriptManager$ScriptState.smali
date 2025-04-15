.class public Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;
.super Ljava/lang/Object;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptState"
.end annotation


# instance fields
.field public errors:I

.field public name:Ljava/lang/String;

.field public scope:Lorg/mozilla/javascript/Scriptable;

.field public script:Lorg/mozilla/javascript/Script;


# direct methods
.method protected constructor <init>(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Lorg/mozilla/javascript/Script;
    .param p2, "scope"    # Lorg/mozilla/javascript/Scriptable;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    const/4 v0, 0x0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->errors:I

    .line 1813
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->script:Lorg/mozilla/javascript/Script;

    .line 1814
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 1815
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->name:Ljava/lang/String;

    .line 1816
    return-void
.end method
