.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;
.super Ljava/lang/Object;
.source "ManageTexturepacksActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_ENABLE:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;)V

    .line 196
    :goto_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->loadHistory()V

    .line 197
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$4;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DISABLE:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;)V

    goto :goto_0
.end method
