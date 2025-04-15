.class public final Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;
.super Ljava/lang/Object;
.source "MaraudersMap.java"


# static fields
.field public static minecraftTextBuffer:Ljava/nio/ByteBuffer;

.field private static patchingInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->minecraftTextBuffer:Ljava/nio/ByteBuffer;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->patchingInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPatching(Landroid/content/Context;J)Z
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minecraftLibLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    sget-boolean v19, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->patchingInitialized:Z

    if-eqz v19, :cond_0

    const/16 v17, 0x1

    .line 62
    :goto_0
    return v17

    .line 22
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/pokerface/PokerFace;->init()V

    .line 23
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "zz_legacy_live_patch"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeGetArch()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    new-instance v19, Ljava/io/File;

    const-string v20, "/sdcard/blocklauncher_marauders_map_legacy"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x17

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    :cond_1
    const/16 v18, 0x1

    .line 28
    .local v18, "useOldCode":Z
    :goto_1
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Live patching is running in "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v18, :cond_5

    const-string v19, "legacy"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " mode"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const/16 v17, 0x1

    .line 30
    .local v17, "success":Z
    const/16 v19, 0x1

    sput-boolean v19, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->patchingInitialized:Z

    .line 31
    new-instance v16, Ljava/util/Scanner;

    new-instance v19, Ljava/io/File;

    const-string v20, "/proc/self/maps"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 32
    .local v16, "scan":Ljava/util/Scanner;
    const-string v19, "patched"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    .line 33
    .local v14, "patchedDir":Ljava/io/File;
    :cond_2
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 34
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "line":Ljava/lang/String;
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, "parts":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v9, v19

    const-string v20, "libminecraftpe.so"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_2

    .line 37
    const/16 v19, 0x0

    aget-object v19, v9, v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, v9, v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 38
    .local v10, "loc":J
    const/16 v19, 0x0

    aget-object v19, v9, v19

    const/16 v20, 0x0

    aget-object v20, v9, v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 39
    .local v4, "end":J
    sub-long v6, v4, v10

    .line 40
    .local v6, "len":J
    const/16 v19, 0x1

    aget-object v19, v9, v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_8

    .line 42
    if-nez v18, :cond_6

    .line 43
    new-instance v19, Ljava/io/File;

    const-string v20, "libminecraftpe_text_section"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v11, v6, v7, v0}, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->remapText(JJLjava/lang/String;)J

    move-result-wide v12

    .line 49
    .local v12, "newLoc":J
    :cond_3
    :goto_4
    if-eqz v17, :cond_7

    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-ltz v19, :cond_7

    const/16 v17, 0x1

    .line 50
    :goto_5
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-lez v19, :cond_2

    .line 51
    move-wide/from16 v0, p1

    invoke-static {v10, v11, v0, v1}, Lnet/zhuoweizhang/pokerface/PokerFace;->createDirectByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v19

    sput-object v19, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    .line 52
    invoke-static {v12, v13, v6, v7}, Lnet/zhuoweizhang/pokerface/PokerFace;->createDirectByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v19

    sput-object v19, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->minecraftTextBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 23
    .end local v4    # "end":J
    .end local v6    # "len":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "loc":J
    .end local v12    # "newLoc":J
    .end local v14    # "patchedDir":Ljava/io/File;
    .end local v16    # "scan":Ljava/util/Scanner;
    .end local v17    # "success":Z
    .end local v18    # "useOldCode":Z
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 28
    .restart local v18    # "useOldCode":Z
    :cond_5
    const-string v19, "normal"

    goto/16 :goto_2

    .line 45
    .restart local v4    # "end":J
    .restart local v6    # "len":J
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "parts":[Ljava/lang/String;
    .restart local v10    # "loc":J
    .restart local v14    # "patchedDir":Ljava/io/File;
    .restart local v16    # "scan":Ljava/util/Scanner;
    .restart local v17    # "success":Z
    :cond_6
    move-wide v12, v10

    .line 46
    .restart local v12    # "newLoc":J
    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-static {v10, v11, v6, v7, v0}, Lnet/zhuoweizhang/pokerface/PokerFace;->mprotect(JJI)I

    move-result v15

    .line 47
    .local v15, "returnStatus":I
    if-gez v15, :cond_3

    const/16 v17, 0x0

    goto :goto_4

    .line 49
    .end local v15    # "returnStatus":I
    :cond_7
    const/16 v17, 0x0

    goto :goto_5

    .line 55
    .end local v12    # "newLoc":J
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-static {v10, v11, v6, v7, v0}, Lnet/zhuoweizhang/pokerface/PokerFace;->mprotect(JJI)I

    move-result v15

    .line 56
    .restart local v15    # "returnStatus":I
    if-gez v15, :cond_2

    const/16 v17, 0x0

    goto/16 :goto_3

    .line 60
    .end local v4    # "end":J
    .end local v6    # "len":J
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "loc":J
    .end local v15    # "returnStatus":I
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    .line 61
    new-instance v19, Ljava/io/File;

    const-string v20, "tempXXXXXX"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->setTranslationFunction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static native remapText(JJLjava/lang/String;)J
.end method

.method private static native setTranslationFunction(Ljava/lang/String;)V
.end method
