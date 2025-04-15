.class Lcom/mojang/minecraftpe/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createInsertTextDialog()Landroid/app/Dialog;
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
    .line 952
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$16;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$16;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const-string v2, "\u0008"

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->nativeTypeCharacter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$16;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v2, 0x1005

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    goto :goto_0
.end method
