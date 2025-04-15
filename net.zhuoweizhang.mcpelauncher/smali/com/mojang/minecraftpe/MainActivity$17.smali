.class Lcom/mojang/minecraftpe/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$17;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$17;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 970
    :try_start_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$17;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 971
    .local v2, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "line":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 972
    if-eqz v1, :cond_0

    .line 973
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$17;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->nativeTypeCharacter(Ljava/lang/String;)V

    .line 976
    :cond_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$17;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->nativeTypeCharacter(Ljava/lang/String;)V

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    :cond_1
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$17;->val$editText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v1    # "line":I
    .end local v2    # "lines":[Ljava/lang/String;
    :goto_1
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$17;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v4, 0x1005

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    goto :goto_1
.end method
