.class final Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;
.super Ljava/lang/Object;
.source "ManageAddonsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddonListItem"
.end annotation


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public displayName:Ljava/lang/String;

.field public enabled:Z

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;


# direct methods
.method public constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "enabled"    # Z

    .prologue
    .line 259
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    .line 260
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 261
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    .line 262
    iput-boolean p3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    .line 263
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity$AddonListItem;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;->access$600()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
