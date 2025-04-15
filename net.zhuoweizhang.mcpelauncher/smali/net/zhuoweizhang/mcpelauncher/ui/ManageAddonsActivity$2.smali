.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;
.super Ljava/lang/Object;
.source "ManageAddonsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;)V

    .line 79
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "sh":Landroid/content/SharedPreferences$Editor;
    const-string v1, "zz_load_native_addons"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->refreshABToggle()V

    .line 83
    return-void

    .line 77
    .end local v0    # "sh":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$2;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0
.end method
