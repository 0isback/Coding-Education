.class public Lnet/zhuoweizhang/mcpelauncher/ScriptOverrideTexturePack;
.super Ljava/lang/Object;
.source "ScriptOverrideTexturePack.java"

# interfaces
.implements Lnet/zhuoweizhang/mcpelauncher/TexturePack;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptOverrideTexturePack;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-object v1

    .line 20
    :cond_1
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 21
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 26
    sget-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-wide v2

    .line 27
    :cond_1
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getTextureOverrideFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 28
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method

.method public listFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
