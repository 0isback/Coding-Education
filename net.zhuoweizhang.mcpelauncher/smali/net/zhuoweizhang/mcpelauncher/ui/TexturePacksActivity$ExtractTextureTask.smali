.class Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;
.super Landroid/os/AsyncTask;
.source "TexturePacksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;
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

.field final synthetic this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;


# direct methods
.method private constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;)V
    .locals 1

    .prologue
    .line 184
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->hasSu:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;
    .param p2, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 202
    :try_start_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-virtual {v3}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.mojang.minecraftpe"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 204
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->mcpeApkLoc:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-virtual {v4, v7}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "minecraft.apk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    .line 208
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 209
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "outPath":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->mcpeApkLoc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" >\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$SU;->run(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 215
    iput-boolean v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->hasSu:Z

    .line 218
    :cond_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 220
    return-object v7

    .line 205
    .end local v1    # "outPath":Ljava/lang/String;
    .end local v2    # "suResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 225
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->access$100(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->outFile:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->access$200(Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;ILjava/io/File;)V

    .line 228
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->extract_textures_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->hasSu:Z

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
    .line 192
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    .line 193
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->this$0:Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->extracting_textures:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 195
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 196
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity$ExtractTextureTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 197
    return-void
.end method
