.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3$1;
.super Ljava/lang/Object;
.source "ManageSkinsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3$1;->this$1:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "prefs":Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_0

    .line 83
    const-string v1, "zz_skin_download_source"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void

    .line 79
    :pswitch_0
    const-string v1, "zz_skin_download_source"

    const-string v2, "mojang_pc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
