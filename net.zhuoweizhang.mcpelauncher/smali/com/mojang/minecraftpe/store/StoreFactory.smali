.class public Lcom/mojang/minecraftpe/store/StoreFactory;
.super Ljava/lang/Object;
.source "StoreFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAmazonAppStore(Lcom/mojang/minecraftpe/store/StoreListener;)Lcom/mojang/minecraftpe/store/Store;
    .locals 1
    .param p0, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;

    .prologue
    .line 13
    new-instance v0, Lcom/mojang/minecraftpe/store/Store;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/store/Store;-><init>(Lcom/mojang/minecraftpe/store/StoreListener;)V

    return-object v0
.end method

.method public static createGooglePlayStore(Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)Lcom/mojang/minecraftpe/store/Store;
    .locals 1
    .param p0, "something"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;

    .prologue
    .line 8
    new-instance v0, Lcom/mojang/minecraftpe/store/Store;

    invoke-direct {v0, p1}, Lcom/mojang/minecraftpe/store/Store;-><init>(Lcom/mojang/minecraftpe/store/StoreListener;)V

    return-object v0
.end method

.method public static createSamsungAppStore(Lcom/mojang/minecraftpe/store/StoreListener;)Lcom/mojang/minecraftpe/store/Store;
    .locals 1
    .param p0, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;

    .prologue
    .line 18
    new-instance v0, Lcom/mojang/minecraftpe/store/Store;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/store/Store;-><init>(Lcom/mojang/minecraftpe/store/StoreListener;)V

    return-object v0
.end method
