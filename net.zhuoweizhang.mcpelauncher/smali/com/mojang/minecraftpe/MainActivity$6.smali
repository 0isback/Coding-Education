.class Lcom/mojang/minecraftpe/MainActivity$6;
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
    .line 777
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 779
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 780
    return-void
.end method
