.class final Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setLevelFakeCallback(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 328
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->reregisterRecipes()V

    .line 329
    return-void
.end method
