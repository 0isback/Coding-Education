.class public Lnet/zhuoweizhang/mcpelauncher/WorldData;
.super Ljava/lang/Object;
.source "WorldData.java"


# instance fields
.field dirty:Z

.field mData:Lorg/json/JSONObject;

.field mDir:Ljava/io/File;

.field mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z

    .line 12
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mDir:Ljava/io/File;

    .line 13
    new-instance v0, Ljava/io/File;

    const-string v1, "blocklauncher_data.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    .line 14
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->load()V

    .line 15
    return-void
.end method


# virtual methods
.method public clearEntityData(J)V
    .locals 5
    .param p1, "entityId"    # J

    .prologue
    .line 93
    :try_start_0
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    const-string v3, "entities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    .local v1, "obj":Lorg/json/JSONObject;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z

    .line 95
    iget-boolean v2, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 99
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "je":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getEntityData(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "entityId"    # J
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    const-string v4, "entities"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    .local v0, "entityData":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 85
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 86
    .end local v0    # "entityData":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected load()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->loadDefaults()V

    .line 49
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 23
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 24
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 26
    .local v5, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    const/4 v5, 0x1

    .line 30
    if-eqz v2, :cond_2

    .line 32
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 41
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v4

    .line 43
    .local v4, "je":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->loadDefaults()V

    goto :goto_0

    .line 33
    .end local v4    # "je":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 35
    .local v3, "ie":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 30
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ie":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_3

    .line 32
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 36
    :cond_3
    :goto_3
    throw v6

    .line 33
    :catch_2
    move-exception v3

    .line 35
    .restart local v3    # "ie":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 47
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ie":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_4
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/WorldData;->loadDefaults()V

    goto :goto_0

    .line 30
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method protected loadDefaults()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    const-string v2, "entities"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "je":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public save()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z

    if-nez v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 106
    .local v0, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0    # "fis":Ljava/io/FileOutputStream;
    .local v1, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 115
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1    # "fis":Ljava/io/FileOutputStream;
    .end local v2    # "ie":Ljava/io/IOException;
    .restart local v0    # "fis":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_2

    .line 112
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :cond_2
    :goto_2
    throw v3

    .line 113
    :catch_1
    move-exception v2

    .line 115
    .restart local v2    # "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 110
    .end local v0    # "fis":Ljava/io/FileOutputStream;
    .end local v2    # "ie":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileOutputStream;
    .restart local v0    # "fis":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setEntityData(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "entityId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v3, "."

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 62
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Entity data keys must be in format of author.modname.keyname; for example, coolmcpemodder.sz.favoritecolor"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_0
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    const-string v4, "entities"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "obj":Lorg/json/JSONObject;
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->mData:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    .local v0, "entityData":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "entityData":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .restart local v0    # "entityData":Lorg/json/JSONObject;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/WorldData;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    .end local v0    # "entityData":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
