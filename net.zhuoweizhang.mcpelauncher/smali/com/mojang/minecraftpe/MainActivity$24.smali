.class Lcom/mojang/minecraftpe/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setupHoverCar()V
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
    .line 1676
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$24;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1678
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_show_insert_text"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1679
    .local v0, "showInsertText":Z
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$24;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    if-eqz v0, :cond_0

    const/16 v1, 0x1009

    :goto_0
    invoke-virtual {v2, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    .line 1681
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$24;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->resetOrientation()V

    .line 1683
    return-void

    .line 1679
    :cond_0
    const/16 v1, 0x1001

    goto :goto_0
.end method
