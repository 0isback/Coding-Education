.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;
.super Ljava/lang/Object;
.source "ScriptManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AfterSkinDownloadAction"
.end annotation


# instance fields
.field private entityId:J

.field private skinPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "entityId"    # J
    .param p3, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 3780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3781
    iput-wide p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;->entityId:J

    .line 3782
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;->skinPath:Ljava/lang/String;

    .line 3783
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "images/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;->skinPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3787
    .local v0, "skinFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3790
    :cond_0
    :goto_0
    return-void

    .line 3789
    :cond_1
    iget-wide v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;->entityId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;->skinPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setMobSkin(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
