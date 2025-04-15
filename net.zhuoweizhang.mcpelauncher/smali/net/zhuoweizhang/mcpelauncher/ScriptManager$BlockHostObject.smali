.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;
.super Lorg/mozilla/javascript/ImporterTopLevel;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockHostObject"
.end annotation


# instance fields
.field private playerEnt:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1824
    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    .line 1825
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;->playerEnt:J

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;

    .prologue
    .line 1824
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemInventory(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "amount"    # I
    .param p3, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1891
    invoke-static {p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeAddItemInventory(III)V

    .line 1892
    return-void
.end method

.method public bl_setMobSkin(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "entityId"    # Ljava/lang/Object;
    .param p2, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 2003
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setMobSkin(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method public bl_spawnMob(DDDILjava/lang/String;)J
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "typeId"    # I
    .param p8, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1994
    invoke-static {p8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1995
    const/4 p8, 0x0

    .line 1997
    :cond_0
    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    invoke-static {v2, v3, v4, p7, p8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 1998
    .local v0, "entityId":J
    return-wide v0
.end method

.method public clientMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1934
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$900(Ljava/lang/String;)V

    .line 1935
    return-void
.end method

.method public explode(DDDDZ)V
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "radius"    # D
    .param p9, "onfire"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1886
    double-to-float v0, p1

    double-to-float v1, p3

    double-to-float v2, p5

    double-to-float v3, p7

    invoke-static {v0, v1, v2, v3, p9}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeExplode(FFFFZ)V

    .line 1887
    return-void
.end method

.method public getCarriedItem()I
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1919
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetCarriedItem(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1829
    const-string v0, "BlockHostObject"

    return-object v0
.end method

.method public getLevel()Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1860
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetLevel()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;-><init>(J)V

    return-object v0
.end method

.method public getPitch(Ljava/lang/Object;)D
    .locals 4
    .param p1, "entObj"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1960
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;->getPlayerEnt()J

    move-result-wide v0

    .line 1965
    .end local p1    # "entObj":Ljava/lang/Object;
    .local v0, "ent":J
    :goto_0
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPitch(J)F

    move-result v2

    float-to-double v2, v2

    return-wide v2

    .line 1963
    .end local v0    # "ent":J
    .restart local p1    # "entObj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "entObj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "ent":J
    goto :goto_0
.end method

.method public getPlayerEnt()J
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1854
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerEnt()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;->playerEnt:J

    .line 1855
    iget-wide v0, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;->playerEnt:J

    return-wide v0
.end method

.method public getPlayerX()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1839
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getPlayerY()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1844
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getPlayerZ()D
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1849
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerLoc(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getTile(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1944
    invoke-static {p1, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetTile(III)I

    move-result v0

    return v0
.end method

.method public getYaw(Ljava/lang/Object;)D
    .locals 4
    .param p1, "entObj"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1971
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 1972
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;->getPlayerEnt()J

    move-result-wide v0

    .line 1976
    .end local p1    # "entObj":Ljava/lang/Object;
    .local v0, "ent":J
    :goto_0
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetYaw(J)F

    move-result v2

    float-to-double v2, v2

    return-wide v2

    .line 1974
    .end local v0    # "ent":J
    .restart local p1    # "entObj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "entObj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "ent":J
    goto :goto_0
.end method

.method public preventDefault()V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1924
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePreventDefault()V

    .line 1925
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1834
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$500(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method public rideAnimal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rider"    # Ljava/lang/Object;
    .param p2, "mount"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1896
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRideAnimal(JJ)V

    .line 1897
    return-void
.end method

.method public setNightMode(Z)V
    .locals 0
    .param p1, "isNight"    # Z
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1939
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetNightMode(Z)V

    .line 1940
    return-void
.end method

.method public setPosition(Ljava/lang/Object;DDD)V
    .locals 6
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "z"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1866
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    double-to-float v3, p4

    double-to-float v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetPosition(JFFF)V

    .line 1867
    return-void
.end method

.method public setPositionRelative(Ljava/lang/Object;DDD)V
    .locals 6
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "z"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1949
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    double-to-float v3, p4

    double-to-float v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetPositionRelative(JFFF)V

    .line 1950
    return-void
.end method

.method public setRot(Ljava/lang/Object;DD)V
    .locals 4
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "yaw"    # D
    .param p4, "pitch"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1954
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    double-to-float v3, p4

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetRot(JFF)V

    .line 1955
    return-void
.end method

.method public setTile(IIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "id"    # I
    .param p5, "damage"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1929
    invoke-static {p1, p2, p3, p4, p5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetTile(IIIII)V

    .line 1930
    return-void
.end method

.method public setVelX(Ljava/lang/Object;D)V
    .locals 4
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1871
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 1872
    return-void
.end method

.method public setVelY(Ljava/lang/Object;D)V
    .locals 4
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1876
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 1877
    return-void
.end method

.method public setVelZ(Ljava/lang/Object;D)V
    .locals 4
    .param p1, "ent"    # Ljava/lang/Object;
    .param p2, "amount"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1881
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    double-to-float v2, p2

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetVel(JFI)V

    .line 1882
    return-void
.end method

.method public spawnChicken(DDDLjava/lang/String;)J
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1901
    invoke-static {p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1902
    const-string p7, "mob/chicken.png"

    .line 1904
    :cond_0
    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    const/16 v5, 0xa

    invoke-static {v2, v3, v4, v5, p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 1905
    .local v0, "entityId":J
    return-wide v0
.end method

.method public spawnCow(DDDLjava/lang/String;)J
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1910
    invoke-static {p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1911
    const-string p7, "mob/cow.png"

    .line 1913
    :cond_0
    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    const/16 v5, 0xb

    invoke-static {v2, v3, v4, v5, p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 1914
    .local v0, "entityId":J
    return-wide v0
.end method

.method public spawnPigZombie(DDDILjava/lang/String;)J
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "item"    # I
    .param p8, "tex"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 1981
    invoke-static {p8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$700(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    const-string p8, "mob/pigzombie.png"

    .line 1984
    :cond_0
    double-to-float v2, p1

    double-to-float v3, p3

    double-to-float v4, p5

    const/16 v5, 0x24

    invoke-static {v2, v3, v4, v5, p8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$800(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 1985
    .local v0, "entityId":J
    if-eqz p7, :cond_1

    invoke-static {p7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidItem(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 p7, 0x11b

    .line 1986
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p7, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetCarriedItem(JIII)V

    .line 1987
    return-wide v0
.end method
