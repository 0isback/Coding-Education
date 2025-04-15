.class public final Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
.super Ljava/lang/Object;
.source "TexturePackDescription.java"


# instance fields
.field public description:Ljava/lang/String;

.field public img:Landroid/graphics/Bitmap;

.field public path:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->img:Landroid/graphics/Bitmap;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->description:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;
    .locals 3
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;

    const-string v1, "t"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "p"

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackDescription;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
