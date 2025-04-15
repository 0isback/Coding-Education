.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeServerApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeServerApi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3681
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 3682
    return-void
.end method

.method public static getAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3711
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$2000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllPlayerNames()[Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3731
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 3732
    .local v1, "players":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 3733
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerName(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3735
    :cond_0
    return-object v1
.end method

.method public static getAllPlayers()[J
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3722
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 3723
    .local v1, "players":[J
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 3724
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3726
    :cond_0
    return-object v1
.end method

.method public static getPort()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3716
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$2100()I

    move-result v0

    return v0
.end method

.method public static joinServer(Ljava/lang/String;I)V
    .locals 2
    .param p0, "serverAddress"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3686
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FIXME 0.11"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendChat(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3704
    sget-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    if-nez v0, :cond_0

    .line 3707
    :goto_0
    return-void

    .line 3706
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSendChat(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3740
    const-string v0, "Server"

    return-object v0
.end method
