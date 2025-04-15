.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;
.super Ljava/lang/Object;
.source "ManageSkinsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "zz_skin_download_source"

    const-string v4, "none"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "mode":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    const-string v2, "mojang_pc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->pref_zz_skin_download_source:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->skin_download_do_not_download:I

    invoke-virtual {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->skin_download_download_pc:I

    invoke-virtual {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    .local v1, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->getCurrentMode()I

    move-result v2

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3$1;

    invoke-direct {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 90
    return-void
.end method
