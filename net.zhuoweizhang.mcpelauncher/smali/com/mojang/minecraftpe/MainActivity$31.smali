.class Lcom/mojang/minecraftpe/MainActivity$31;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->touchImmersiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$immersive:Z


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Z)V
    .locals 0

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$31;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/MainActivity$31;->val$immersive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$31;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity$31;->val$immersive:Z

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1600(Lcom/mojang/minecraftpe/MainActivity;Z)V

    .line 2217
    return-void
.end method
