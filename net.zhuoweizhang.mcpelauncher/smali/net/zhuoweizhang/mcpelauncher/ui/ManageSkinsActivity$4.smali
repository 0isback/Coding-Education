.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;
.super Ljava/lang/Object;
.source "ManageSkinsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 201
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_ENABLE:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setSkin(Ljava/io/File;)V

    .line 209
    :goto_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->loadHistory()V

    .line 210
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->REQUEST_DISABLE:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;->setSkin(Ljava/io/File;)V

    goto :goto_0
.end method
