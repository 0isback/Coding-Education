.class Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method private constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p2, "x1"    # Lcom/mojang/minecraftpe/MainActivity$1;

    .prologue
    .line 2388
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "e"    # Landroid/text/Editable;

    .prologue
    .line 2392
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetTextboxText(Ljava/lang/String;)V

    .line 2393
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$800(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    .line 2394
    .local v0, "commandHistory":Z
    if-eqz v0, :cond_0

    .line 2398
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1700(Lcom/mojang/minecraftpe/MainActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$1700(Lcom/mojang/minecraftpe/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2399
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v1}, Lcom/mojang/minecraftpe/MainActivity;->access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$1700(Lcom/mojang/minecraftpe/MainActivity;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2402
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "c"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2405
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$1800(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$1900(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2418
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "c"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2408
    return-void
.end method
