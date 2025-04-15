.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;
.super Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;
.source "ManageScriptsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportScriptFromCfgyTask"
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
    .line 667
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/File;
    .locals 15
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 670
    const/4 v12, 0x0

    aget-object v8, p1, v12

    .line 672
    .local v8, "id":Ljava/lang/String;
    const/4 v9, 0x0

    .line 673
    .local v9, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 674
    .local v1, "content":[B
    const/4 v10, 0x0

    .line 675
    .local v10, "response":I
    const/4 v6, 0x0

    .line 676
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    const-string v13, "modscripts"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".js"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 682
    .local v5, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v8}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1500(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    .line 683
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 684
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v12, "User-Agent"

    const-string v13, "BlockLauncher"

    invoke-virtual {v0, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 686
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 689
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 694
    :goto_0
    const/16 v12, 0x190

    if-lt v10, v12, :cond_2

    const/4 v5, 0x0

    .line 711
    .end local v5    # "file":Ljava/io/File;
    if-eqz v9, :cond_0

    .line 713
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 717
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 719
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 721
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    return-object v5

    .line 690
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 691
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    .line 696
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v9, :cond_3

    .line 697
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    :goto_3
    invoke-static {v9, v12}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1600(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 699
    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>([B)V

    const-string v13, " "

    const-string v14, "+"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "contentStr":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v2, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 702
    .local v3, "decoded":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 703
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v7, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 704
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 711
    if-eqz v9, :cond_4

    .line 713
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 717
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 719
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_5
    move-object v6, v7

    .line 721
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 697
    .end local v2    # "contentStr":Ljava/lang/String;
    .end local v3    # "decoded":[B
    :cond_6
    const/16 v12, 0x400

    goto :goto_3

    .line 706
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 707
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-static {v12, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->access$1300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 709
    const/4 v5, 0x0

    .line 711
    .end local v5    # "file":Ljava/io/File;
    if-eqz v9, :cond_7

    .line 713
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 717
    :cond_7
    :goto_7
    if-eqz v6, :cond_1

    .line 719
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 720
    :catch_2
    move-exception v12

    goto :goto_2

    .line 711
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v9, :cond_8

    .line 713
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 717
    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    .line 719
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 721
    :cond_9
    :goto_a
    throw v12

    .line 714
    .end local v5    # "file":Ljava/io/File;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_3
    move-exception v12

    goto :goto_1

    .line 720
    :catch_4
    move-exception v12

    goto :goto_2

    .line 714
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "contentStr":Ljava/lang/String;
    .restart local v3    # "decoded":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v12

    goto :goto_4

    .line 720
    :catch_6
    move-exception v12

    goto :goto_5

    .line 714
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "contentStr":Ljava/lang/String;
    .end local v3    # "decoded":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    goto :goto_7

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    :catch_8
    move-exception v13

    goto :goto_9

    .line 720
    :catch_9
    move-exception v13

    goto :goto_a

    .line 711
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "contentStr":Ljava/lang/String;
    .restart local v3    # "decoded":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 706
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 667
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;->doInBackground([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
