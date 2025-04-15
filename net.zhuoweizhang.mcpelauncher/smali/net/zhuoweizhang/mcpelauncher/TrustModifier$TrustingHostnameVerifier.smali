.class final Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;
.super Ljava/lang/Object;
.source "TrustModifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/TrustModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrustingHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/TrustModifier$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/TrustModifier$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
