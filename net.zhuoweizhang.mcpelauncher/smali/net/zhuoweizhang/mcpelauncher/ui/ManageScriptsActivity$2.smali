.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;
.super Ljava/lang/Object;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 131
    if-eqz p2, :cond_0

    .line 132
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    .line 136
    :goto_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "sh":Landroid/content/SharedPreferences$Editor;
    const-string v1, "zz_script_enable"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshABToggle()V

    .line 141
    return-void

    .line 134
    .end local v0    # "sh":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0
.end method
