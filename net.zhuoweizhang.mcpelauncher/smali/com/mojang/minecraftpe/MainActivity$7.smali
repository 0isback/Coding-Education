.class Lcom/mojang/minecraftpe/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createCreateWorldDialog()Landroid/app/Dialog;
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
    .line 762
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x1

    .line 764
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 765
    .local v0, "dialog":Landroid/app/AlertDialog;
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$id;->world_name_entry:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "worldName":Ljava/lang/String;
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$id;->world_seed_entry:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "worldSeed":Ljava/lang/String;
    sget-object v5, Lcom/mojang/minecraftpe/MainActivity;->GAME_MODES:[Ljava/lang/String;

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$id;->world_gamemode_spinner:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v1, v5, v4

    .line 772
    .local v1, "worldGameMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    const/4 v6, 0x2

    aput-object v1, v5, v6

    iput-object v5, v4, Lcom/mojang/minecraftpe/MainActivity;->userInputStrings:[Ljava/lang/String;

    .line 773
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput v7, v4, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 775
    return-void
.end method
