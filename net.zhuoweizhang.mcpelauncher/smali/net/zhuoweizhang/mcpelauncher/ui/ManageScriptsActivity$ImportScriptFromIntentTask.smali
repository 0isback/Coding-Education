.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;
.super Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;
.source "ManageScriptsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportScriptFromIntentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 1

    .prologue
    .line 791
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .param p1, "ids"    # [Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 793
    aget-object v1, p1, v10

    .line 794
    .local v1, "data":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 795
    .local v7, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 797
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const-string v9, "modscripts"

    invoke-virtual {v8, v9, v10}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 800
    .local v3, "file":Ljava/io/File;
    :try_start_0
    iget-object v8, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-virtual {v8}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 801
    const/16 v8, 0x400

    invoke-static {v7, v8}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1600(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 803
    .local v0, "content":[B
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 805
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    if-eqz v7, :cond_0

    .line 813
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 816
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 818
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object v5, v6

    .line 820
    .end local v0    # "content":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-object v3

    .line 807
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 808
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 809
    const/4 v3, 0x0

    .line 811
    .end local v3    # "file":Ljava/io/File;
    if-eqz v7, :cond_3

    .line 813
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 816
    :cond_3
    :goto_4
    if-eqz v5, :cond_2

    .line 818
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 819
    :catch_1
    move-exception v8

    goto :goto_2

    .line 811
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v7, :cond_4

    .line 813
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 816
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 818
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 820
    :cond_5
    :goto_7
    throw v8

    .line 814
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "content":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_0

    .line 819
    :catch_3
    move-exception v8

    goto :goto_1

    .line 814
    .end local v0    # "content":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    :catch_5
    move-exception v9

    goto :goto_6

    .line 819
    :catch_6
    move-exception v9

    goto :goto_7

    .line 811
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "content":[B
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 807
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 791
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;->doInBackground([Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
