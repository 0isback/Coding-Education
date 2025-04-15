.class Lcom/mojang/minecraftpe/MainActivity$27$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$27;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity$27;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$27$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$27;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$27$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "aDialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 2066
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$27$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$27;

    iget-object v1, v1, Lcom/mojang/minecraftpe/MainActivity$27;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2067
    .local v0, "mgr":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$27$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    return-void
.end method
