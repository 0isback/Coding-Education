.class public Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MainMenuOptionsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;


# static fields
.field public static final GOOGLE_PLAY_URL:Ljava/lang/String; = "market://details?id="

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "mcpelauncherprefs"

.field public static final PRO_APP_ID:Ljava/lang/String; = "net.zhuoweizhang.mcpelauncher.pro"

.field public static final REQUEST_MANAGE_ADDONS:I = 0x8

.field public static final REQUEST_MANAGE_PATCHES:I = 0x6

.field public static final REQUEST_MANAGE_SCRIPTS:I = 0xa

.field public static final REQUEST_MANAGE_SKINS:I = 0x7

.field public static final REQUEST_MANAGE_TEXTURES:I = 0x5

.field public static final REQUEST_SERVER_LIST:I = 0x9

.field public static isManagingAddons:Z


# instance fields
.field private aboutPreference:Landroid/preference/Preference;

.field private addonsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private desktopGuiPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private enableKamcordPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private getProPreference:Landroid/preference/Preference;

.field private goToForumsPreference:Landroid/preference/Preference;

.field private hasInflatedSwitches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lde/ankri/views/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private languagePreference:Landroid/preference/ListPreference;

.field private legacyLivePatchPreference:Landroid/preference/Preference;

.field private needsRestart:Z

.field private paranoidPreference:Landroid/preference/Preference;

.field private patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private recorderReshareLastPreference:Landroid/preference/Preference;

.field private recorderWatchPreference:Landroid/preference/Preference;

.field private reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private safeModePreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field private themeDarkPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

.field protected ui:Ljava/lang/Thread;

.field private useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->isManagingAddons:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->hasInflatedSwitches:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    return-object v0
.end method

.method private controllerChange(Lde/ankri/views/Switch;)V
    .locals 3
    .param p1, "sw"    # Lde/ankri/views/Switch;

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-virtual {p1}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasExtrasPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p1, v2}, Lde/ankri/views/Switch;->setChecked(Z)V

    .line 460
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zz_use_controller"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->purchase_extras_package:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$3;

    invoke-direct {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private findLastKamcordVideo()Ljava/io/File;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 576
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "Kamcord"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    .local v2, "kamcordDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PP3JLc1YQlxEBNbiuYewGLsn5tBs1J5DGv6BWko2ePi-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v4, "myDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-object v6

    .line 579
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 580
    .local v5, "theDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 579
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v8, "thumbnail.jpg"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/io/File;

    const-string v8, "video.mp4"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 582
    new-instance v6, Ljava/io/File;

    const-string v7, "video.mp4"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forceRestart()V
    .locals 2

    .prologue
    .line 595
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$4;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$4;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 605
    return-void
.end method

.method private goToForums()V
    .locals 3

    .prologue
    .line 549
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "http://www.minecraftforum.net/topic/1675581-blocklauncher-an-android-app-that-patches-minecraft-pe-without-reinstall/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 552
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initLanguagePreference()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 608
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lnet/zhuoweizhang/mcpelauncher/R$string;->languages_supported:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "langList":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v6, "languageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lnet/zhuoweizhang/mcpelauncher/R$string;->pref_zz_language_override_default:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v2, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 612
    .local v2, "currentLocale":Ljava/util/Locale;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v9, v0, v3

    .line 613
    .local v9, "override":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    .line 612
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    :cond_0
    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "overrideSplit":[Ljava/lang/String;
    aget-object v5, v10, v13

    .line 617
    .local v5, "langName":Ljava/lang/String;
    array-length v11, v10

    if-le v11, v14, :cond_1

    aget-object v1, v10, v14

    .line 618
    .local v1, "countryName":Ljava/lang/String;
    :goto_2
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 617
    .end local v1    # "countryName":Ljava/lang/String;
    .end local v8    # "locale":Ljava/util/Locale;
    :cond_1
    const-string v1, ""

    goto :goto_2

    .line 621
    .end local v5    # "langName":Ljava/lang/String;
    .end local v9    # "override":Ljava/lang/String;
    .end local v10    # "overrideSplit":[Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    new-array v11, v13, [Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 622
    iget-object v11, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 623
    return-void
.end method

.method private reshareLast()V
    .locals 7

    .prologue
    .line 560
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findLastKamcordVideo()Ljava/io/File;

    move-result-object v1

    .line 561
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 562
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$string;->recorder_no_recording:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 568
    .local v3, "theUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "video/mp4"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 571
    const-string v4, "Share video"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 572
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startAbout()V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/AboutAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void
.end method

.method private startGetPro()V
    .locals 3

    .prologue
    .line 538
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "http://www.minecraftforum.net/topic/1675581-blocklauncher-an-android-app-that-patches-minecraft-pe-without-reinstall/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 542
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected hasRecorder()Z
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.zhuoweizhang.mcpelauncher.pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected manageAddons()V
    .locals 2

    .prologue
    .line 480
    const/4 v1, 0x1

    sput-boolean v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->isManagingAddons:Z

    .line 481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageAddonsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 483
    return-void
.end method

.method protected managePatches()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManagePatchesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 477
    return-void
.end method

.method protected manageScripts()V
    .locals 2

    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 488
    return-void
.end method

.method protected manageSkins()V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageSkinsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 499
    return-void
.end method

.method protected manageTexturepacks()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/TexturePacksActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 494
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 503
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v1

    .line 506
    packed-switch p1, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 508
    :pswitch_0
    if-ne p2, v2, :cond_0

    .line 509
    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    goto :goto_0

    .line 513
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->isManagingAddons:Z

    .line 514
    if-ne p2, v2, :cond_0

    .line 515
    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    goto :goto_0

    .line 519
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 520
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->onBackPressed()V

    goto :goto_0

    .line 526
    :pswitch_3
    if-ne p2, v2, :cond_0

    .line 527
    iput-boolean v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->forceRestart()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckedChange(Lde/ankri/views/Switch;)V
    .locals 4
    .param p1, "data"    # Lde/ankri/views/Switch;

    .prologue
    const/4 v3, 0x0

    .line 426
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    .line 427
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-ne p1, v1, :cond_1

    .line 428
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->controllerChange(Lde/ankri/views/Switch;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-ne p1, v1, :cond_2

    .line 431
    invoke-virtual {p1}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_scripts_reimport_enable_dialog:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 437
    :cond_2
    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 439
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iget-object v1, v1, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->content:Lde/ankri/views/Switch;

    if-ne p1, v1, :cond_0

    .line 441
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_ENABLE:Ljava/io/File;

    .line 442
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p1}, Lde/ankri/views/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->REQUEST_DISABLE:Ljava/io/File;

    .line 444
    :cond_3
    invoke-static {v0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;->setTexturepack(Ljava/io/File;Lnet/zhuoweizhang/mcpelauncher/ui/ManageTexturepacksActivity;)V

    goto :goto_0

    .line 439
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->setUp()V

    .line 210
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 211
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 378
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    monitor-enter v3

    .line 379
    :try_start_0
    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 380
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-ne p1, v3, :cond_0

    .line 382
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->managePatches()V

    .line 421
    :goto_0
    return v1

    .line 380
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 384
    :cond_0
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-ne p1, v3, :cond_1

    .line 385
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->manageTexturepacks()V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getProPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_2

    .line 388
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startGetPro()V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->aboutPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_3

    .line 391
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->startAbout()V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->addonsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-ne p1, v3, :cond_4

    .line 394
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->manageAddons()V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 397
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->manageScripts()V

    goto :goto_0

    .line 399
    :cond_5
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-ne p1, v3, :cond_6

    .line 400
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->manageSkins()V

    goto :goto_0

    .line 402
    :cond_6
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->goToForumsPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_7

    .line 403
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->goToForums()V

    goto :goto_0

    .line 405
    :cond_7
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    if-eq p1, v3, :cond_8

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->paranoidPreference:Landroid/preference/Preference;

    if-eq p1, v3, :cond_8

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->legacyLivePatchPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_9

    .line 406
    :cond_8
    iput-boolean v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->needsRestart:Z

    move v1, v2

    .line 407
    goto :goto_0

    .line 408
    :cond_9
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderWatchPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_a

    .line 410
    :try_start_2
    const-string v1, "com.kamcord.android.Kamcord"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "showWatchView"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    :goto_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->finish()V

    move v1, v2

    .line 416
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderReshareLastPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_b

    .line 418
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reshareLast()V

    move v1, v2

    .line 419
    goto :goto_0

    :cond_b
    move v1, v2

    .line 421
    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 227
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->setUp()V

    .line 228
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->ui:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 229
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 234
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method protected setUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 245
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$xml;->preferences:I

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->addPreferencesFromResource(I)V

    .line 247
    const-string v3, "zz_texture_pack_enable"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 248
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 250
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->texturepackPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    :cond_0
    const-string v3, "zz_manage_patches"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 254
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 256
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->patchesPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    :cond_1
    const-string v3, "zz_safe_mode"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->safeModePreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 260
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->safeModePreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->safeModePreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 262
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->safeModePreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 265
    :cond_2
    const-string v3, "zz_load_native_addons"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->addonsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 266
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->addonsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_3

    .line 267
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->addonsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    :cond_3
    const-string v3, "zz_skin_enable"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 271
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 273
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->skinPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 276
    :cond_4
    const-string v3, "zz_script_enable"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 277
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_6

    .line 278
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 279
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    sget-boolean v3, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isRemote:Z

    if-eqz v3, :cond_5

    .line 281
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setEnabled(Z)V

    .line 283
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.mojang.minecraftpe"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "0.14"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 284
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->scriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_6
    :goto_0
    const-string v3, "zz_language_override"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    .line 291
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    if-eqz v3, :cond_7

    .line 292
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->initLanguagePreference()V

    .line 293
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->languagePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 296
    :cond_7
    const-string v3, "zz_script_paranoid_mode"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->paranoidPreference:Landroid/preference/Preference;

    .line 297
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->paranoidPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_8

    .line 298
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->paranoidPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 301
    :cond_8
    const-string v3, "zz_legacy_live_patch"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->legacyLivePatchPreference:Landroid/preference/Preference;

    .line 302
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->legacyLivePatchPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_9

    .line 303
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->legacyLivePatchPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    :cond_9
    const-string v3, "zz_about"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->aboutPreference:Landroid/preference/Preference;

    .line 307
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->aboutPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_a

    .line 308
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->aboutPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 311
    :cond_a
    const-string v3, "zz_get_pro"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getProPreference:Landroid/preference/Preference;

    .line 312
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getProPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_b

    .line 313
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getProPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 316
    :cond_b
    const-string v3, "zz_go_to_forums"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->goToForumsPreference:Landroid/preference/Preference;

    .line 317
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->goToForumsPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_c

    .line 318
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->goToForumsPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 321
    :cond_c
    const-string v3, "zz_immersive_mode"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 322
    .local v2, "immersiveModePreference":Landroid/preference/Preference;
    if-eqz v2, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_d

    .line 323
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    :cond_d
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->hasRecorder()Z

    move-result v1

    .line 328
    .local v1, "hasRecorder":Z
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has recorder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    const-string v3, "zz_watch_recording"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderWatchPreference:Landroid/preference/Preference;

    .line 331
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderWatchPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_e

    .line 332
    if-nez v1, :cond_16

    .line 333
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderWatchPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    :cond_e
    :goto_1
    const-string v3, "zz_reshare_last_recording"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderReshareLastPreference:Landroid/preference/Preference;

    .line 340
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderReshareLastPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_f

    .line 341
    if-nez v1, :cond_17

    .line 342
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderReshareLastPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 347
    :cond_f
    :goto_2
    const-string v3, "zz_use_controller"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 348
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_10

    .line 349
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_18

    .line 350
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_10
    :goto_3
    const-string v3, "zz_enable_kamcord"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->enableKamcordPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 356
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->enableKamcordPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_12

    .line 357
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_19

    .line 358
    :cond_11
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->enableKamcordPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_12
    :goto_4
    const-string v3, "zz_theme_dark"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->themeDarkPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 364
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->themeDarkPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_13

    .line 365
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->themeDarkPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 367
    :cond_13
    const-string v3, "zz_reimport_scripts"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 368
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_14

    .line 369
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->reimportScriptsPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 371
    :cond_14
    const-string v3, "zz_desktop_gui"

    invoke-virtual {p0, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    iput-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->desktopGuiPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    .line 372
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->desktopGuiPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    if-eqz v3, :cond_15

    .line 373
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->desktopGuiPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    .line 375
    :cond_15
    return-void

    .line 285
    .end local v1    # "hasRecorder":Z
    .end local v2    # "immersiveModePreference":Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hasRecorder":Z
    .restart local v2    # "immersiveModePreference":Landroid/preference/Preference;
    :cond_16
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderWatchPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    .line 344
    :cond_17
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->recorderReshareLastPreference:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_2

    .line 352
    :cond_18
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->useControllerPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    goto :goto_3

    .line 360
    :cond_19
    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;->enableKamcordPreference:Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;

    invoke-virtual {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference;->setListener(Lnet/zhuoweizhang/mcpelauncher/ui/SwitchPreference$OnCheckedChangeListener;)V

    goto :goto_4
.end method

.method protected togglePrefs()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method
