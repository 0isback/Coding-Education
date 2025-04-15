.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;
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
    name = "SkinLoader"
.end annotation


# instance fields
.field private entityId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-wide p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;->entityId:J

    .line 1257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1261
    :try_start_0
    iget-wide v6, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;->entityId:J

    invoke-static {v6, v7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetPlayerName(J)Ljava/lang/String;

    move-result-object v1

    .line 1262
    .local v1, "playerName":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Player name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entity ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;->entityId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1263
    if-nez v1, :cond_1

    .line 1286
    .end local v1    # "playerName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1265
    .restart local v1    # "playerName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1266
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mob/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, "skinName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "images/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1269
    .local v2, "skinFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1270
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1277
    .local v5, "urlString":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v4, "url":Ljava/net/URL;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;

    new-instance v8, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;

    iget-wide v10, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SkinLoader;->entityId:J

    invoke-direct {v8, v10, v11, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$AfterSkinDownloadAction;-><init>(JLjava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct {v7, v4, v2, v8, v9}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;-><init>(Ljava/net/URL;Ljava/io/File;Ljava/lang/Runnable;Z)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    .end local v1    # "playerName":Ljava/lang/String;
    .end local v2    # "skinFile":Ljava/io/File;
    .end local v3    # "skinName":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
