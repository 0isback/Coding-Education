.class public Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator;
.super Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
.source "MinecraftVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmazonTranslator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "addr"    # I

    .prologue
    .line 117
    const v0, 0xdae60

    if-ge p1, v0, :cond_0

    .line 118
    add-int/lit8 v0, p1, 0x40

    .line 120
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x18

    goto :goto_0
.end method
