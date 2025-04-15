.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;
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
    name = "AfterCapeDownloadAction"
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
    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3798
    iput-wide p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;->entityId:J

    .line 3799
    iput-object p3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;->skinPath:Ljava/lang/String;

    .line 3800
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3804
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;->skinPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3805
    .local v1, "skinFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3810
    .end local v1    # "skinFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 3806
    .restart local v1    # "skinFile":Ljava/io/File;
    :cond_1
    iget-wide v2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;->entityId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterCapeDownloadAction;->skinPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeEntityApi;->setCape(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3807
    .end local v1    # "skinFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3808
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
