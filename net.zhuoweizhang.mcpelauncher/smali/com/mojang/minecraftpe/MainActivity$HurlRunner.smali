.class Lcom/mojang/minecraftpe/MainActivity$HurlRunner;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HurlRunner"
.end annotation


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field private cookies:Ljava/lang/String;

.field private isValid:Z

.field private method:Ljava/lang/String;

.field private requestId:I

.field private strurl:Ljava/lang/String;

.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field private timestamp:J

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "requestId"    # I
    .param p3, "timestamp"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "cookies"    # Ljava/lang/String;

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->isValid:Z

    .line 2483
    iput p2, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->requestId:I

    .line 2484
    iput-wide p3, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->timestamp:J

    .line 2485
    iput-object p5, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->strurl:Ljava/lang/String;

    .line 2486
    iput-object p6, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->method:Ljava/lang/String;

    .line 2487
    iput-object p7, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->cookies:Ljava/lang/String;

    .line 2488
    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 2489
    :try_start_0
    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2490
    monitor-exit v1

    .line 2491
    return-void

    .line 2490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$402(Lcom/mojang/minecraftpe/MainActivity$HurlRunner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity$HurlRunner;
    .param p1, "x1"    # Z

    .prologue
    .line 2473
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->isValid:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2495
    const/4 v8, 0x0

    .line 2496
    .local v8, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 2497
    .local v5, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2500
    .local v4, "response":I
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->strurl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->url:Ljava/net/URL;

    .line 2501
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    .line 2502
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2503
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "MCPE/Curl"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2506
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2508
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    :try_start_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 2511
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2520
    :goto_0
    if-eqz v8, :cond_0

    .line 2521
    :try_start_2
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-gez v0, :cond_4

    const/16 v0, 0x400

    :goto_1
    invoke-static {v8, v0}, Lcom/mojang/minecraftpe/MainActivity;->access$2100(Ljava/io/InputStream;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 2528
    :cond_0
    if-eqz v8, :cond_1

    .line 2530
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2536
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 2539
    :cond_2
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->isValid:Z

    if-eqz v0, :cond_3

    .line 2540
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget v1, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->requestId:I

    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->timestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/mojang/minecraftpe/MainActivity;->nativeWebRequestCompleted(IJILjava/lang/String;)V

    .line 2542
    :cond_3
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 2543
    :try_start_4
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2544
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2545
    return-void

    .line 2512
    :catch_0
    move-exception v6

    .line 2514
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 2515
    :catch_1
    move-exception v7

    .line 2516
    .local v7, "e1":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 2525
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 2526
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2528
    if-eqz v8, :cond_1

    .line 2530
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 2531
    :catch_3
    move-exception v0

    goto :goto_2

    .line 2521
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    goto :goto_1

    .line 2528
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 2530
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 2532
    :cond_5
    :goto_3
    throw v0

    .line 2544
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    .line 2531
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_3
.end method
