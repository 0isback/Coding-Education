.class public final Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
.super Ljava/lang/Object;
.source "MinecraftVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator080;,
        Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator;,
        Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
    }
.end annotation


# static fields
.field public static final FUZZY_VERSION:Z = true

.field public static amazonVer:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

.field public static context:Landroid/content/Context;

.field public static versions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public guiBlocksPatch:[B

.field public guiBlocksUnpatch:[B

.field public ipAddressOffset:I

.field public libLoadOffset:I

.field public libLoadOffsetBegin:I

.field public needsWarning:Z

.field public noAnimationPatch:[B

.field public noAnimationUnpatch:[B

.field public portOffset:I

.field public translator:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versions:Ljava/util/Map;

    .line 101
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    const v1, 0x1dd99df3

    const/4 v2, 0x0

    const v3, 0x28c9b0

    const/16 v4, 0x1000

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v0 .. v11}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;-><init>(IZIILnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;I[B[B[B[BI)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->add(Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;)V

    .line 104
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    const v1, 0x11eddbf3

    const/4 v2, 0x0

    const v3, 0x28c9b0

    const/16 v4, 0x1000

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v0 .. v11}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;-><init>(IZIILnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;I[B[B[B[BI)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->add(Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;)V

    .line 107
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    const v1, 0x17e3bcf3

    const/4 v2, 0x0

    const v3, 0x28c9b0

    const/16 v4, 0x1000

    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator080;

    invoke-direct {v5}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$AmazonTranslator080;-><init>()V

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v0 .. v11}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;-><init>(IZIILnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;I[B[B[B[BI)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->add(Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;)V

    .line 109
    return-void
.end method

.method public constructor <init>(IZIILnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;I[B[B[B[BI)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "needsWarning"    # Z
    .param p3, "libLoadOffsetBegin"    # I
    .param p4, "libLoadOffset"    # I
    .param p5, "translator"    # Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;
    .param p6, "ipAddressOffset"    # I
    .param p7, "guiBlocksPatch"    # [B
    .param p8, "guiBlocksUnpatch"    # [B
    .param p9, "noAnimationPatch"    # [B
    .param p10, "noAnimationUnpatch"    # [B
    .param p11, "portOffset"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versionCode:I

    .line 28
    iput-boolean p2, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->needsWarning:Z

    .line 29
    iput p3, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->libLoadOffsetBegin:I

    .line 30
    iput p4, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->libLoadOffset:I

    .line 31
    iput p6, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->ipAddressOffset:I

    .line 32
    iput-object p7, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->guiBlocksPatch:[B

    .line 33
    iput-object p8, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->guiBlocksUnpatch:[B

    .line 34
    iput-object p9, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->noAnimationPatch:[B

    .line 35
    iput-object p10, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->noAnimationUnpatch:[B

    .line 36
    iput p11, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->portOffset:I

    .line 37
    iput-object p5, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->translator:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion$PatchTranslator;

    .line 38
    return-void
.end method

.method public static add(Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;)V
    .locals 2
    .param p0, "version"    # Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .prologue
    .line 41
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versions:Ljava/util/Map;

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static get(I)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    .locals 3
    .param p0, "versionCode"    # I

    .prologue
    .line 57
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 58
    .local v0, "ver":Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->getDefault()Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v0

    .line 62
    :cond_0
    iget v1, v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versionCode:I

    const v2, 0x1dd99df3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->amazonVer:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 65
    :cond_1
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.mojang.minecraftpe"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 71
    .local v1, "mcPkgInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 72
    .local v2, "minecraftVersionCode":I
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->get(I)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 74
    .end local v1    # "mcPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "minecraftVersionCode":I
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->getDefault()Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDefault()Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    .locals 3

    .prologue
    .line 79
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versions:Ljava/util/Map;

    const v2, 0x1dd99df3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 81
    .local v0, "ver":Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->amazonVer:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 84
    :cond_0
    return-object v0
.end method

.method public static getRaw(I)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    .locals 3
    .param p0, "versionCode"    # I

    .prologue
    .line 45
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versions:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 46
    .local v0, "ver":Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;
    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->getDefault()Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v0

    .line 50
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->versionCode:I

    const v2, 0x1dd99df3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->amazonVer:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 53
    :cond_1
    return-object v0
.end method

.method public static isAmazon()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method
