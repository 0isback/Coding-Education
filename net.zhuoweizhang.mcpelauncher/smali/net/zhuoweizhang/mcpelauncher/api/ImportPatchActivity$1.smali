.class Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity$1;
.super Ljava/lang/Object;
.source "ImportPatchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;->startImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;


# direct methods
.method constructor <init>(Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity$1;->this$0:Lnet/zhuoweizhang/mcpelauncher/api/ImportPatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
