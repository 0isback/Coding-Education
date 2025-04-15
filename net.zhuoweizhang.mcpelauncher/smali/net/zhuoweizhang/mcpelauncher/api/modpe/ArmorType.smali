.class public Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;
.super Ljava/lang/Object;
.source "ArmorType.java"


# static fields
.field public static boots:I

.field public static chestplate:I

.field public static helmet:I

.field public static leggings:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;->helmet:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;->chestplate:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;->leggings:I

    .line 7
    const/4 v0, 0x3

    sput v0, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ArmorType;->boots:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
