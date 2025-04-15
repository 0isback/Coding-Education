.class abstract Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;
.super Landroid/os/AsyncTask;
.source "ManageScriptsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImportScriptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TI;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 0

    .prologue
    .line 641
    .local p0, "this":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;, "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask<TI;>;"
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;

    .prologue
    .line 641
    .local p0, "this":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;, "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask<TI;>;"
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .local p0, "this":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;, "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask<TI;>;"
    const/4 v5, 0x0

    .line 644
    if-nez p1, :cond_0

    .line 645
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 662
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V

    .line 650
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getMaxPatchCount()I

    move-result v1

    .line 651
    .local v1, "maxPatchCount":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyScripts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_too_many:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v1    # "maxPatchCount":I
    :goto_1
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    goto :goto_0

    .line 654
    .restart local v1    # "maxPatchCount":I
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 656
    .end local v1    # "maxPatchCount":I
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v2, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V

    .line 659
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    .local p0, "this":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;, "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask<TI;>;"
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
