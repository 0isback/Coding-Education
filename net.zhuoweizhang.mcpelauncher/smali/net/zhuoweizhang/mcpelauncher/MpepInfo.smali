.class public Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
.super Ljava/lang/Object;
.source "MpepInfo.java"


# instance fields
.field public authorName:Ljava/lang/String;

.field public modFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public modName:Ljava/lang/String;

.field public modNote:Ljava/lang/String;

.field public modVersion:Ljava/lang/String;

.field public scrambleCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;-><init>()V

    .line 31
    .local v0, "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    const-string v2, "mod"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    .local v1, "m":Lorg/json/JSONObject;
    const-string v2, "mod_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->modName:Ljava/lang/String;

    .line 33
    const-string v2, "author_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->authorName:Ljava/lang/String;

    .line 34
    const-string v2, "mod_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->modVersion:Ljava/lang/String;

    .line 35
    const-string v2, "mod_note"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->modNote:Ljava/lang/String;

    .line 36
    const-string v2, "scramble_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->scrambleCode:Ljava/lang/String;

    .line 37
    return-object v0
.end method

.method public static fromZip(Ljava/util/zip/ZipFile;)Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .locals 6
    .param p0, "zip"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v4, "metadata/metadata.json"

    invoke-virtual {p0, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 20
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 26
    :goto_0
    return-object v4

    .line 21
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 22
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 23
    .local v0, "buf":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 25
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "jsonObj":Lorg/json/JSONObject;
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->fromJSON(Lorg/json/JSONObject;)Lnet/zhuoweizhang/mcpelauncher/MpepInfo;

    move-result-object v4

    goto :goto_0
.end method
