.class public final Lnet/zhuoweizhang/mcpelauncher/AdConfiguration;
.super Ljava/lang/Object;
.source "AdConfiguration.java"


# static fields
.field public static final AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-2652482030334356/6560239824"

.field public static final DEVICE_ID_TESTER:Ljava/lang/String; = "DF28838C26BDFAE7EB063BFEB7A241D3"

.field public static final DEVICE_ID_TESTER2:Ljava/lang/String; = "C0ABF0B025E43414E6EF63D720DCEFDE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "DF28838C26BDFAE7EB063BFEB7A241D3"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-string v1, "C0ABF0B025E43414E6EF63D720DCEFDE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method
