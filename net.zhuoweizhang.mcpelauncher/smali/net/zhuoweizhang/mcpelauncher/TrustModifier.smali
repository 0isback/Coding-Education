.class public Lnet/zhuoweizhang/mcpelauncher/TrustModifier;
.super Ljava/lang/Object;
.source "TrustModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/TrustModifier$1;,
        Lnet/zhuoweizhang/mcpelauncher/TrustModifier$AlwaysTrustManager;,
        Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;
    }
.end annotation


# static fields
.field private static final TRUSTING_HOSTNAME_VERIFIER:Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;

.field private static factory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;-><init>(Lnet/zhuoweizhang/mcpelauncher/TrustModifier$1;)V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->TRUSTING_HOSTNAME_VERIFIER:Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static declared-synchronized prepFactory(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .param p0, "httpsConnection"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 32
    const-class v2, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 33
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 34
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/TrustModifier$AlwaysTrustManager;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lnet/zhuoweizhang/mcpelauncher/TrustModifier$AlwaysTrustManager;-><init>(Lnet/zhuoweizhang/mcpelauncher/TrustModifier$1;)V

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 35
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;

    .line 37
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :cond_0
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static relaxHostChecking(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 20
    instance-of v2, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 21
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 22
    .local v1, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->prepFactory(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 23
    .local v0, "factory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 24
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/TrustModifier;->TRUSTING_HOSTNAME_VERIFIER:Lnet/zhuoweizhang/mcpelauncher/TrustModifier$TrustingHostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 26
    .end local v0    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v1    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    return-void
.end method
