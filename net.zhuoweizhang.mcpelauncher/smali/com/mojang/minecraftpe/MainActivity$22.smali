.class Lcom/mojang/minecraftpe/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->showHiddenTextbox(Ljava/lang/String;IZ)V
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
    .line 1536
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$22;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$22;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$1200(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$22;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1300(Lcom/mojang/minecraftpe/MainActivity;I)V

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$22;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$1400(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$22;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1300(Lcom/mojang/minecraftpe/MainActivity;I)V

    goto :goto_0
.end method
