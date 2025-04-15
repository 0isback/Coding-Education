.class public Lcom/mojang/minecraftpe/HardwareInformation;
.super Ljava/lang/Object;
.source "HardwareInformation.java"


# static fields
.field private static cpuFeatures:Ljava/lang/String;

.field private static cpuName:Ljava/lang/String;

.field private static numCores:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "unknown"

    sput-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuName:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuFeatures:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/mojang/minecraftpe/HardwareInformation;->numCores:I

    .line 92
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->initHardwareInformation()V

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumCores()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/mojang/minecraftpe/HardwareInformation;->numCores:I

    return v0
.end method

.method private static getNumCoresReal()I
    .locals 5

    .prologue
    .line 48
    new-instance v2, Lcom/mojang/minecraftpe/HardwareInformation$1;

    invoke-direct {v2}, Lcom/mojang/minecraftpe/HardwareInformation$1;-><init>()V

    .line 55
    .local v2, "filter":Ljava/io/FileFilter;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return v3

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0
.end method

.method public static initHardwareInformation()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getNumCoresReal()I

    move-result v1

    sput v1, Lcom/mojang/minecraftpe/HardwareInformation;->numCores:I

    .line 39
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->parseCpuInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseCpuInfo()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v5, 0x0

    .line 64
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, "cpuNameDone":Z
    const/4 v0, 0x0

    .line 66
    .local v0, "cpuFeaturesDone":Z
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/cpuinfo"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "l":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 69
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "parts":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "partName":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "result":Ljava/lang/String;
    const-string v8, "Hardware"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "model name"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 74
    :cond_1
    sput-object v7, Lcom/mojang/minecraftpe/HardwareInformation;->cpuName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    const/4 v1, 0x1

    .line 80
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 83
    .end local v3    # "partName":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 85
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :cond_4
    :goto_1
    return-void

    .line 76
    .restart local v3    # "partName":Ljava/lang/String;
    .restart local v4    # "parts":[Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v8, "Features"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "flags"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    :cond_6
    sput-object v7, Lcom/mojang/minecraftpe/HardwareInformation;->cpuFeatures:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "l":Ljava/lang/String;
    .end local v3    # "partName":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "result":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v5, :cond_7

    .line 85
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 86
    :cond_7
    :goto_3
    throw v8

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "l":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    goto :goto_1

    .end local v2    # "l":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v9

    goto :goto_3

    .line 83
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
