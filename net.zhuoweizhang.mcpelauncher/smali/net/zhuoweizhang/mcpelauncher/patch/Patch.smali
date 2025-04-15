.class public abstract Lnet/zhuoweizhang/mcpelauncher/patch/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# instance fields
.field protected segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/patch/PatchSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/patch/Patch;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/patch/PatchSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/patch/Patch;->segments:Ljava/util/List;

    return-object v0
.end method
