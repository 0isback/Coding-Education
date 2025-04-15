.class public final Lnet/zhuoweizhang/mcpelauncher/api/modpe/ParticleType;
.super Ljava/lang/Object;
.source "ParticleType.java"


# static fields
.field public static final angryVillager:I = 0x1e

.field public static final bubble:I = 0x1

.field public static final cloud:I = 0x4

.field public static final crit:I = 0x2

.field public static final dripLava:I = 0x16

.field public static final dripWater:I = 0x15

.field public static final enchantmenttable:I = 0x20

.field public static final fallingDust:I = 0x17

.field public static final flame:I = 0x6

.field public static final happyVillager:I = 0x1f

.field public static final heart:I = 0xf

.field public static final hugeexplosion:I = 0xd

.field public static final hugeexplosionSeed:I = 0xc

.field public static final ink:I = 0x1b

.field public static final itemBreak:I = 0xa

.field public static final largeexplode:I = 0x5

.field public static final lava:I = 0x7

.field public static final mobFlame:I = 0xe

.field public static final note:I = 0x22

.field public static final portal:I = 0x12

.field public static final rainSplash:I = 0x1d

.field public static final redstone:I = 0x9

.field public static final slime:I = 0x1c

.field public static final smoke:I = 0x3

.field public static final smoke2:I = 0x8

.field public static final snowballpoof:I = 0xb

.field public static final spell:I = 0x18

.field public static final spell2:I = 0x19

.field public static final spell3:I = 0x1a

.field public static final splash:I = 0x13

.field public static final suspendedTown:I = 0x11

.field public static final terrain:I = 0x10

.field public static final waterWake:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkValid(II)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "data"    # I

    .prologue
    .line 40
    if-ltz p0, :cond_0

    const/16 v0, 0x22

    if-le p0, v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid particle type: must be between 1 and 34"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breaking item particle requires argument of id<<16|data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1b

    if-ne p0, v0, :cond_4

    .line 47
    :cond_3
    const/16 v0, 0x64

    if-ge p1, v0, :cond_4

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size percent parameter for smoke particle must be 100 or above"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
