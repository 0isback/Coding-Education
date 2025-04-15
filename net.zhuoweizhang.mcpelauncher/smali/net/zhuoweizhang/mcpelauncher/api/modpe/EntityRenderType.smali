.class public final Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityRenderType;
.super Ljava/lang/Object;
.source "EntityRenderType.java"


# static fields
.field private static final alltypes:[I

.field public static final arrow:I = 0x19

.field public static final bat:I = 0xa

.field public static final blaze:I = 0x12

.field public static final boat:I = 0x23

.field public static final camera:I = 0x30

.field public static final chicken:I = 0x5

.field public static final cow:I = 0x6

.field public static final creeper:I = 0x16

.field public static final egg:I = 0x1d

.field public static final enderman:I = 0x18

.field public static final expPotion:I = 0x2d

.field public static final experienceOrb:I = 0x28

.field public static final fallingTile:I = 0x21

.field public static final fireball:I = 0x25

.field public static final fishHook:I = 0x1a

.field public static final ghast:I = 0x11

.field public static final human:I = 0x3

.field public static final ironGolem:I = 0x2a

.field public static final item:I = 0x4

.field public static final lavaSlime:I = 0x10

.field public static final lightningBolt:I = 0x29

.field public static final map:I = 0x32

.field public static final minecart:I = 0x22

.field public static final mushroomCow:I = 0x7

.field public static final ocelot:I = 0x2b

.field public static final painting:I = 0x20

.field public static final pig:I = 0x8

.field public static final player:I = 0x1b

.field public static final rabbit:I = 0x2e

.field public static final sheep:I = 0x9

.field public static final silverfish:I = 0x15

.field public static final skeleton:I = 0x13

.field public static final slime:I = 0x17

.field public static final smallFireball:I = 0x26

.field public static final snowGolem:I = 0x2c

.field public static final snowball:I = 0x1c

.field public static final spider:I = 0x14

.field public static final squid:I = 0x24

.field public static final thrownPotion:I = 0x1f

.field public static final tnt:I = 0x2

.field public static final unknownItem:I = 0x1e

.field public static final villager:I = 0xc

.field public static final villagerZombie:I = 0x27

.field public static final witch:I = 0x2f

.field public static final wolf:I = 0xb

.field public static final zombie:I = 0xe

.field public static final zombiePigman:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityRenderType;->alltypes:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x32
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidRenderType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 55
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/EntityRenderType;->alltypes:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
