.class Lcom/mojang/minecraftpe/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createCopyWorldDialog()Landroid/app/Dialog;
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
    .line 900
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v5, 0x1

    .line 902
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    .line 903
    .local v0, "dialog":Landroid/app/AlertDialog;
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$id;->world_name_entry:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "worldName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iput-object v3, v2, Lcom/mojang/minecraftpe/MainActivity;->userInputStrings:[Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput v5, v2, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 907
    return-void
.end method
