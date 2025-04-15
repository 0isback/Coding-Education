.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;
.super Ljava/lang/Object;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectLevelRequest"
.end annotation


# instance fields
.field public dir:Ljava/lang/String;

.field public gameMode:I

.field public name:Ljava/lang/String;

.field public seed:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3768
    const/4 v0, 0x0

    iput v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;->gameMode:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;

    .prologue
    .line 3765
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;-><init>()V

    return-void
.end method
