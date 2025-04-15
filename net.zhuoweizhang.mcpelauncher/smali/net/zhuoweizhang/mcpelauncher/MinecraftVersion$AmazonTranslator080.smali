.class public Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator080;
.super Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
.source "MinecraftVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmazonTranslator080"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "addr"    # I

    .prologue
    .line 128
    add-int/lit8 v0, p1, -0x28

    return v0
.end method
