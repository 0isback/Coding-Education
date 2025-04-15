.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;
.super Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;
.source "ManageScriptsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportScriptFromUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 1

    .prologue
    .line 730
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/File;
    .locals 15
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 733
    const/4 v8, 0x0

    .line 734
    .local v8, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 735
    .local v1, "content":[B
    const/4 v9, 0x0

    .line 736
    .local v9, "response":I
    const/4 v6, 0x0

    .line 737
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 743
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 744
    .local v10, "url":Ljava/net/URL;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 745
    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 746
    .local v11, "urlPath":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_0

    const-string v5, "nameless_script.js"

    .line 748
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const-string v13, "modscripts"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    invoke-direct {v4, v12, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 750
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v12, "User-Agent"

    const-string v13, "BlockLauncher"

    invoke-virtual {v0, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 752
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 754
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 755
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 760
    :goto_0
    const/16 v12, 0x190

    if-lt v9, v12, :cond_4

    const/4 v12, 0x0

    .line 773
    if-eqz v8, :cond_1

    .line 775
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 779
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 781
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v4, v12

    .line 783
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urlPath":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v4

    .line 756
    .end local v3    # "file":Ljava/io/File;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urlPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 757
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto :goto_0

    .line 761
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez v8, :cond_7

    const/4 v12, 0x0

    .line 773
    if-eqz v8, :cond_5

    .line 775
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 779
    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    .line 781
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_6
    :goto_5
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v4, v12

    .line 783
    goto :goto_3

    .line 762
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_7
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    :goto_6
    invoke-static {v8, v12}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1600(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 764
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 765
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual {v7, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 766
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 773
    if-eqz v8, :cond_8

    .line 775
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 779
    :cond_8
    :goto_7
    if-eqz v7, :cond_9

    .line 781
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_8
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v6, v7

    .line 783
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 762
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :cond_a
    const/16 v12, 0x400

    goto :goto_6

    .line 768
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urlPath":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 769
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_c
    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v12, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V

    .line 770
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 771
    const/4 v4, 0x0

    .line 773
    if-eqz v8, :cond_b

    .line 775
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 779
    :cond_b
    :goto_a
    if-eqz v6, :cond_3

    .line 781
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_3

    .line 782
    :catch_2
    move-exception v12

    goto :goto_3

    .line 773
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_b
    if-eqz v8, :cond_c

    .line 775
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 779
    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    .line 781
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 783
    :cond_d
    :goto_d
    throw v12

    .line 776
    .end local v3    # "file":Ljava/io/File;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urlPath":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_1

    .line 782
    :catch_4
    move-exception v13

    goto :goto_2

    .line 776
    :catch_5
    move-exception v13

    goto :goto_4

    .line 782
    :catch_6
    move-exception v13

    goto :goto_5

    .line 776
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    goto :goto_7

    .line 782
    :catch_8
    move-exception v12

    goto :goto_8

    .line 776
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urlPath":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v12

    goto :goto_a

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v13

    goto :goto_c

    .line 782
    :catch_b
    move-exception v13

    goto :goto_d

    .line 773
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urlPath":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_b

    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 768
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_c
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_9

    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 730
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;->doInBackground([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
