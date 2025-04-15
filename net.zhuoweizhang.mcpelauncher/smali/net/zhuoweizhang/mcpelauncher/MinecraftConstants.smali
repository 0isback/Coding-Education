.class public final Lnet/zhuoweizhang/mcpelauncher/MinecraftConstants;
.super Ljava/lang/Object;
.source "MinecraftConstants.java"


# static fields
.field public static final GUI_BLOCKS_PATCH:[B

.field public static final GUI_BLOCKS_UNPATCH:[B

.field public static final LIB_LOAD_OFFSET:I = 0x1000

.field public static final LIB_LOAD_OFFSET_BEGIN:I = 0x28c9b0

.field public static final MINECRAFT_VERSION_CODE:I = 0x1dd99df3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 9
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftConstants;->GUI_BLOCKS_PATCH:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftConstants;->GUI_BLOCKS_UNPATCH:[B

    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        -0x1t
        0x50t
        0x54t
        0x50t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x13t
        0x14t
        -0x24t
        0x4ft
        -0x10t
        -0x1t
        0x30t
        0x70t
        0x47t
        0x0t
        0x13t
        0x1bt
        0x38t
        0x0t
        -0x41t
        0x0t
        -0x41t
    .end array-data

    .line 15
    :array_1
    .array-data 1
        -0x1t
        0x50t
        0x54t
        0x50t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xet
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x13t
        0x14t
        -0x24t
        0x38t
        -0x4bt
        0x5t
        0x46t
        0x33t
        -0x10t
        0x0t
        0x13t
        0x1bt
        0x38t
        -0x1t
        -0x9t
        -0x7at
        -0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
