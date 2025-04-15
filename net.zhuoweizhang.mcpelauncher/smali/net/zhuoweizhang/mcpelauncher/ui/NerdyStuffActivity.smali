.class public Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;
.super Landroid/app/Activity;
.source "NerdyStuffActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final magicWords:[Ljava/lang/String;


# instance fields
.field private chefSpecialButton:Landroid/widget/Button;

.field private dumpLibMinecraftPeButton:Landroid/widget/Button;

.field private dumpModPEMethodsButton:Landroid/widget/Button;

.field private restartAppButton:Landroid/widget/Button;

.field private setSkinButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nimubla"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "muirab"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "otrecnoc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "atled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nolispe"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "etagirf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "repeeketag"

    aput-object v2, v0, v1

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->magicWords:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static forceRestart(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->forceRestart(Landroid/app/Activity;IZ)V

    .line 91
    return-void
.end method

.method public static forceRestart(Landroid/app/Activity;IZ)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "delay"    # I
    .param p2, "exit"    # Z

    .prologue
    const/4 v8, 0x0

    .line 95
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 96
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 97
    .local v2, "timeMillis":J
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const/4 v4, 0x3

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 102
    if-nez p2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity$1;

    invoke-direct {v5}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity$1;-><init>()V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public dumpLib()V
    .locals 5

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/libminecraftpe.so.dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 70
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 72
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "libminecraftpe.so.dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dumpModPEMethods()V
    .locals 7

    .prologue
    .line 140
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->getAllApiMethodsDescriptions()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "allMethods":Ljava/lang/String;
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 143
    .local v1, "cmgr":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "/modpescript_dump.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, "w":Ljava/io/FileWriter;
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v3    # "w":Ljava/io/FileWriter;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "modpescript_dump.txt"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpLibMinecraftPeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpLib()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->restartAppButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 55
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->forceRestart(Landroid/app/Activity;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->setSkinButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->setSkin()V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->chefSpecialButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 60
    :cond_4
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpModPEMethodsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpModPEMethods()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$layout;->nerdy_stuff:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->setContentView(I)V

    .line 35
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->dump_libminecraftpe_button:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpLibMinecraftPeButton:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpLibMinecraftPeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->restart_app_button:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->restartAppButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->restartAppButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->set_skin_button:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->setSkinButton:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->setSkinButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->chef_special:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->chefSpecialButton:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->chefSpecialButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->dump_modpe_methods:I

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpModPEMethodsButton:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->dumpModPEMethodsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->printMagicWord()V

    .line 49
    return-void
.end method

.method public printMagicWord()V
    .locals 8

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "appVersion":I
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    sget-object v5, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->magicWords:[Ljava/lang/String;

    sget-object v6, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->magicWords:[Ljava/lang/String;

    array-length v6, v6

    rem-int v6, v0, v6

    aget-object v1, v5, v6

    .line 165
    .local v1, "giro":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "lettersarr":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "letters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 168
    const-string v5, ""

    invoke-static {v3, v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "orig":Ljava/lang/String;
    const-string v5, "BlockLauncher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The magic word is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v5, "BlockLauncher"

    const-string v6, "https://groups.google.com/forum/#!forum/blocklauncher-beta"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 161
    .end local v1    # "giro":Ljava/lang/String;
    .end local v2    # "letters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "lettersarr":[Ljava/lang/String;
    .end local v4    # "orig":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public scriptImport()V
    .locals 6

    .prologue
    .line 127
    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.zhuoweizhang.mcpelauncher.action.IMPORT_SCRIPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/winprogress/500ise_everymethod.js"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "derp":Landroid/net/Uri;
    const-string v3, "text/plain"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :try_start_0
    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSkin()V
    .locals 6

    .prologue
    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.zhuoweizhang.mcpelauncher.action.SET_SKIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/skin.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 118
    .local v0, "derp":Landroid/net/Uri;
    const-string v3, "image/png"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :try_start_0
    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
