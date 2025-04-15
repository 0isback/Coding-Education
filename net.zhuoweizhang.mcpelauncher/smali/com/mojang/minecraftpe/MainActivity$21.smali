.class Lcom/mojang/minecraftpe/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->updateTextboxText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1508
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$800(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    .line 1509
    .local v0, "commandHistory":Z
    if-eqz v0, :cond_0

    .line 1510
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1512
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$text:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1516
    :goto_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->access$1000(Lcom/mojang/minecraftpe/MainActivity;I)V

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1100(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    return-void

    .line 1514
    :cond_1
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$text:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
