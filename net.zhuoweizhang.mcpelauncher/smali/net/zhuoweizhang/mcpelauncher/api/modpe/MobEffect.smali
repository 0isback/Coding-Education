.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;
.super Ljava/lang/Object;
.source "MobEffect.java"


# static fields
.field public static absorption:I

.field public static blindness:I

.field public static confusion:I

.field public static damageBoost:I

.field public static damageResistance:I

.field public static digSlowdown:I

.field public static digSpeed:I

.field public static effectIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static fireResistance:I

.field public static harm:I

.field public static heal:I

.field public static healthBoost:I

.field public static hunger:I

.field public static invisibility:I

.field public static jump:I

.field public static movementSlowdown:I

.field public static movementSpeed:I

.field public static nightVision:I

.field public static poison:I

.field public static regeneration:I

.field public static saturation:I

.field public static waterBreathing:I

.field public static weakness:I

.field public static wither:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->effectIds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initIds()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "saturation"

    const-string v1, "SATURATION"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->saturation:I

    .line 31
    const-string v0, "absorption"

    const-string v1, "ABSORPTION"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->absorption:I

    .line 32
    const-string v0, "healthBoost"

    const-string v1, "HEALTH_BOOST"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->healthBoost:I

    .line 33
    const-string v0, "wither"

    const-string v1, "WITHER"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->wither:I

    .line 34
    const-string v0, "poison"

    const-string v1, "POISON"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->poison:I

    .line 35
    const-string v0, "weakness"

    const-string v1, "WEAKNESS"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->weakness:I

    .line 36
    const-string v0, "hunger"

    const-string v1, "HUNGER"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->hunger:I

    .line 37
    const-string v0, "nightVision"

    const-string v1, "NIGHT_VISION"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->nightVision:I

    .line 38
    const-string v0, "blindness"

    const-string v1, "BLINDNESS"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->blindness:I

    .line 39
    const-string v0, "invisibility"

    const-string v1, "INVISIBILITY"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->invisibility:I

    .line 40
    const-string v0, "waterBreathing"

    const-string v1, "WATER_BREATHING"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->waterBreathing:I

    .line 41
    const-string v0, "fireResistance"

    const-string v1, "FIRE_RESISTANCE"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->fireResistance:I

    .line 42
    const-string v0, "damageResistance"

    const-string v1, "DAMAGE_RESISTANCE"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->damageResistance:I

    .line 43
    const-string v0, "regeneration"

    const-string v1, "REGENERATION"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->regeneration:I

    .line 44
    const-string v0, "confusion"

    const-string v1, "CONFUSION"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->confusion:I

    .line 45
    const-string v0, "jump"

    const-string v1, "JUMP"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->jump:I

    .line 46
    const-string v0, "harm"

    const-string v1, "HARM"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->harm:I

    .line 47
    const-string v0, "heal"

    const-string v1, "HEAL"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->heal:I

    .line 48
    const-string v0, "damageBoost"

    const-string v1, "DAMAGE_BOOST"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->damageBoost:I

    .line 49
    const-string v0, "digSlowdown"

    const-string v1, "DIG_SLOWDOWN"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->digSlowdown:I

    .line 50
    const-string v0, "digSpeed"

    const-string v1, "DIG_SPEED"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->digSpeed:I

    .line 51
    const-string v0, "movementSlowdown"

    const-string v1, "MOVEMENT_SLOWDOWN"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->movementSlowdown:I

    .line 52
    const-string v0, "movementSpeed"

    const-string v1, "MOVEMENT_SPEED"

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->populate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->movementSpeed:I

    .line 53
    return-void
.end method

.method public static native nativePopulate(Ljava/lang/String;)I
.end method

.method public static populate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_ZN9MobEffect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->nativePopulate(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "id":I
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->effectIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return v0
.end method
