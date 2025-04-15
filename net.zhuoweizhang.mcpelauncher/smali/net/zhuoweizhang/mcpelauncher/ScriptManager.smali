.class public Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.super Ljava/lang/Object;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeGuiApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeServerApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePointer;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;,
        Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;
    }
.end annotation


# static fields
.field private static final AMOUNT:I = 0x2

.field public static final ARCH_ARM:I = 0x0

.field public static final ARCH_I386:I = 0x1

.field private static final AXIS_X:I = 0x0

.field private static final AXIS_Y:I = 0x1

.field private static final AXIS_Z:I = 0x2

.field private static final DAMAGE:I = 0x1

.field private static final ENTITY_KEY_RENDERTYPE:Ljava/lang/String; = "zhuowei.bl.rt"

.field private static final ENTITY_KEY_SKIN:Ljava/lang/String; = "zhuowei.bl.s"

.field private static final ITEMID:I = 0x0

.field public static ITEM_ID_COUNT:I = 0x0

.field public static final MAX_NUM_ERRORS:I = 0x5

.field public static final SCRIPTS_DIR:Ljava/lang/String; = "modscripts"

.field public static allentities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static allplayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static androidContext:Landroid/content/Context;

.field private static constantsClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static currentScript:Ljava/lang/String;

.field public static enabledScripts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static entityList:Lorg/mozilla/javascript/NativeArray;

.field private static entityUUIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static hasLevel:Z

.field private static instrumentation:Landroid/app/Instrumentation;

.field private static instrumentationExecutor:Ljava/util/concurrent/ExecutorService;

.field public static isRemote:Z

.field public static itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

.field public static modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

.field private static final modernWrapFactory:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

.field public static newPlayerPitch:F

.field public static newPlayerYaw:F

.field private static nextTickCallsSetLevel:Z

.field private static requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

.field private static requestLeaveGame:Z

.field public static requestLeaveGameCounter:I

.field private static requestReloadAllScripts:Z

.field public static requestScreenshot:Z

.field private static requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

.field public static requestSelectLevelHasSetScreen:Z

.field private static requestedGraphicsReset:Z

.field private static runOnMainThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static screenshotFileName:Ljava/lang/String;

.field private static scriptingEnabled:Z

.field private static scriptingInitialized:Z

.field public static scripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;",
            ">;"
        }
    .end annotation
.end field

.field public static sensorEnabled:Z

.field private static serverAddress:Ljava/lang/String;

.field private static serverPort:I

.field public static terrainMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

.field private static worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

.field private static worldDataSaveCounter:I

.field public static worldDir:Ljava/lang/String;

.field public static worldName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    .line 70
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    .line 80
    const-string v0, "Unknown"

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->currentScript:Ljava/lang/String;

    .line 82
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    .line 84
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->sensorEnabled:Z

    .line 86
    sput v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->newPlayerYaw:F

    .line 87
    sput v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->newPlayerPitch:F

    .line 89
    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    .line 91
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    .line 93
    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

    .line 97
    sput-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 99
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    .line 101
    const-string v0, ""

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->screenshotFileName:Ljava/lang/String;

    .line 106
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modernWrapFactory:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    .line 108
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestReloadAllScripts:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    .line 120
    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverAddress:Ljava/lang/String;

    .line 121
    sput v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverPort:I

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->entityUUIDMap:Ljava/util/Map;

    .line 123
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nextTickCallsSetLevel:Z

    .line 126
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->hasLevel:Z

    .line 127
    sput v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGameCounter:I

    .line 128
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestScreenshot:Z

    .line 129
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevelHasSetScreen:Z

    .line 133
    const/16 v0, 0x200

    sput v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    .line 136
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    .line 137
    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    .line 138
    sput v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDataSaveCounter:I

    .line 226
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ChatColor;

    aput-object v1, v0, v2

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ItemCategory;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ParticleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityRenderType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/DimensionId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/BlockFace;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/UseAnimation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/Enchantment;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EnchantType;

    aput-object v2, v0, v1

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->constantsClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3813
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getPlayerNameFromConfs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 55
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getEntityUUID(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lnet/zhuoweizhang/mcpelauncher/WorldData;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->overrideTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setRequestLeaveGame()V

    return-void
.end method

.method static synthetic access$1500()Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    return-object v0
.end method

.method static synthetic access$1502(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;)Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    .prologue
    .line 55
    sput-object p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->currentScript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/mozilla/javascript/Scriptable;)[I
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/javascript/Scriptable;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->expandShapelessRecipe(Lorg/mozilla/javascript/Scriptable;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->verifyBlockTextures(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isSkinNameNormalized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverPort:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getSkinURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->instrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptPrint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/Object;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getEntityId(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->invalidTexName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(FFFILjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->spawnEntityImpl(FFFILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->wordWrapClientMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static appendApiClassConstants(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 1014
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 1015
    .local v3, "fieldModifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1013
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1019
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldModifiers":I
    :cond_2
    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    return-void
.end method

.method private static appendApiMethodDescription(Ljava/lang/StringBuilder;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 5
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "met"    # Ljava/lang/reflect/Method;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 993
    if-eqz p2, :cond_0

    .line 994
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1000
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1001
    const-string v2, "par"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1003
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Native"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1005
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_2
    const-string v2, ");\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    return-void
.end method

.method private static appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 982
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 983
    .local v3, "met":Ljava/lang/reflect/Method;
    const-class v4, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v4, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 985
    :cond_0
    invoke-static {p0, v3, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethodDescription(Ljava/lang/StringBuilder;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 982
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    .end local v3    # "met":Ljava/lang/reflect/Method;
    :cond_2
    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    return-void
.end method

.method private static appendCallbacks(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1023
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1024
    .local v3, "met":Ljava/lang/reflect/Method;
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;

    .line 1025
    .local v4, "name":Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
    if-nez v4, :cond_0

    .line 1023
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    const-string v5, "function "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;->args()[Ljava/lang/String;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/Utils;->joinArray([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1029
    .end local v3    # "met":Ljava/lang/reflect/Method;
    .end local v4    # "name":Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
    :cond_1
    const-string v5, "\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    return-void
.end method

.method public static attackCallback(JJ)V
    .locals 4
    .param p0, "attacker"    # J
    .param p2, "victim"    # J
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "attacker",
            "victim"
        }
        name = "attackHook"
    .end annotation

    .prologue
    .line 400
    const-string v0, "attackHook"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public static blockEventCallback(IIIII)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "type"    # I
    .param p4, "data"    # I

    .prologue
    .line 534
    const-string v0, "blockEventHook"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public static varargs callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "functionName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 266
    sget-boolean v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v6, :cond_1

    .line 285
    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 269
    .local v0, "ctx":Lorg/mozilla/javascript/Context;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 270
    sget-object v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;

    .line 271
    .local v5, "state":Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;
    iget v6, v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->errors:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_2

    .line 273
    iget-object v6, v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->name:Ljava/lang/String;

    sput-object v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->currentScript:Ljava/lang/String;

    .line 274
    iget-object v4, v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 275
    .local v4, "scope":Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v4, p0, v4}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v6, v3, Lorg/mozilla/javascript/Function;

    if-eqz v6, :cond_2

    .line 278
    :try_start_0
    check-cast v3, Lorg/mozilla/javascript/Function;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-interface {v3, v0, v4, v4, p1}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    invoke-static {v5, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reportScriptError(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static chatCallback(Ljava/lang/String;)V
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "str"
        }
        name = "chatHook"
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 465
    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    if-eqz v4, :cond_0

    .line 466
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nameAndShame(Ljava/lang/String;)V

    .line 467
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    const-string v4, "chatHook"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    .line 472
    const-string v4, "procCmd"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "splitted":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeIsValidCommand(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    .local v2, "validNativeCommand":Z
    :goto_1
    sget-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 476
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePreventDefault()V

    .line 477
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 478
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 479
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_1

    .line 480
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/mojang/minecraftpe/MainActivity;->updateTextboxText(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    .end local v2    # "validNativeCommand":Z
    :cond_3
    move v2, v3

    .line 474
    goto :goto_1
.end method

.method public static classConstantsToJSObject(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/ScriptableObject;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v6}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 1106
    .local v6, "obj":Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 1107
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 1108
    .local v3, "fieldModifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1106
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1116
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldModifiers":I
    :cond_2
    return-object v6
.end method

.method private static clearTextureOverride(Ljava/lang/String;)V
    .locals 2
    .param p0, "texture"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1098
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1101
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    .line 1102
    return-void
.end method

.method public static clearTextureOverrides()V
    .locals 3

    .prologue
    .line 1090
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1094
    .local v0, "stagingTextures":Ljava/io/File;
    :goto_0
    return-void

    .line 1091
    .end local v0    # "stagingTextures":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "textures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1092
    .restart local v0    # "stagingTextures":Ljava/io/File;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->clearDirectory(Ljava/io/File;)V

    .line 1093
    const/4 v1, 0x1

    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    goto :goto_0
.end method

.method private static debugDumpItems()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1219
    new-instance v10, Ljava/io/PrintWriter;

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "/items.csv"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 1221
    .local v10, "out":Ljava/io/PrintWriter;
    const/4 v13, 0x6

    new-array v12, v13, [F

    .line 1222
    .local v12, "textureUVbuf":[F
    const/16 v13, 0x9

    new-array v2, v13, [[I

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_3

    aput-object v14, v2, v13

    const/4 v13, 0x4

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_4

    aput-object v14, v2, v13

    const/4 v13, 0x5

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_5

    aput-object v14, v2, v13

    const/4 v13, 0x6

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_6

    aput-object v14, v2, v13

    const/4 v13, 0x7

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_7

    aput-object v14, v2, v13

    const/16 v13, 0x8

    const/4 v14, 0x3

    new-array v14, v14, [I

    fill-array-data v14, :array_8

    aput-object v14, v2, v13

    .line 1223
    .local v2, "bonuses":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget v13, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    if-ge v4, v13, :cond_1

    .line 1224
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemName(IIZ)Ljava/lang/String;

    move-result-object v8

    .line 1225
    .local v8, "itemName":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1223
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1227
    :cond_0
    const/4 v13, 0x0

    invoke-static {v4, v13, v12}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetTextureCoordinatesForItem(II[F)Z

    move-result v11

    .line 1228
    .local v11, "success":Z
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    const-string v14, "["

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "]"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    const-string v15, "|"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, "itemIcon":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1232
    .end local v7    # "itemIcon":Ljava/lang/String;
    .end local v8    # "itemName":Ljava/lang/String;
    .end local v11    # "success":Z
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[[I
    array-length v9, v0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v9, :cond_4

    aget-object v1, v0, v5

    .line 1233
    .local v1, "bonus":[I
    const/4 v13, 0x0

    aget v6, v1, v13

    .line 1234
    .local v6, "id":I
    const/4 v13, 0x1

    aget v3, v1, v13

    .local v3, "dmg":I
    :goto_3
    const/4 v13, 0x2

    aget v13, v1, v13

    if-gt v3, v13, :cond_3

    .line 1235
    const/4 v13, 0x1

    invoke-static {v6, v3, v13}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemName(IIZ)Ljava/lang/String;

    move-result-object v8

    .line 1236
    .restart local v8    # "itemName":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 1234
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1238
    :cond_2
    invoke-static {v6, v3, v12}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetTextureCoordinatesForItem(II[F)Z

    move-result v11

    .line 1239
    .restart local v11    # "success":Z
    invoke-static {v12}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    const-string v14, "["

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "]"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    const-string v15, "|"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1241
    .restart local v7    # "itemIcon":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1232
    .end local v7    # "itemIcon":Ljava/lang/String;
    .end local v8    # "itemName":Ljava/lang/String;
    .end local v11    # "success":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1244
    .end local v1    # "bonus":[I
    .end local v3    # "dmg":I
    .end local v6    # "id":I
    :cond_4
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 1245
    return-void

    .line 1222
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xc
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x26
        0x0
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x9f
        0x0
        0xf
    .end array-data

    :array_4
    .array-data 4
        0xab
        0x0
        0xf
    .end array-data

    :array_5
    .array-data 4
        0xaf
        0x0
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x15d
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x15e
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x17f
        0xa
        0x3f
    .end array-data
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    .line 694
    const/4 v0, 0x0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    .line 695
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 696
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 697
    return-void
.end method

.method public static destroyBlockCallback(IIII)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "side"    # I
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "x",
            "y",
            "z",
            "side"
        }
        name = "destroyBlock"
    .end annotation

    .prologue
    .line 295
    const-string v0, "destroyBlock"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public static dummyThrowableHitEntityCallback()V
    .locals 0
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "projectile",
            "targetEntity"
        }
        name = "projectileHitEntityHook"
    .end annotation

    .prologue
    .line 641
    return-void
.end method

.method public static eatCallback(IF)V
    .locals 4
    .param p0, "hearts"    # I
    .param p1, "notHearts"    # F
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "hearts",
            "saturationRatio"
        }
        name = "eatHook"
    .end annotation

    .prologue
    .line 623
    const-string v0, "eatHook"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method public static entityAddedCallback(J)V
    .locals 8
    .param p0, "entity"    # J
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "entity"
        }
        name = "entityAddedHook"
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 510
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entity added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entity type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getEntityTypeId(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->isPlayer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->playerAddedHandler(J)V

    .line 515
    :cond_0
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "zhuowei.bl.rt"

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getExtraData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "renderType":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 518
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRendererApi;->getByName(Ljava/lang/String;)Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;

    move-result-object v2

    .line 519
    .local v2, "renderer":Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;->getRenderType()I

    move-result v4

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setRenderTypeImpl(Ljava/lang/Object;I)V

    .line 521
    .end local v2    # "renderer":Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager$NativeRenderer;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "zhuowei.bl.s"

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->getExtraData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "customSkin":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 523
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v0, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setMobSkinImpl(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 525
    :cond_2
    const-string v3, "entityAddedHook"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    return-void
.end method

.method public static entityRemovedCallback(J)V
    .locals 6
    .param p0, "entity"    # J
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "entity"
        }
        name = "entityRemovedHook"
    .end annotation

    .prologue
    .line 499
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;->isPlayer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->playerRemovedHandler(J)V

    .line 502
    :cond_0
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 503
    .local v0, "entityIndex":I
    if-ltz v0, :cond_1

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    :cond_1
    const-string v1, "entityRemovedHook"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public static expandColorsArray(Lorg/mozilla/javascript/Scriptable;)[I
    .locals 6
    .param p0, "inArrayScriptable"    # Lorg/mozilla/javascript/Scriptable;

    .prologue
    .line 1192
    const-string v3, "length"

    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1194
    .local v2, "inArrayLength":I
    const/16 v3, 0x10

    new-array v0, v3, [I

    .line 1195
    .local v0, "endArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1196
    if-ge v1, v2, :cond_0

    .line 1197
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v0, v1

    .line 1195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v0, v1

    goto :goto_1

    .line 1204
    :cond_1
    const-string v3, "BlockLauncher"

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-object v0
.end method

.method private static expandShapelessRecipe(Lorg/mozilla/javascript/Scriptable;)[I
    .locals 6
    .param p0, "inArrayScriptable"    # Lorg/mozilla/javascript/Scriptable;

    .prologue
    .line 1325
    const-string v4, "length"

    invoke-static {p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1327
    .local v3, "inArrayLength":I
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    .line 1328
    .local v1, "firstObj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1329
    .local v0, "endArray":[I
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 1330
    rem-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_0

    .line 1331
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array length must be multiple of 3 (this was changed in 1.6.8): [itemid, itemCount, itemdamage, ...]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1334
    :cond_0
    new-array v0, v3, [I

    .line 1335
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 1336
    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 1335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Method takes in an array of [itemid, itemCount, itemdamage, ...]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1345
    .restart local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static expandTexturesArray(Ljava/lang/Object;)Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;
    .locals 17
    .param p0, "inArrayObj"    # Ljava/lang/Object;

    .prologue
    .line 1131
    const/16 v16, 0x60

    move/from16 v0, v16

    new-array v1, v0, [I

    .line 1132
    .local v1, "endArray":[I
    const/16 v16, 0x60

    move/from16 v0, v16

    new-array v11, v0, [Ljava/lang/String;

    .line 1133
    .local v11, "stringArray":[Ljava/lang/String;
    new-instance v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;-><init>(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;)V

    .line 1134
    .local v10, "retval":Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;
    iput-object v1, v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->coords:[I

    .line 1135
    iput-object v11, v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->names:[Ljava/lang/String;

    .line 1137
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v2, p0

    .line 1138
    check-cast v2, Ljava/lang/String;

    .line 1139
    .local v2, "fillVal":Ljava/lang/String;
    invoke-static {v11, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1177
    .end local v2    # "fillVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v10

    :cond_1
    move-object/from16 v7, p0

    .line 1142
    check-cast v7, Lorg/mozilla/javascript/Scriptable;

    .line 1146
    .local v7, "inArrayScriptable":Lorg/mozilla/javascript/Scriptable;
    const-string v16, "length"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1148
    .local v6, "inArrayLength":I
    rem-int/lit8 v16, v6, 0x6

    if-nez v16, :cond_3

    const/4 v15, 0x6

    .line 1149
    .local v15, "wrap":I
    :goto_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v4

    .line 1150
    .local v4, "firstObj":Ljava/lang/Object;
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_4

    :cond_2
    instance-of v0, v4, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object v2, v4

    .line 1152
    check-cast v2, Ljava/lang/String;

    .line 1153
    .restart local v2    # "fillVal":Ljava/lang/String;
    invoke-static {v11, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1154
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_0

    .line 1155
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1157
    .local v3, "fillVal2":I
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 1148
    .end local v2    # "fillVal":Ljava/lang/String;
    .end local v3    # "fillVal2":I
    .end local v4    # "firstObj":Ljava/lang/Object;
    .end local v15    # "wrap":I
    :cond_3
    const/4 v15, 0x1

    goto :goto_1

    .line 1161
    .restart local v4    # "firstObj":Ljava/lang/Object;
    .restart local v15    # "wrap":I
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_0

    .line 1163
    if-ge v5, v6, :cond_6

    .line 1164
    invoke-static {v7, v5}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "myObj":Ljava/lang/Object;
    :goto_3
    move-object v9, v8

    .line 1168
    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    .line 1169
    .local v9, "myScriptable":Lorg/mozilla/javascript/Scriptable;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1170
    .local v14, "texName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1171
    .local v13, "texCoord":I
    const-string v16, "length"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1173
    .local v12, "subarrayLength":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v12, v0, :cond_5

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v9, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 1174
    :cond_5
    aput v13, v1, v5

    .line 1175
    aput-object v14, v11, v5

    .line 1161
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1166
    .end local v8    # "myObj":Ljava/lang/Object;
    .end local v9    # "myScriptable":Lorg/mozilla/javascript/Scriptable;
    .end local v12    # "subarrayLength":I
    .end local v13    # "texCoord":I
    .end local v14    # "texName":Ljava/lang/String;
    :cond_6
    rem-int v16, v5, v15

    move/from16 v0, v16

    invoke-static {v7, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "myObj":Ljava/lang/Object;
    goto :goto_3
.end method

.method public static explodeCallback(JFFFFZ)V
    .locals 4
    .param p0, "entity"    # J
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "power"    # F
    .param p6, "onFire"    # Z
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "entity",
            "x",
            "y",
            "z",
            "power",
            "onFire"
        }
        name = "explodeHook"
    .end annotation

    .prologue
    .line 618
    const-string v0, "explodeHook"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    return-void
.end method

.method public static frameCallback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 554
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestReloadAllScripts:Z

    if-eqz v1, :cond_1

    .line 555
    sput-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestReloadAllScripts:Z

    .line 557
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/mcpelauncher_do_not_create_placeholder_blocks"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDefinePlaceholderBlocks()V

    .line 560
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/MobEffect;->initIds()V

    .line 561
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadEnabledScripts()V

    .line 562
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeArmorAddQueuedTextures()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    if-eqz v1, :cond_2

    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    if-nez v1, :cond_2

    .line 569
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevelHasSetScreen:Z

    if-nez v1, :cond_4

    .line 570
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeShowProgressScreen()V

    .line 571
    const/4 v1, 0x1

    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevelHasSetScreen:Z

    .line 572
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRequestFrameCallback()V

    .line 579
    :cond_2
    :goto_1
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestScreenshot:Z

    if-eqz v1, :cond_3

    .line 580
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->screenshotFileName:Ljava/lang/String;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScreenshotHelper;->takeScreenshot(Ljava/lang/String;)V

    .line 581
    sput-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestScreenshot:Z

    .line 583
    :cond_3
    return-void

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 564
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    invoke-static {v4, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reportScriptError(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 574
    :cond_4
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;->dir:Ljava/lang/String;

    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    iget-object v2, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSelectLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    sput-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevel:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    .line 576
    sput-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestSelectLevelHasSetScreen:Z

    goto :goto_1
.end method

.method public static getAllApiMethodsDescriptions()Ljava/lang/String;
    .locals 7

    .prologue
    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 966
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;

    const-string v6, "ModPE"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 967
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;

    const-string v6, "Level"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 968
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;

    const-string v6, "Player"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 969
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;

    const-string v6, "Entity"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 970
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;

    const-string v6, "Item"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 971
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;

    const-string v6, "Block"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 972
    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeServerApi;

    const-string v6, "Server"

    invoke-static {v1, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiMethods(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/String;)V

    .line 973
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendCallbacks(Ljava/lang/StringBuilder;)V

    .line 974
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->constantsClasses:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 975
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->appendApiClassConstants(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 974
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 977
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/mozilla/javascript/ScriptableObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 915
    .local v4, "met":Ljava/lang/reflect/Method;
    const-class v5, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 916
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    .end local v4    # "met":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static getCapeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://blskins.ablecuboid.com/blskins/capes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledScripts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    return-object v0
.end method

.method private static getEntityId(Ljava/lang/Object;)J
    .locals 3
    .param p0, "entityId"    # Ljava/lang/Object;

    .prologue
    .line 1422
    instance-of v0, p0, Lorg/mozilla/javascript/NativeJavaObject;

    if-eqz v0, :cond_0

    .line 1423
    check-cast p0, Lorg/mozilla/javascript/NativeJavaObject;

    .end local p0    # "entityId":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1429
    .restart local p0    # "entityId":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .line 1425
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1426
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "entityId":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 1428
    .restart local p0    # "entityId":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_2

    .line 1429
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1431
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getEntityUUID(J)Ljava/lang/String;
    .locals 2
    .param p0, "entityId"    # J

    .prologue
    .line 1352
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalFile(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "curFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 895
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getOriginalLocations()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "originalLoc":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 899
    :cond_0
    :goto_0
    return-object v0

    .line 897
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 898
    .local v0, "originalFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getOriginalLocations()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 887
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 888
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "scriptOriginalLocations"

    const-string v4, "{}"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-object v2

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private static getPlayerNameFromConfs()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1464
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "games/com.mojang/minecraftpe/options.txt"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1465
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Steve"

    .line 1479
    :goto_0
    return-object v9

    .line 1466
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    new-array v2, v9, [B

    .line 1467
    .local v2, "fileBytes":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1468
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 1469
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1470
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1471
    .local v8, "strs":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 1472
    .local v7, "s":Ljava/lang/String;
    const-string v9, "mp_username:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1473
    const-string v9, "mp_username:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1471
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1476
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fileBytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1477
    .local v5, "ie":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1479
    .end local v5    # "ie":Ljava/lang/Exception;
    :cond_2
    const-string v9, "Steve"

    goto :goto_0
.end method

.method public static getScriptFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "scriptId"    # Ljava/lang/String;

    .prologue
    .line 868
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    const-string v2, "modscripts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 869
    .local v0, "scriptsFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getSkinURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://blskins.ablecuboid.com/blskins/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoundBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 655
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 656
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 657
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 658
    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 661
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSoundInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lengthout"    # [J

    .prologue
    .line 644
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Get sound input stream"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 646
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 647
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 648
    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v1

    .line 651
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "textureName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1084
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1086
    :goto_0
    return-object v1

    .line 1085
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "textures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1086
    .local v0, "stagingTextures":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, ".."

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static getWrapFactory()Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;
    .locals 1

    .prologue
    .line 1455
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modernWrapFactory:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    return-object v0
.end method

.method public static handleChatPacketCallback(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "str"
        }
        name = "serverMessageReceiveHook"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 587
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const-string v0, "serverMessageReceiveHook"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static handleMessagePacketCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "str",
            "sender"
        }
        name = "chatReceiveHook"
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 597
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u00a70BlockLauncher, enable scripts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    sput-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 601
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePreventDefault()V

    .line 602
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 603
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 604
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_2

    .line 605
    const-string v1, "Scripts have been re-enabled"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->scriptPrintCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_2
    const-string v1, "chatReceiveHook"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "cxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 665
    sput-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    .line 667
    const/4 v0, 0x0

    .line 669
    .local v0, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.mojang.minecraftpe"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    const v0, 0xaaaa

    .line 677
    :cond_0
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetupHooks(I)V

    .line 678
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetItemIdCount()I

    move-result v1

    sput v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    .line 679
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 680
    new-instance v1, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->entityList:Lorg/mozilla/javascript/NativeArray;

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    .line 686
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/BlockContextFactory;

    invoke-direct {v1}, Lnet/zhuoweizhang/mcpelauncher/BlockContextFactory;-><init>()V

    invoke-static {v1}, Lorg/mozilla/javascript/ContextFactory;->initGlobal(Lorg/mozilla/javascript/ContextFactory;)V

    .line 687
    sput-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestReloadAllScripts:Z

    .line 688
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRequestFrameCallback()V

    .line 689
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->prepareEnabledScripts()V

    .line 690
    return-void

    .line 670
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static initJustLoadedScript(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V
    .locals 11
    .param p0, "ctx"    # Lorg/mozilla/javascript/Context;
    .param p1, "script"    # Lorg/mozilla/javascript/Script;
    .param p2, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;-><init>(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;)V

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v6

    .line 234
    .local v6, "scope":Lorg/mozilla/javascript/Scriptable;
    new-instance v7, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;

    invoke-direct {v7, p1, v6, p2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;-><init>(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    .line 235
    .local v7, "state":Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;

    invoke-static {v8}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "names":[Ljava/lang/String;
    move-object v8, v6

    .line 236
    check-cast v8, Lorg/mozilla/javascript/ScriptableObject;

    const-class v9, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$BlockHostObject;

    const/4 v10, 0x2

    invoke-virtual {v8, v5, v9, v10}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    .line 244
    :try_start_0
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativePlayerApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 245
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeLevelApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 246
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 247
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 248
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 249
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeBlockApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 250
    const-class v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeServerApi;

    invoke-static {v6, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 251
    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/RendererManager;->defineClasses(Lorg/mozilla/javascript/Scriptable;)V

    .line 252
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->constantsClasses:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 253
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->classConstantsToJSObject(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    invoke-static {v7, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reportScriptError(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;Ljava/lang/Throwable;)V

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1, p0, v6}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 262
    sget-object v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method private static injectKeyEvent(II)V
    .locals 2
    .param p0, "key"    # I
    .param p1, "pressed"    # I

    .prologue
    .line 1435
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->instrumentation:Landroid/app/Instrumentation;

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->instrumentation:Landroid/app/Instrumentation;

    .line 1437
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->instrumentationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1439
    :cond_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->instrumentationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;

    invoke-direct {v1, p1, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$3;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1444
    return-void
.end method

.method private static invalidTexName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tex"    # Ljava/lang/String;

    .prologue
    .line 923
    if-eqz p0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isClassGenMode()Z
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 799
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 795
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isLocalAddress(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1037
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1038
    .local v0, "address":Ljava/net/InetAddress;
    const-string v3, "BlockLauncher"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1044
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    :goto_0
    return v2

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isPackagedScript(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1356
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isPackagedScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPackagedScript(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1359
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".modpkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static isScriptingEnabled()Z
    .locals 1

    .prologue
    .line 1459
    sget-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    return v0
.end method

.method private static isSkinNameNormalized()Z
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidStringParameter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tex"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->invalidTexName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static leaveGameCallback(Z)V
    .locals 6
    .param p0, "thatboolean"    # Z
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        name = "leaveGame"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 374
    sput-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    .line 375
    const/4 v2, 0x1

    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 376
    sput-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->hasLevel:Z

    .line 378
    sget-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    if-eqz v2, :cond_0

    const-string v2, "leaveGame"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_0
    sget-object v2, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 380
    sget-object v2, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/MainActivity;

    .line 381
    .local v1, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->leaveGameCallback()V

    .line 386
    .end local v1    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_1
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    if-eqz v2, :cond_2

    .line 388
    :try_start_0
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    sput-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    .line 394
    :cond_2
    sput-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverAddress:Ljava/lang/String;

    .line 395
    sput v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverPort:I

    .line 396
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "ie":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static levelEventCallback(IIIIII)V
    .locals 4
    .param p0, "player"    # I
    .param p1, "eventType"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "data"    # I

    .prologue
    .line 530
    const-string v0, "levelEventHook"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method protected static loadEnabledScripts()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 814
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getScriptFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 815
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 816
    :cond_0
    const-string v4, "BlockLauncher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ModPE script "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadScript(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    sget-object v4, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v4, v0}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static loadEnabledScriptsNames(Landroid/content/Context;)V
    .locals 1
    .param p0, "androidContext"    # Landroid/content/Context;

    .prologue
    .line 808
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledScripts()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    .line 809
    return-void
.end method

.method private static loadPackagedScript(Ljava/io/File;Z)V
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "firstLoad"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    const/4 v9, 0x0

    .line 1365
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1367
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .local v10, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 1368
    .local v2, "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    const/4 v8, 0x0

    .line 1370
    .local v8, "scrambled":Z
    :try_start_1
    invoke-static {v10}, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->fromZip(Ljava/util/zip/ZipFile;)Lnet/zhuoweizhang/mcpelauncher/MpepInfo;

    move-result-object v2

    .line 1371
    if-eqz v2, :cond_4

    iget-object v11, v2, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->scrambleCode:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-lez v11, :cond_4

    const/4 v8, 0x1

    .line 1377
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 1378
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1379
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 1380
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    const/4 v5, 0x0

    .line 1381
    .local v5, "reader":Ljava/io/Reader;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1382
    .local v4, "name":Ljava/lang/String;
    const-string v11, "script/"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".js"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    .line 1384
    if-eqz v8, :cond_5

    .line 1385
    :try_start_3
    invoke-virtual {v10, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 1386
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v11, v12

    new-array v7, v11, [B

    .line 1387
    .local v7, "scrambleBytes":[B
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    .line 1388
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1389
    invoke-static {v7, v2}, Lnet/zhuoweizhang/mcpelauncher/Scrambler;->scramble([BLnet/zhuoweizhang/mcpelauncher/MpepInfo;)Ljava/io/Reader;

    move-result-object v5

    .line 1393
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "scrambleBytes":[B
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadScript(Ljava/io/Reader;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1395
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1400
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/Reader;
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V

    .line 1402
    :cond_2
    if-nez p1, :cond_3

    sget-object v11, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    invoke-virtual {v11, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->addPackage(Ljava/io/File;)V

    .line 1403
    :cond_3
    return-void

    .line 1371
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1391
    .restart local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/Reader;
    :cond_5
    :try_start_5
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v10, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "reader":Ljava/io/Reader;
    .local v6, "reader":Ljava/io/Reader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v5    # "reader":Ljava/io/Reader;
    goto :goto_1

    .line 1395
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    :cond_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1400
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v2    # "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .end local v8    # "scrambled":Z
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    :cond_7
    throw v11

    :catchall_2
    move-exception v11

    goto :goto_2

    .line 1372
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .restart local v8    # "scrambled":Z
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public static loadScript(Ljava/io/File;Z)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "firstLoad"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isClassGenMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    sget-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v2, :cond_2

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Not available in multiplayer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_2
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptTranslationCache;->get(Landroid/content/Context;Ljava/io/File;)Lorg/mozilla/javascript/Script;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadScriptFromInstance(Lorg/mozilla/javascript/Script;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isPackagedScript(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadPackagedScript(Ljava/io/File;Z)V

    goto :goto_0

    .line 209
    :cond_4
    const/4 v0, 0x0

    .line 211
    .local v0, "in":Ljava/io/Reader;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v0    # "in":Ljava/io/Reader;
    .local v1, "in":Ljava/io/Reader;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadScript(Ljava/io/Reader;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 214
    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_5
    throw v2

    .line 214
    .end local v0    # "in":Ljava/io/Reader;
    .restart local v1    # "in":Ljava/io/Reader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "in":Ljava/io/Reader;
    .restart local v0    # "in":Ljava/io/Reader;
    goto :goto_1
.end method

.method public static loadScript(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 7
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "sourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingInitialized:Z

    if-nez v1, :cond_1

    .line 170
    :cond_0
    return-void

    .line 146
    :cond_1
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v1, :cond_2

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Not available in multiplayer"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_2
    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;

    invoke-direct {v2, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 153
    .local v2, "parseRunner":Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const-string v3, "BlockLauncher parse thread"

    const-wide/32 v4, 0x40000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 155
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 164
    iget-object v6, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    check-cast v6, Ljava/lang/RuntimeException;

    .line 168
    .local v6, "back":Ljava/lang/RuntimeException;
    :goto_1
    throw v6

    .line 166
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v1, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ParseThread;->error:Ljava/lang/Exception;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "back":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 158
    .end local v6    # "back":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loadScriptFromInstance(Lorg/mozilla/javascript/Script;Ljava/lang/String;)V
    .locals 1
    .param p0, "script"    # Lorg/mozilla/javascript/Script;
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 221
    .local v0, "ctx":Lorg/mozilla/javascript/Context;
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 222
    invoke-static {v0, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->initJustLoadedScript(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Script;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 224
    return-void
.end method

.method public static mobDieCallback(JJ)V
    .locals 6
    .param p0, "attacker"    # J
    .param p2, "victim"    # J
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "attacker",
            "victim"
        }
        name = "deathHook"
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 492
    const-string v2, "deathHook"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    cmp-long v5, p0, v0

    if-nez v5, :cond_0

    move-wide p0, v0

    .end local p0    # "attacker":J
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    invoke-virtual {v0, p2, p3}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->clearEntityData(J)V

    .line 494
    :cond_1
    return-void
.end method

.method private static nameAndShame(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1349
    return-void
.end method

.method public static native nativeAddFurnaceRecipe(III)V
.end method

.method public static native nativeAddItemChest(IIIIIII)V
.end method

.method public static native nativeAddItemCreativeInv(III)V
.end method

.method public static native nativeAddItemFurnace(IIIIIII)V
.end method

.method public static native nativeAddItemInventory(III)V
.end method

.method public static native nativeAddShapedRecipe(III[Ljava/lang/String;[I)V
.end method

.method public static native nativeArmorAddQueuedTextures()V
.end method

.method public static native nativeBiomeIdToName(I)Ljava/lang/String;
.end method

.method public static native nativeBlockGetDestroyTime(II)F
.end method

.method public static native nativeBlockGetFriction(I)F
.end method

.method public static native nativeBlockGetSecondPart(IIII)I
.end method

.method public static native nativeBlockSetCollisionEnabled(IZ)V
.end method

.method public static native nativeBlockSetColor(I[I)V
.end method

.method public static native nativeBlockSetDestroyTime(IF)V
.end method

.method public static native nativeBlockSetExplosionResistance(IF)V
.end method

.method public static native nativeBlockSetFriction(IF)V
.end method

.method public static native nativeBlockSetLightLevel(II)V
.end method

.method public static native nativeBlockSetLightOpacity(II)V
.end method

.method public static native nativeBlockSetRedstoneConsumer(IZ)V
.end method

.method public static native nativeBlockSetRenderLayer(II)V
.end method

.method public static native nativeBlockSetShape(IFFFFFFI)V
.end method

.method public static native nativeBlockSetStepSound(II)V
.end method

.method public static native nativeClearCapes()V
.end method

.method public static native nativeClearSlotInventory(I)V
.end method

.method public static native nativeClientMessage(Ljava/lang/String;)V
.end method

.method public static native nativeCloseScreen()V
.end method

.method public static native nativeDefineArmor(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
.end method

.method public static native nativeDefineBlock(ILjava/lang/String;[Ljava/lang/String;[IIZII)V
.end method

.method public static native nativeDefineItem(ILjava/lang/String;ILjava/lang/String;I)V
.end method

.method public static native nativeDefinePlaceholderBlocks()V
.end method

.method public static native nativeDestroyBlock(III)V
.end method

.method public static native nativeDropItem(FFFFIII)J
.end method

.method public static native nativeDumpVtable(Ljava/lang/String;I)V
.end method

.method public static native nativeEntityGetMobSkin(J)Ljava/lang/String;
.end method

.method public static native nativeEntityGetNameTag(J)Ljava/lang/String;
.end method

.method public static native nativeEntityGetRenderType(J)I
.end method

.method public static native nativeEntityGetRider(J)I
.end method

.method public static native nativeEntityGetRiding(J)I
.end method

.method public static native nativeEntityGetUUID(J)[J
.end method

.method public static native nativeEntityHasCustomSkin(J)Z
.end method

.method public static native nativeEntitySetNameTag(JLjava/lang/String;)V
.end method

.method public static native nativeEntitySetSize(JFF)V
.end method

.method public static native nativeExplode(FFFFZ)V
.end method

.method public static native nativeExtinguishFire(IIII)V
.end method

.method public static native nativeForceCrash()V
.end method

.method public static native nativeGetAllEntities()V
.end method

.method public static native nativeGetAnimalAge(J)I
.end method

.method public static native nativeGetArch()I
.end method

.method public static native nativeGetBlockRenderShape(I)I
.end method

.method public static native nativeGetBrightness(III)I
.end method

.method public static native nativeGetCarriedItem(I)I
.end method

.method public static native nativeGetData(III)I
.end method

.method public static native nativeGetEntityLoc(JI)F
.end method

.method public static native nativeGetEntityTypeId(J)I
.end method

.method public static native nativeGetEntityVel(JI)F
.end method

.method public static native nativeGetGameType()I
.end method

.method public static native nativeGetI18NString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetItemChest(IIII)I
.end method

.method public static native nativeGetItemCountChest(IIII)I
.end method

.method public static native nativeGetItemCountFurnace(IIII)I
.end method

.method public static native nativeGetItemDataChest(IIII)I
.end method

.method public static native nativeGetItemDataFurnace(IIII)I
.end method

.method public static native nativeGetItemEntityItem(JI)I
.end method

.method public static native nativeGetItemFurnace(IIII)I
.end method

.method public static native nativeGetItemIdCount()I
.end method

.method public static native nativeGetItemName(IIZ)Ljava/lang/String;
.end method

.method public static native nativeGetLanguageName()Ljava/lang/String;
.end method

.method public static native nativeGetLevel()J
.end method

.method public static native nativeGetMobHealth(J)I
.end method

.method public static native nativeGetMobMaxHealth(J)I
.end method

.method public static native nativeGetPitch(J)F
.end method

.method public static native nativeGetPlayerEnt()J
.end method

.method public static native nativeGetPlayerLoc(I)F
.end method

.method public static native nativeGetPlayerName(J)Ljava/lang/String;
.end method

.method public static native nativeGetSelectedSlotId()I
.end method

.method public static native nativeGetSignText(IIII)Ljava/lang/String;
.end method

.method public static native nativeGetSlotInventory(II)I
.end method

.method public static native nativeGetTextureCoordinatesForItem(II[F)Z
.end method

.method public static native nativeGetTile(III)I
.end method

.method public static native nativeGetTime()J
.end method

.method public static native nativeGetYaw(J)F
.end method

.method public static native nativeHurtTo(I)V
.end method

.method public static native nativeIsSneaking(J)Z
.end method

.method public static native nativeIsValidCommand(Ljava/lang/String;)Z
.end method

.method public static native nativeIsValidItem(I)Z
.end method

.method public static native nativeItemGetUseAnimation(I)I
.end method

.method public static native nativeItemSetProperties(ILjava/lang/String;)Z
.end method

.method public static native nativeItemSetStackedByData(IZ)V
.end method

.method public static native nativeItemSetUseAnimation(II)V
.end method

.method public static native nativeJoinServer(Ljava/lang/String;I)V
.end method

.method public static native nativeLeaveGame(Z)V
.end method

.method public static native nativeLevelAddParticle(IFFFFFFI)V
.end method

.method public static native nativeLevelCanSeeSky(III)Z
.end method

.method public static native nativeLevelGetBiome(II)I
.end method

.method public static native nativeLevelGetBiomeName(II)Ljava/lang/String;
.end method

.method public static native nativeLevelGetDifficulty()I
.end method

.method public static native nativeLevelGetGrassColor(II)I
.end method

.method public static native nativeLevelGetLightningLevel()F
.end method

.method public static native nativeLevelGetRainLevel()F
.end method

.method public static native nativeLevelIsRemote()Z
.end method

.method public static native nativeLevelSetBiome(III)V
.end method

.method public static native nativeLevelSetDifficulty(I)V
.end method

.method public static native nativeLevelSetGrassColor(III)V
.end method

.method public static native nativeLevelSetLightningLevel(F)V
.end method

.method public static native nativeLevelSetRainLevel(F)V
.end method

.method public static native nativeMobAddEffect(JIIIZZ)V
.end method

.method public static native nativeMobGetArmor(JII)I
.end method

.method public static native nativeMobRemoveAllEffects(J)V
.end method

.method public static native nativeMobRemoveEffect(JI)V
.end method

.method public static native nativeMobSetArmor(JIII)V
.end method

.method public static native nativeModPESetDesktopGui(Z)V
.end method

.method public static native nativeOnGraphicsReset()V
.end method

.method public static native nativePlaySound(FFFLjava/lang/String;FF)V
.end method

.method public static native nativePlayerAddExperience(I)V
.end method

.method public static native nativePlayerCanFly()Z
.end method

.method public static native nativePlayerEnchant(III)Z
.end method

.method public static native nativePlayerGetDimension()I
.end method

.method public static native nativePlayerGetEnchantments(I)[I
.end method

.method public static native nativePlayerGetExhaustion()F
.end method

.method public static native nativePlayerGetExperience()F
.end method

.method public static native nativePlayerGetHunger(J)F
.end method

.method public static native nativePlayerGetItemCustomName(I)Ljava/lang/String;
.end method

.method public static native nativePlayerGetLevel()I
.end method

.method public static native nativePlayerGetPointedBlock(I)I
.end method

.method public static native nativePlayerGetPointedEntity()J
.end method

.method public static native nativePlayerGetPointedVec(I)F
.end method

.method public static native nativePlayerGetSaturation()F
.end method

.method public static native nativePlayerIsFlying()Z
.end method

.method public static native nativePlayerSetCanFly(Z)V
.end method

.method public static native nativePlayerSetExhaustion(F)V
.end method

.method public static native nativePlayerSetExperience(F)V
.end method

.method public static native nativePlayerSetFlying(Z)V
.end method

.method public static native nativePlayerSetHunger(JF)V
.end method

.method public static native nativePlayerSetItemCustomName(ILjava/lang/String;)V
.end method

.method public static native nativePlayerSetLevel(I)V
.end method

.method public static native nativePlayerSetSaturation(F)V
.end method

.method public static native nativePrePatch(ZLcom/mojang/minecraftpe/MainActivity;Z)V
.end method

.method public static native nativePreventDefault()V
.end method

.method public static native nativeRecipeSetAnyAuxValue(IZ)V
.end method

.method public static native nativeRemoveEntity(J)V
.end method

.method public static native nativeRemoveItemBackground()V
.end method

.method public static native nativeRequestFrameCallback()V
.end method

.method public static native nativeRideAnimal(JJ)V
.end method

.method public static native nativeScreenChooserSetScreen(I)V
.end method

.method public static native nativeSelectLevel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSendChat(Ljava/lang/String;)V
.end method

.method public static native nativeSetAllowEnchantments(III)V
.end method

.method public static native nativeSetAnimalAge(JI)V
.end method

.method public static native nativeSetBlockRenderShape(II)V
.end method

.method public static native nativeSetCameraEntity(J)V
.end method

.method public static native nativeSetCape(JLjava/lang/String;)V
.end method

.method public static native nativeSetCarriedItem(JIII)V
.end method

.method public static native nativeSetEntityRenderType(JI)Z
.end method

.method public static native nativeSetExitEnabled(Z)V
.end method

.method public static native nativeSetFov(FZ)V
.end method

.method public static native nativeSetGameSpeed(F)V
.end method

.method public static native nativeSetGameType(I)V
.end method

.method public static native nativeSetHandEquipped(IZ)V
.end method

.method public static native nativeSetI18NString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetInventorySlot(IIII)V
.end method

.method public static native nativeSetIsRecording(Z)V
.end method

.method public static native nativeSetItemCategory(III)V
.end method

.method public static native nativeSetItemMaxDamage(II)V
.end method

.method public static native nativeSetMobHealth(JI)V
.end method

.method public static native nativeSetMobMaxHealth(JI)V
.end method

.method public static native nativeSetMobSkin(JLjava/lang/String;)V
.end method

.method public static native nativeSetNightMode(Z)V
.end method

.method public static native nativeSetOnFire(JI)V
.end method

.method public static native nativeSetPosition(JFFF)V
.end method

.method public static native nativeSetPositionRelative(JFFF)V
.end method

.method public static native nativeSetRot(JFF)V
.end method

.method public static native nativeSetSelectedSlotId(I)V
.end method

.method public static native nativeSetSignText(IIIILjava/lang/String;)V
.end method

.method public static native nativeSetSneaking(JZ)V
.end method

.method public static native nativeSetSpawn(III)V
.end method

.method public static native nativeSetStonecutterItem(II)V
.end method

.method public static native nativeSetTextParseColorCodes(Z)V
.end method

.method public static native nativeSetTile(IIIII)V
.end method

.method public static native nativeSetTime(J)V
.end method

.method public static native nativeSetUseController(Z)V
.end method

.method public static native nativeSetVel(JFI)V
.end method

.method public static native nativeSetupHooks(I)V
.end method

.method public static native nativeShowProgressScreen()V
.end method

.method public static native nativeShowTipMessage(Ljava/lang/String;)V
.end method

.method public static native nativeSpawnEntity(FFFILjava/lang/String;)J
.end method

.method public static native nativeSpawnerGetEntityType(III)I
.end method

.method public static native nativeSpawnerSetEntityType(IIII)V
.end method

.method public static native nativeZombieIsBaby(J)Z
.end method

.method public static native nativeZombieSetBaby(JZ)V
.end method

.method private static overrideTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "textureName"    # Ljava/lang/String;

    .prologue
    .line 1060
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1061
    :cond_0
    const-string v2, "terrain-atlas.tga"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "items-opaque.png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1062
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot override "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptPrint(Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_2
    const-string v2, ""

    if-ne p0, v2, :cond_3

    .line 1071
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverride(Ljava/lang/String;)V

    goto :goto_0

    .line 1075
    :cond_3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;

    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;-><init>(Ljava/net/URL;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static playerAddedHandler(J)V
    .locals 2
    .param p0, "entityId"    # J

    .prologue
    .line 1248
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->shouldLoadSkin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1251
    :cond_0
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;

    invoke-direct {v0, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;-><init>(J)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static playerRemovedHandler(J)V
    .locals 4
    .param p0, "entityId"    # J

    .prologue
    .line 1305
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1306
    .local v0, "entityIndex":I
    if-ltz v0, :cond_0

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1307
    :cond_0
    return-void
.end method

.method protected static prepareEnabledScripts()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 829
    sget-object v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadEnabledScriptsNames(Landroid/content/Context;)V

    .line 830
    invoke-static {v8}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "zz_reimport_scripts"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 831
    .local v4, "reimportEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v5, "reimportedString":Ljava/lang/StringBuilder;
    sget-object v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 834
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getScriptFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 835
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    .line 836
    :cond_0
    const-string v6, "BlockLauncher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ModPE script "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    :cond_1
    if-eqz v4, :cond_2

    .line 841
    :try_start_0
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reimportIfPossible(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    :cond_2
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->prepareScript(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    sget-object v6, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v6, v0}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 849
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 850
    sget-object v6, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mojang/minecraftpe/MainActivity;->reportReimported(Ljava/lang/String;)V

    .line 852
    :cond_4
    return-void
.end method

.method private static prepareScript(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isPackagedScript(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 856
    :cond_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    invoke-virtual {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->addPackage(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static processDebugCommand(Ljava/lang/String;)V
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1210
    :try_start_0
    const-string v1, "dumpitems"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->debugDumpItems()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static rakNetConnectCallback(Ljava/lang/String;I)V
    .locals 5
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    const/4 v2, 0x1

    .line 538
    const-string v1, "BlockLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isLocalAddress(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 540
    const-string v3, "BlockLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scripting is now "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    sput-object p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverAddress:Ljava/lang/String;

    .line 542
    sput p1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->serverPort:I

    .line 543
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    .line 544
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 545
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 546
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_1

    .line 547
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modernWrapFactory:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    invoke-virtual {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->closePopups(Landroid/app/Activity;)V

    .line 548
    :cond_0
    sget-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setLevelCallback(Z)V

    .line 551
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_1
    return-void

    .line 540
    :cond_2
    const-string v1, "disabled"

    goto :goto_0

    .line 548
    .restart local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static redstoneUpdateCallback(IIIIZII)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "newCurrent"    # I
    .param p4, "something"    # Z
    .param p5, "blockId"    # I
    .param p6, "blockData"    # I
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "x",
            "y",
            "z",
            "newCurrent",
            "someBooleanIDontKnow",
            "blockId",
            "blockData"
        }
        name = "redstoneUpdateHook"
    .end annotation

    .prologue
    .line 628
    const-string v0, "redstoneUpdateHook"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    return-void
.end method

.method public static reimportIfPossible(Ljava/io/File;)Z
    .locals 6
    .param p0, "curFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 903
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getOriginalFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 904
    .local v0, "originalFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 906
    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 907
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static reloadScript(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->removeScript(Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadScript(Ljava/io/File;Z)V

    .line 726
    return-void
.end method

.method public static removeDeadEntries(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "allPossibleFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 804
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->saveEnabledScripts()V

    .line 805
    return-void
.end method

.method public static removeScript(Ljava/lang/String;)V
    .locals 3
    .param p0, "scriptId"    # Ljava/lang/String;

    .prologue
    .line 708
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 709
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;

    iget-object v2, v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 714
    :cond_0
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isPackagedScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 716
    :try_start_0
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    invoke-virtual {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :cond_1
    :goto_1
    return-void

    .line 708
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static reportScriptError(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "state"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 729
    if-eqz p0, :cond_0

    .line 730
    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->errors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->errors:I

    .line 731
    :cond_0
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 732
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 733
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_1

    .line 734
    if-nez p0, :cond_2

    const-string v1, "Unknown script"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->scriptErrorCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 735
    if-eqz p0, :cond_1

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->errors:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 738
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->scriptTooManyErrorsCallback(Ljava/lang/String;)V

    .line 742
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_1
    return-void

    .line 734
    .restart local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_2
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$ScriptState;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static requestGraphicsReset()V
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    .line 756
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 1310
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    monitor-enter v1

    .line 1311
    :try_start_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    monitor-exit v1

    .line 1313
    return-void

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static saveEnabledScripts()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 860
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 861
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 862
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "enabledScripts"

    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v2, v4}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 863
    const-string v2, "scriptManagerVersion"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 864
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 865
    return-void
.end method

.method private static scriptPrint(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 745
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 747
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 748
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 749
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->currentScript:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->scriptPrintCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_0
    return-void
.end method

.method public static selectLevelCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "wName"    # Ljava/lang/String;
    .param p1, "wDir"    # Ljava/lang/String;
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        name = "selectLevelHook"
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "World name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "World dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    sput-object p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldName:Ljava/lang/String;

    .line 348
    sput-object p1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDir:Ljava/lang/String;

    .line 349
    sput-boolean v7, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 350
    sput-boolean v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    .line 352
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    if-eqz v3, :cond_0

    .line 354
    :try_start_0
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    invoke-virtual {v3}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v3, 0x0

    sput-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    .line 361
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/games/com.mojang/minecraftWorlds"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, "worldsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v1, "theDir":Ljava/io/File;
    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/WorldData;

    invoke-direct {v3, v1}, Lnet/zhuoweizhang/mcpelauncher/WorldData;-><init>(Ljava/io/File;)V

    sput-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .end local v1    # "theDir":Ljava/io/File;
    .end local v2    # "worldsDir":Ljava/io/File;
    :goto_1
    const-string v3, "selectLevelHook"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    sput-boolean v7, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nextTickCallsSetLevel:Z

    .line 370
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "ie":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 365
    .restart local v0    # "ie":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setEnabled(Ljava/io/File;Z)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/lang/String;Z)V

    .line 792
    return-void
.end method

.method private static setEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    if-eqz p1, :cond_0

    .line 765
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getScriptFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reloadScript(Ljava/io/File;)V

    .line 766
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    :goto_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->saveEnabledScripts()V

    .line 772
    return-void

    .line 768
    :cond_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->removeScript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setEnabled([Ljava/io/File;Z)V
    .locals 6
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 776
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    :cond_1
    if-eqz p1, :cond_2

    .line 780
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getScriptFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->reloadScript(Ljava/io/File;)V

    .line 781
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 783
    :cond_2
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->enabledScripts:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 784
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->removeScript(Ljava/lang/String;)V

    goto :goto_1

    .line 787
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->saveEnabledScripts()V

    .line 788
    return-void
.end method

.method public static setLevelCallback(ZZ)V
    .locals 0
    .param p0, "hasLevel"    # Z
    .param p1, "isRemoteAAAAAA"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public static setLevelFakeCallback(ZZ)V
    .locals 6
    .param p0, "hasLevel"    # Z
    .param p1, "isRemote"    # Z
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        name = "newLevel"
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    sput-boolean v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nextTickCallsSetLevel:Z

    .line 310
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    if-nez p1, :cond_0

    .line 313
    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    .line 315
    :cond_0
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetGameSpeed(F)V

    .line 316
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allentities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 317
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->allplayers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 318
    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->entityUUIDMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 319
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeClearCapes()V

    .line 320
    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->hasLevel:Z

    .line 323
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerEnt()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->entityAddedCallback(J)V

    .line 326
    if-nez p1, :cond_1

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;

    invoke-direct {v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    const-string v3, "newLevel"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 334
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 335
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_3

    .line 336
    sget-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v3, :cond_2

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modernWrapFactory:Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;

    invoke-virtual {v3, v0}, Lnet/zhuoweizhang/mcpelauncher/ModernWrapFactory;->closePopups(Landroid/app/Activity;)V

    .line 337
    :cond_2
    sget-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scriptingEnabled:Z

    if-nez v3, :cond_4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setLevelCallback(Z)V

    .line 340
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_3
    return-void

    .restart local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :cond_4
    move v1, v2

    .line 337
    goto :goto_0
.end method

.method public static setOriginalLocation(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v4, 0x1

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 874
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 875
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getOriginalLocations()Lorg/json/JSONObject;

    move-result-object v2

    .line 877
    .local v2, "originalLocations":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    const-string v4, "scriptOriginalLocations"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 883
    return-void

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "jsonException":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Setting original location failed"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static setRequestLeaveGame()V
    .locals 1

    .prologue
    .line 1416
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeCloseScreen()V

    .line 1417
    const/4 v0, 0x1

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    .line 1418
    const/16 v0, 0xa

    sput v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGameCounter:I

    .line 1419
    return-void
.end method

.method public static setupContext(Lorg/mozilla/javascript/Context;)V
    .locals 1
    .param p0, "ctx"    # Lorg/mozilla/javascript/Context;

    .prologue
    .line 1120
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 1122
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    .line 1128
    return-void
.end method

.method private static shouldLoadSkin()Z
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method private static spawnEntityImpl(FFFILjava/lang/String;)J
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "entityType"    # I
    .param p4, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 1447
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSpawnEntity(FFFILjava/lang/String;)J

    move-result-wide v0

    .line 1448
    .local v0, "retval":J
    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeEntityHasCustomSkin(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1449
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "zhuowei.bl.s"

    invoke-static {v2, v3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setExtraData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1451
    :cond_0
    return-wide v0
.end method

.method public static startDestroyBlockCallback(IIII)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "side"    # I
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "x",
            "y",
            "z",
            "side"
        }
        name = "startDestroyBlock"
    .end annotation

    .prologue
    .line 300
    const-string v0, "startDestroyBlock"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public static takeScreenshot(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1049
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->screenshotFileName:Ljava/lang/String;

    .line 1050
    const/4 v0, 0x1

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestScreenshot:Z

    .line 1051
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRequestFrameCallback()V

    .line 1052
    return-void
.end method

.method public static throwableHitCallback(JIIIIIFFFJ)V
    .locals 4
    .param p0, "projectile"    # J
    .param p2, "type"    # I
    .param p3, "side"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "z"    # I
    .param p7, "hX"    # F
    .param p8, "hY"    # F
    .param p9, "hZ"    # F
    .param p10, "targetEntity"    # J
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "projectile",
            "blockX",
            "blockY",
            "blockZ",
            "side"
        }
        name = "projectileHitBlockHook"
    .end annotation

    .prologue
    .line 634
    if-nez p2, :cond_1

    .line 635
    const-string v0, "projectileHitBlockHook"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 637
    const-string v0, "projectileHitEntityHook"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static tickCallback()V
    .locals 8
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        name = "modTick"
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 405
    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nextTickCallsSetLevel:Z

    if-eqz v4, :cond_0

    .line 406
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLevelIsRemote()Z

    move-result v4

    invoke-static {v7, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setLevelFakeCallback(ZZ)V

    .line 408
    :cond_0
    const-string v4, "modTick"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    if-eqz v4, :cond_1

    .line 411
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeOnGraphicsReset()V

    .line 412
    sput-boolean v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestedGraphicsReset:Z

    .line 415
    :cond_1
    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->sensorEnabled:Z

    if-eqz v4, :cond_2

    .line 416
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->updatePlayerOrientation()V

    .line 417
    :cond_2
    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    if-eqz v4, :cond_4

    sget v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGameCounter:I

    add-int/lit8 v5, v4, -0x1

    sput v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGameCounter:I

    if-gtz v4, :cond_4

    .line 418
    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeScreenChooserSetScreen(I)V

    .line 419
    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeLeaveGame(Z)V

    .line 420
    sput-boolean v6, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    .line 421
    sget-object v4, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 422
    sget-object v4, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mojang/minecraftpe/MainActivity;

    .line 423
    .local v2, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v2, :cond_3

    .line 424
    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$2;

    invoke-direct {v4, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$2;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v2, v4}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    :cond_3
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRequestFrameCallback()V

    .line 435
    :cond_4
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

    if-eqz v4, :cond_5

    sget-boolean v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestLeaveGame:Z

    if-nez v4, :cond_5

    .line 436
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

    iget-object v4, v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;->serverAddress:Ljava/lang/String;

    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

    iget v5, v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;->serverPort:I

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeJoinServer(Ljava/lang/String;I)V

    .line 437
    const/4 v4, 0x0

    sput-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->requestJoinServer:Lnet/zhuoweizhang/mcpelauncher/ScriptManager$JoinServerRequest;

    .line 439
    :cond_5
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 440
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    monitor-enter v5

    .line 441
    :try_start_0
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 442
    .local v3, "r":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 445
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 444
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->runOnMainThreadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 445
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    if-eqz v4, :cond_8

    sget v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDataSaveCounter:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDataSaveCounter:I

    if-gtz v4, :cond_8

    .line 449
    :try_start_2
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldData:Lnet/zhuoweizhang/mcpelauncher/WorldData;

    invoke-virtual {v4}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->save()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    :goto_1
    const/16 v4, 0xc8

    sput v4, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDataSaveCounter:I

    .line 456
    :cond_8
    return-void

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static updatePlayerOrientation()V
    .locals 4

    .prologue
    .line 459
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerEnt()J

    move-result-wide v0

    sget v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->newPlayerYaw:F

    sget v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->newPlayerPitch:F

    invoke-static {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetRot(JFF)V

    .line 460
    return-void
.end method

.method public static useItemOnCallback(IIIIIIII)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "itemid"    # I
    .param p4, "blockid"    # I
    .param p5, "side"    # I
    .param p6, "itemDamage"    # I
    .param p7, "blockDamage"    # I
    .annotation runtime Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {
            "x",
            "y",
            "z",
            "itemid",
            "blockid",
            "side",
            "itemDamage",
            "blockDamage"
        }
        name = "useItem"
    .end annotation

    .prologue
    .line 290
    const-string v0, "useItem"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method private static verifyBlockTextures(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;)V
    .locals 4
    .param p0, "requests"    # Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;

    .prologue
    .line 1406
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->terrainMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    if-nez v1, :cond_1

    .line 1413
    :cond_0
    return-void

    .line 1407
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1408
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->terrainMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->coords:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->hasIcon(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested block texture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$TextureRequests;->coords:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static wordWrapClientMessage(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x28

    .line 931
    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, "portions":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 933
    aget-object v1, v3, v0

    .line 935
    .local v1, "line":Ljava/lang/String;
    const-string v4, "\u00a7"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 937
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeClientMessage(Ljava/lang/String;)V

    .line 932
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 942
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "newStr":Ljava/lang/String;
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeClientMessage(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 946
    goto :goto_2

    .line 947
    .end local v2    # "newStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 948
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeClientMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 951
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    return-void
.end method
