.class Lcom/mojang/minecraftpe/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createRuntimeOptionsDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$insertText:Ljava/lang/CharSequence;

.field final synthetic val$optionMenu:Ljava/lang/CharSequence;

.field final synthetic val$options:Ljava/util/List;

.field final synthetic val$startRecording:Ljava/lang/CharSequence;

.field final synthetic val$stopRecording:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$options:Ljava/util/List;

    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$optionMenu:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$insertText:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$startRecording:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$stopRecording:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogI"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, 0x0

    const v6, 0x104000a

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 819
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$options:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 820
    .local v0, "buttonText":Ljava/lang/CharSequence;
    if-nez p2, :cond_1

    .line 821
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const-class v4, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v4, 0x1a0

    invoke-virtual {v3, v2, v4}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 853
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    if-ne p2, v1, :cond_3

    .line 824
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v3}, Lcom/mojang/minecraftpe/MainActivity;->hasScriptSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const-class v4, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v3, v2}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 829
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scripts are not supported yet in Minecraft PE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v5}, Lcom/mojang/minecraftpe/MainActivity;->access$100(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 834
    :cond_3
    const/4 v4, 0x2

    if-ne p2, v4, :cond_6

    .line 835
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "zz_script_enable"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 838
    .local v1, "hasLoadedScripts":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 839
    const-string v3, "screenshot"

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->takeScreenshot(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "hasLoadedScripts":Z
    :cond_4
    move v1, v3

    .line 835
    goto :goto_1

    .line 841
    .restart local v1    # "hasLoadedScripts":Z
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->take_screenshot_requires_modpe_script:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 845
    .end local v1    # "hasLoadedScripts":Z
    :cond_6
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$optionMenu:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 846
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v4}, Lcom/mojang/minecraftpe/MainActivity;->getOptionsActivityIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 847
    :cond_7
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$insertText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 848
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/16 v4, 0x1007

    invoke-virtual {v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 849
    :cond_8
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$startRecording:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->val$stopRecording:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    :cond_9
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v3}, Lcom/mojang/minecraftpe/MainActivity;->access$200(Lcom/mojang/minecraftpe/MainActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x147

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
