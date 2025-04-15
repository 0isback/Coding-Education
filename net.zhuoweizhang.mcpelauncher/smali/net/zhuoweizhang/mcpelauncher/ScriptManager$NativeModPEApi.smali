.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeModPEApi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3029
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 3030
    return-void
.end method

.method public static dumpVtable(Ljava/lang/String;I)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "size"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_ZTV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDumpVtable(Ljava/lang/String;I)V

    .line 3263
    return-void
.end method

.method public static getBytesFromTexturePack(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3240
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3241
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 3242
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 3243
    invoke-virtual {v0, p0}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 3246
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getI18n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3267
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetI18NString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3272
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetLanguageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLevelName(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "worldDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3091
    new-instance v2, Ljava/io/File;

    const-string v4, "levelname.txt"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3092
    .local v2, "nameFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 3098
    :goto_0
    return-object v3

    .line 3093
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3094
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 3095
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 3096
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 3097
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3098
    .local v3, "worldName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMinecraftVersion()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3210
    :try_start_0
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.mojang.minecraftpe"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3215
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 3213
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 3214
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3215
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public static langEdit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3184
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetI18NString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public static leaveGame()V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3168
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1400()V

    .line 3169
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3034
    const-string v0, "MCPELauncherLog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    return-void
.end method

.method public static openInputStreamFromTexturePack(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3251
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3252
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    .line 3253
    .local v0, "main":Lcom/mojang/minecraftpe/MainActivity;
    if-eqz v0, :cond_0

    .line 3254
    invoke-virtual {v0, p0}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 3257
    .end local v0    # "main":Lcom/mojang/minecraftpe/MainActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static overrideTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "theOverridden"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3054
    invoke-static {p1, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1300(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    return-void
.end method

.method public static readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "prefName"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3143
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockLauncherModPEScript"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3145
    .local v0, "sPrefs":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeData(Ljava/lang/String;)V
    .locals 5
    .param p0, "prefName"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3159
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlockLauncherModPEScript"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3161
    .local v1, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3162
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3164
    return-void
.end method

.method public static resetFov()V
    .locals 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetFov(FZ)V

    .line 3205
    return-void
.end method

.method public static resetImages()V
    .locals 0
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3059
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 3060
    return-void
.end method

.method public static saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "prefName"    # Ljava/lang/String;
    .param p1, "prefValue"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3150
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlockLauncherModPEScript"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3152
    .local v1, "sPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3153
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3155
    return-void
.end method

.method public static selectLevel(Ljava/lang/String;)V
    .locals 13
    .param p0, "levelDir"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3103
    move-object v4, p0

    .line 3104
    .local v4, "levelDirName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string v10, "/sdcard/games/com.mojang/minecraftWorlds"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3105
    .local v9, "worldsDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3106
    .local v6, "theDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 3107
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v7, v0, v1

    .line 3109
    .local v7, "worldDir":Ljava/io/File;
    :try_start_0
    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->getLevelName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 3110
    .local v8, "worldName":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3111
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3112
    move-object v6, v7

    .line 3120
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "worldDir":Ljava/io/File;
    .end local v8    # "worldName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 3121
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The selected world "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not exist."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 3115
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v7    # "worldDir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 3116
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3107
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3123
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "worldDir":Ljava/io/File;
    :cond_2
    sget-object v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->worldDir:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3124
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "Attempted to load level that is already loaded - ignore"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3139
    .end local v4    # "levelDirName":Ljava/lang/String;
    :goto_1
    return-void

    .line 3127
    .restart local v4    # "levelDirName":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 3129
    .local v5, "levelFullName":Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->getLevelName(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 3134
    :goto_2
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1400()V

    .line 3136
    new-instance v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;-><init>(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$1;)V

    invoke-static {v10}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1502(Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;)Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    .line 3137
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1500()Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    move-result-object v10

    iput-object v4, v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;->dir:Ljava/lang/String;

    .line 3138
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$1500()Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;

    move-result-object v10

    if-nez v5, :cond_4

    .end local v4    # "levelDirName":Ljava/lang/String;
    :goto_3
    iput-object v4, v10, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$SelectLevelRequest;->name:Ljava/lang/String;

    goto :goto_1

    .line 3130
    .restart local v4    # "levelDirName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3131
    .restart local v2    # "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "ie":Ljava/io/IOException;
    :cond_4
    move-object v4, v5

    .line 3138
    goto :goto_3
.end method

.method public static setCamera(Ljava/lang/Object;)V
    .locals 2
    .param p0, "entityId"    # Ljava/lang/Object;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3194
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->access$600(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetCameraEntity(J)V

    .line 3195
    return-void
.end method

.method public static setFoodItem(ILjava/lang/String;IILjava/lang/String;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "iconSubindex"    # I
    .param p3, "halfhearts"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "maxStackSize"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3083
    invoke-static {p0, p1, p2, p4, p5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->setItem(ILjava/lang/String;ILjava/lang/String;I)V

    .line 3084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"use_animation\":\"eat\",\"use_duration\": 32,\"food\":{\"nutrition\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"saturation_modifier\": \"normal\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"is_meat\": false}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeItemApi;->setProperties(ILjava/lang/Object;)V

    .line 3087
    return-void
.end method

.method public static setFov(D)V
    .locals 2
    .param p0, "fov"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3199
    double-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetFov(FZ)V

    .line 3200
    return-void
.end method

.method public static setGameSpeed(D)V
    .locals 2
    .param p0, "ticksPerSecond"    # D
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3173
    double-to-float v0, p0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeSetGameSpeed(F)V

    .line 3174
    return-void
.end method

.method public static setGuiBlocks(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3049
    const-string v0, "gui/gui_blocks.png"

    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->overrideTexture(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    return-void
.end method

.method public static setItem(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "iconName"    # Ljava/lang/String;
    .param p2, "iconSubindex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "maxStackSize"    # I
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3066
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3067
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The item icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not updated for 0.8.0. Please ask the script author to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3069
    :catch_0
    move-exception v0

    .line 3071
    if-ltz p0, :cond_0

    sget v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->ITEM_ID_COUNT:I

    if-lt p0, v0, :cond_1

    .line 3072
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item IDs must be >= 0 and < ITEM_ID_COUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3074
    :cond_1
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    invoke-virtual {v0, p1, p2}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;->hasIcon(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The item icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3077
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeDefineItem(ILjava/lang/String;ILjava/lang/String;I)V

    .line 3078
    return-void
.end method

.method public static setItems(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3044
    const-string v0, "images/items-opaque.png"

    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->overrideTexture(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    return-void
.end method

.method public static setTerrain(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3039
    const-string v0, "images/terrain-atlas.tga"

    invoke-static {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$NativeModPEApi;->overrideTexture(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    return-void
.end method

.method public static showTipMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3189
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeShowTipMessage(Ljava/lang/String;)V

    .line 3190
    return-void
.end method

.method public static takeScreenshot(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
    .end annotation

    .prologue
    .line 3178
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->screenshotFileName:Ljava/lang/String;

    .line 3179
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeRequestFrameCallback()V

    .line 3180
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3277
    const-string v0, "ModPE"

    return-object v0
.end method
