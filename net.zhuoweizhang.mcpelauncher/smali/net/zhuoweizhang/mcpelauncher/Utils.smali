.class public Lnet/zhuoweizhang/mcpelauncher/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDirectory(Ljava/io/File;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 30
    .local v2, "fileList":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 37
    :cond_0
    return-void

    .line 31
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 32
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->clearDirectory(Ljava/io/File;)V

    .line 35
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getArchName(I)Ljava/lang/String;
    .locals 1
    .param p0, "arch"    # I

    .prologue
    .line 194
    packed-switch p0, :pswitch_data_0

    .line 200
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    const-string v0, "ARM"

    goto :goto_0

    .line 198
    :pswitch_1
    const-string v0, "Intel"

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDeclaredFieldRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 45
    :goto_0
    return-object v1

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "nsfe":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getDeclaredFieldRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0
.end method

.method public static getElfArch(Ljava/io/File;)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 177
    .local v1, "fis":Ljava/io/FileInputStream;
    new-array v2, v5, [B

    .line 178
    .local v2, "header":[B
    const-wide/16 v6, 0x12

    invoke-virtual {v1, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 179
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 180
    aget-byte v5, v2, v3

    aget-byte v6, v2, v4

    shl-int/lit8 v6, v6, 0x8

    or-int v0, v5, v6

    .line 181
    .local v0, "arch":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 182
    const/16 v5, 0x28

    if-ne v0, v5, :cond_0

    .line 189
    :goto_0
    return v3

    .line 184
    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    move v3, v4

    .line 185
    goto :goto_0

    .line 188
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has unknown architecture 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEnabledPatches()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabledPatches"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "theStr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getEnabledScripts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x1

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabledScripts"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "theStr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 111
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getMaxPatches()I
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$integer;->max_num_patches:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getMaxScripts()I
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$integer;->max_num_scripts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getPrefs(I)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->requireInit()V

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    const-string v1, "mcpelauncherprefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_2
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    const-string v1, "safe_mode_counter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hasExtrasPackage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.zhuoweizhang.mcpelauncher.pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasTooManyPatches()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxPatches()I

    move-result v0

    .line 86
    .local v0, "maxPatchCount":I
    if-ltz v0, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledPatches()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasTooManyScripts()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getMaxScripts()I

    move-result v0

    .line 91
    .local v0, "maxPatchCount":I
    if-ltz v0, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledScripts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPro()Z
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.zhuoweizhang.mcpelauncher.pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSafeMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    sget-boolean v1, Lcom/mojang/minecraftpe/MainActivity;->libLoaded:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mojang/minecraftpe/MainActivity;->tempSafeMode:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_safe_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "replacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    .end local v2    # "item":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "r":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_1
    return-object v3
.end method

.method public static joinArray([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 78
    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseMemInfo()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 151
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 154
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "partName":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "result":[Ljava/lang/String;
    const-string v6, "MemTotal"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    .line 163
    if-eqz v4, :cond_1

    .line 165
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .end local v1    # "partName":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v5    # "result":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v6

    .line 163
    :cond_2
    if-eqz v4, :cond_3

    .line 165
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 169
    :cond_3
    :goto_1
    const-wide v6, 0x400000000L

    goto :goto_0

    .line 163
    .end local v0    # "l":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_4

    .line 165
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 166
    :cond_4
    :goto_3
    throw v6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "l":Ljava/lang/String;
    .restart local v1    # "partName":Ljava/lang/String;
    .restart local v2    # "parts":[Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v1    # "partName":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v5    # "result":[Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "l":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 163
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected static requireInit()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to work with Utils class without context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sput-object p0, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static setLanguageOverride()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->requireInit()V

    .line 51
    invoke-static {v10}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "zz_language_override"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "override":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "overrideSplit":[Ljava/lang/String;
    aget-object v2, v5, v10

    .line 56
    .local v2, "langName":Ljava/lang/String;
    array-length v7, v5

    if-le v7, v11, :cond_1

    aget-object v1, v5, v11

    .line 57
    .local v1, "countryName":Ljava/lang/String;
    :goto_1
    sget-object v7, Lnet/zhuoweizhang/mcpelauncher/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    .local v6, "rez":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 59
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 60
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 61
    invoke-virtual {v6, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 56
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "countryName":Ljava/lang/String;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "rez":Landroid/content/res/Resources;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static setupTheme(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fullscreen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_theme_dark"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    .local v0, "darkTheme":Z
    if-eqz v0, :cond_0

    .line 207
    if-eqz p1, :cond_1

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$style;->FullscreenDarkTheme:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 209
    :cond_0
    return-void

    .line 207
    :cond_1
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$style;->BlockLauncherDarkTheme:I

    goto :goto_0
.end method
