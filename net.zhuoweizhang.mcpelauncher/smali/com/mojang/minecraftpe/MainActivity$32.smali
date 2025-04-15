.class Lcom/mojang/minecraftpe/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->clearRuntimeOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$32;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$32;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->removeDialog(I)V

    .line 2243
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$32;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v1, 0x1009

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->removeDialog(I)V

    .line 2244
    return-void
.end method
