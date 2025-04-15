.class public Lcom/mojang/minecraftpe/store/Store;
.super Ljava/lang/Object;
.source "Store.java"


# instance fields
.field private listener:Lcom/mojang/minecraftpe/store/StoreListener;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mojang/minecraftpe/store/StoreListener;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/Store;->listener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 7
    return-void
.end method


# virtual methods
.method public destructor()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Store: Destructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Store: Get store ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    const-string v0, "Placeholder store ID"

    return-object v0
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 3
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store: Purchase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 2
    .param p1, "products"    # [Ljava/lang/String;

    .prologue
    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Store: Query products"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public queryPurchases()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Store: Query purchases"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method
