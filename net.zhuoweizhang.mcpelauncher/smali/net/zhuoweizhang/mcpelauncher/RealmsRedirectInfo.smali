.class public Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;
.super Ljava/lang/Object;
.source "RealmsRedirectInfo.java"


# static fields
.field public static targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountUrl:Ljava/lang/String;

.field public loginUrl:Ljava/lang/String;

.field public peoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->targets:Ljava/util/Map;

    .line 26
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "https://account.mojang.com/m/login?app=mcpe"

    invoke-direct {v0, v1, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->add(Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "peoUrl"    # Ljava/lang/String;
    .param p2, "accountUrl"    # Ljava/lang/String;
    .param p3, "loginUrl"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->loginUrl:Ljava/lang/String;

    .line 11
    const-string v0, "NONE"

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->peoUrl:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->peoUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->accountUrl:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->loginUrl:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private static add(Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;)V
    .locals 2
    .param p0, "info"    # Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    .prologue
    .line 22
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->targets:Ljava/util/Map;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->peoUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
