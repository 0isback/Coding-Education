.class Lcom/mojang/minecraftpe/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->scriptErrorCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$scriptName:Ljava/lang/String;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$28;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$scriptName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2079
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2080
    .local v2, "strWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2081
    .local v1, "pWriter":Ljava/io/PrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred in script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$scriptName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$t:Ljava/lang/Throwable;

    instance-of v3, v3, Lorg/mozilla/javascript/RhinoException;

    if-eqz v3, :cond_0

    .line 2083
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$t:Ljava/lang/Throwable;

    check-cast v3, Lorg/mozilla/javascript/RhinoException;

    invoke-virtual {v3}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v0

    .line 2084
    .local v0, "lineSource":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    .end local v0    # "lineSource":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$28;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2088
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$28;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_execution_error:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040001

    new-instance v5, Lcom/mojang/minecraftpe/MainActivity$28$1;

    invoke-direct {v5, p0, v2}, Lcom/mojang/minecraftpe/MainActivity$28$1;-><init>(Lcom/mojang/minecraftpe/MainActivity$28;Ljava/io/StringWriter;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2100
    return-void
.end method
