.class public Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;
.super Ljava/lang/Object;
.source "ModPkgTexturePack.java"

# interfaces
.implements Lnet/zhuoweizhang/mcpelauncher/TexturePack;


# static fields
.field static filterTheseOut:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public subPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    .line 15
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain.meta"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/items.meta"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "items.json"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain-atlas.tga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain-atlas_mip0.tga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain-atlas_mip1.tga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain-atlas_mip2.tga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/terrain-atlas_mip3.tga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    const-string v1, "images/items-opaque.png"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    invoke-direct {v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    .line 62
    .local v1, "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->close()V

    goto :goto_0

    .line 64
    .end local v1    # "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    :cond_0
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 48
    :goto_0
    return-object v1

    .line 44
    :cond_0
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    .line 45
    .local v2, "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    invoke-virtual {v2, p1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 46
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    :cond_2
    move-object v1, v3

    .line 48
    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 52
    sget-object v6, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->filterTheseOut:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v4

    .line 57
    :goto_0
    return-wide v2

    .line 53
    :cond_0
    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    .line 54
    .local v1, "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    invoke-virtual {v1, p1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->getSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 55
    .local v2, "size":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    goto :goto_0

    .end local v1    # "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    .end local v2    # "size":J
    :cond_2
    move-wide v2, v4

    .line 57
    goto :goto_0
.end method

.method public listFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    .line 70
    .local v1, "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->listFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 72
    .end local v1    # "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    :cond_0
    return-object v2
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 34
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    .line 35
    .local v1, "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->getZipName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;->close()V

    .line 37
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;->subPacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    .end local v1    # "pack":Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;
    :cond_1
    return-void
.end method
