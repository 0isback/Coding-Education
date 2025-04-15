.class public Lnet/zhuoweizhang/mcpelauncher/BlockContextFactory;
.super Lorg/mozilla/javascript/ContextFactory;
.source "BlockContextFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeContext()Lorg/mozilla/javascript/Context;
    .locals 2

    .prologue
    .line 8
    invoke-super {p0}, Lorg/mozilla/javascript/ContextFactory;->makeContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 9
    .local v0, "cx":Lorg/mozilla/javascript/Context;
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getWrapFactory()Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setWrapFactory(Lorg/mozilla/javascript/WrapFactory;)V

    .line 10
    return-object v0
.end method
