.class Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;
.super Landroid/os/AsyncTask;
.source "ManageTexturepacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTextureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private hasSu:Z

.field private mcpeApkLoc:Ljava/lang/String;

.field private outFile:Ljava/io/File;

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->hasSu:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 287
    :try_start_0
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-virtual {v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.mojang.minecraftpe"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 289
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->mcpeApkLoc:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-virtual {v3, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "minecraft.apk"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->mcpeApkLoc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" >\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SU;->run(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 296
    iput-boolean v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->hasSu:Z

    .line 299
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 301
    return-object v6

    .line 290
    .end local v1    # "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 306
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->add(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->adapter:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$TexturesAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->saveHistory()V

    .line 311
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;)V

    .line 312
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->extract_textures_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->hasSu:Z

    if-eqz v0, :cond_1

    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->extract_textures_error:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->extract_textures_no_root:I

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->extracting_textures:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 280
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 281
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 282
    return-void
.end method
