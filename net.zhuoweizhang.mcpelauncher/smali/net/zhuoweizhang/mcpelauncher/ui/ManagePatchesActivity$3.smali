.class Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;
.super Ljava/lang/Object;
.source "ManagePatchesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 370
    if-eqz p2, :cond_0

    .line 371
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;)V

    .line 375
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    .local v0, "sh":Landroid/content/SharedPreferences$Editor;
    const-string v1, "zz_manage_patches"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->refreshABToggle()V

    .line 379
    return-void

    .line 373
    .end local v0    # "sh":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity$3;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0
.end method
