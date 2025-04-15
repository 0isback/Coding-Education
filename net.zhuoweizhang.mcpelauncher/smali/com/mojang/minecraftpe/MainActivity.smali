.class public Lcom/mojang/minecraftpe/MainActivity;
.super Landroid/app/NativeActivity;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/MainActivity$ShutdownTask;,
        Lcom/mojang/minecraftpe/MainActivity$HurlRunner;,
        Lcom/mojang/minecraftpe/MainActivity$LoginWebViewClient;,
        Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
    }
.end annotation


# static fields
.field public static final DIALOG_COPY_WORLD:I = 0x4

.field public static final DIALOG_CRASH_SAFE_MODE:I = 0x1000

.field public static final DIALOG_CREATE_WORLD:I = 0x1

.field public static final DIALOG_FIRST_LAUNCH:I = 0x1003

.field public static final DIALOG_INSERT_TEXT:I = 0x1007

.field public static final DIALOG_INVALID_PATCHES:I = 0x1002

.field public static final DIALOG_MULTIPLAYER_DISABLE_SCRIPTS:I = 0x1008

.field public static final DIALOG_NOT_SUPPORTED:I = 0x1005

.field public static final DIALOG_RUNTIME_OPTIONS:I = 0x1001

.field public static final DIALOG_RUNTIME_OPTIONS_WITH_INSERT_TEXT:I = 0x1009

.field public static final DIALOG_SELINUX_BROKE_EVERYTHING:I = 0x100a

.field public static final DIALOG_SETTINGS:I = 0x3

.field public static final DIALOG_UPDATE_TEXTURE_PACK:I = 0x1006

.field public static final DIALOG_VERSION_MISMATCH_SAFE_MODE:I = 0x1004

.field public static final GAME_MODES:[Ljava/lang/String;

.field public static final HALF_SUPPORT_VERSION:Ljava/lang/String; = "~~~~"

.field public static final HEY_CAN_YOU_STOP_STEALING_BLOCKLAUNCHER_CODE:Ljava/lang/String; = "please?"

.field public static final INPUT_STATUS_CANCELLED:I = 0x0

.field public static final INPUT_STATUS_IN_PROGRESS:I = -0x1

.field public static final INPUT_STATUS_OK:I = 0x1

.field private static final MAX_FAILS:I = 0x2

.field private static MC_NATIVE_LIBRARY_DIR:Ljava/lang/String; = null

.field private static MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String; = null

.field private static final MILLISECONDS_FOR_WORLD_SAVE:I = 0xbb8

.field public static final MOJANG_ACCOUNT_LOGIN_URL:Ljava/lang/String; = "https://account.mojang.com/m/login?app=mcpe"

.field public static final PT_PATCHES_DIR:Ljava/lang/String; = "ptpatches"

.field private static final REQUEST_MANAGE_TEXTURES:I = 0x1a0

.field private static final REQUEST_PICK_IMAGE:I = 0x19f

.field public static final SCRIPT_SUPPORT_VERSION:Ljava/lang/String; = "0.14"

.field public static final TAG:Ljava/lang/String; = "BlockLauncher/Main"

.field public static currentMainActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mojang/minecraftpe/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static failedPatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static globalRestart:Z

.field private static hasAlreadyInited:Z

.field public static hasPrePatched:Z

.field private static lastDestroyTime:J

.field public static libLoaded:Z

.field public static loadedAddons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static minecraftLibBuffer:Ljava/nio/ByteBuffer;

.field public static tempSafeMode:Z


# instance fields
.field private commandHistoryIndex:I

.field private commandHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commandHistoryView:Landroid/view/View;

.field private commandHistoryWindow:Landroid/widget/PopupWindow;

.field private controllerInit:Z

.field protected displayMetrics:Landroid/util/DisplayMetrics;

.field protected fakePackage:Z

.field public forceFallback:Z

.field protected hasRecorder:Z

.field private hasResetSafeModeCounter:Z

.field private hiddenTextDismissAfterOneLine:Z

.field private hiddenTextView:Landroid/widget/TextView;

.field private hiddenTextWindow:Landroid/widget/PopupWindow;

.field private hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

.field protected inputStatus:I

.field protected isRecording:Z

.field private loginDialog:Landroid/app/Dialog;

.field private loginWebView:Landroid/webkit/WebView;

.field private final mainHandler:Landroid/os/Handler;

.field public mcAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mcPkgInfo:Landroid/content/pm/PackageInfo;

.field private mcpeArch:I

.field protected minecraftApkContext:Landroid/content/Context;

.field public minecraftApkForwardLocked:Z

.field protected minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

.field private nextButton:Landroid/widget/Button;

.field private overlyZealousSELinuxSafeMode:Z

.field private pickImageCallbackAddress:J

.field private pickImageResult:Landroid/content/Intent;

.field private prevButton:Landroid/widget/Button;

.field public refreshToken:Ljava/lang/String;

.field private requestMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mojang/minecraftpe/MainActivity$HurlRunner;",
            ">;"
        }
    .end annotation
.end field

.field public requiresGuiBlocksPatch:Z

.field public session:Ljava/lang/String;

.field public textureOverrides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/TexturePack;",
            ">;"
        }
    .end annotation
.end field

.field protected texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;

.field protected userInputStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "creative"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "survival"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->GAME_MODES:[Ljava/lang/String;

    .line 120
    const-string v0, "/data/data/com.mojang.minecraftpe/lib/"

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    .line 121
    const-string v0, "/data/data/com.mojang.minecraftpe/lib/libminecraftpe.so"

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    .line 131
    sput-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->hasPrePatched:Z

    .line 133
    sput-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->libLoaded:Z

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->loadedAddons:Ljava/util/Set;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->failedPatches:Ljava/util/List;

    .line 153
    sput-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->tempSafeMode:Z

    .line 179
    sput-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->hasAlreadyInited:Z

    .line 180
    sput-boolean v3, Lcom/mojang/minecraftpe/MainActivity;->globalRestart:Z

    .line 181
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mojang/minecraftpe/MainActivity;->lastDestroyTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 116
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->fakePackage:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 127
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->userInputStrings:[Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->forceFallback:Z

    .line 137
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->requiresGuiBlocksPatch:Z

    .line 139
    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    .line 151
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkForwardLocked:Z

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->session:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->refreshToken:Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->requestMap:Landroid/util/SparseArray;

    .line 168
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->overlyZealousSELinuxSafeMode:Z

    .line 172
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextDismissAfterOneLine:Z

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    .line 177
    iput v2, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryIndex:I

    .line 184
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->hasRecorder:Z

    .line 185
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->isRecording:Z

    .line 187
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->hasResetSafeModeCounter:Z

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->pickImageCallbackAddress:J

    .line 196
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->controllerInit:Z

    .line 198
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$1;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mainHandler:Landroid/os/Handler;

    .line 204
    iput v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mcpeArch:I

    .line 2549
    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->turnOffSafeMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mojang/minecraftpe/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setCommandHistoryIndex(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->prevButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mojang/minecraftpe/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->navigateCommandHistory(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mojang/minecraftpe/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setImmersiveMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mojang/minecraftpe/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mojang/minecraftpe/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextDismissAfterOneLine:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mojang/minecraftpe/MainActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mojang/minecraftpe/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mojang/minecraftpe/MainActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->requestMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->stringFromInputStream(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->globalRestart:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->touchImmersiveMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/mojang/minecraftpe/MainActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->loginWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mojang/minecraftpe/MainActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->loginWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->loginDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mojang/minecraftpe/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->loginDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mojang/minecraftpe/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isCommandHistoryEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mojang/minecraftpe/MainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private addLibraryDirToPath(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2140
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2141
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2142
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/ClassLoader;>;"
    const-string v10, "pathList"

    invoke-static {v2, v10}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getDeclaredFieldRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2143
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2144
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 2145
    .local v9, "pathListObj":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2146
    .local v8, "pathListClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v10, "nativeLibraryDirectories"

    invoke-static {v8, v10}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getDeclaredFieldRecursive(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 2148
    .local v6, "natfield":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2149
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/io/File;

    move-object v0, v10

    check-cast v0, [Ljava/io/File;

    move-object v5, v0

    .line 2150
    .local v5, "fileList":[Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v10}, Lcom/mojang/minecraftpe/MainActivity;->addToFileList([Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v7

    .line 2151
    .local v7, "newList":[Ljava/io/File;
    if-eq v5, v7, :cond_0

    .line 2152
    invoke-virtual {v6, v9, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/ClassLoader;>;"
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fileList":[Ljava/io/File;
    .end local v6    # "natfield":Ljava/lang/reflect/Field;
    .end local v7    # "newList":[Ljava/io/File;
    .end local v8    # "pathListClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v9    # "pathListObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2156
    :catch_0
    move-exception v3

    .line 2157
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addToFileList([Ljava/io/File;Ljava/io/File;)[Ljava/io/File;
    .locals 9
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "toAdd"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 2162
    const/4 v4, 0x1

    .line 2163
    .local v4, "needsAdding":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2164
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2172
    .end local v1    # "f":Ljava/io/File;
    .end local p1    # "files":[Ljava/io/File;
    :goto_1
    return-object p1

    .line 2163
    .restart local v1    # "f":Ljava/io/File;
    .restart local p1    # "files":[Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2169
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Ljava/io/File;

    .line 2170
    .local v5, "retval":[Ljava/io/File;
    const/4 v6, 0x1

    array-length v7, p1

    invoke-static {p1, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2171
    aput-object p2, v5, v8

    move-object p1, v5

    .line 2172
    goto :goto_1
.end method

.method private checkAddonArch(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    .line 2323
    :try_start_0
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getElfArch(Ljava/io/File;)I

    move-result v0

    .line 2324
    .local v0, "addonArch":I
    iget v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mcpeArch:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_0

    .line 2326
    .end local v0    # "addonArch":I
    :goto_0
    return v2

    .line 2324
    .restart local v0    # "addonArch":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2325
    .end local v0    # "addonArch":I
    :catch_0
    move-exception v1

    .line 2326
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private checkArch()V
    .locals 9

    .prologue
    .line 2298
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    .local v2, "mcpeLib":Ljava/io/File;
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getElfArch(Ljava/io/File;)I

    move-result v6

    iput v6, p0, Lcom/mojang/minecraftpe/MainActivity;->mcpeArch:I

    .line 2300
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/libmcpelauncher.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2301
    .local v5, "ownLib":Ljava/io/File;
    invoke-static {v5}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getElfArch(Ljava/io/File;)I

    move-result v4

    .line 2302
    .local v4, "myArch":I
    iget v6, p0, Lcom/mojang/minecraftpe/MainActivity;->mcpeArch:I

    if-eq v6, v4, :cond_0

    .line 2303
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2304
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lnet/zhuoweizhang/mcpelauncher/R$string;->minecraft_wrong_arch:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ARCH"

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getArchName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2306
    .local v3, "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2307
    const-string v6, "learnmore_uri"

    const-string v7, "https://github.com/zhuowei/MCPELauncher/issues/495"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2308
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2309
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2311
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2315
    :goto_0
    const/4 v6, 0x0

    :try_start_2
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 2319
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mcpeLib":Ljava/io/File;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "myArch":I
    .end local v5    # "ownLib":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 2312
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "mcpeLib":Ljava/io/File;
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v4    # "myArch":I
    .restart local v5    # "ownLib":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mcpeLib":Ljava/io/File;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "myArch":I
    .end local v5    # "ownLib":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private checkForSubstrate()V
    .locals 7

    .prologue
    .line 2267
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2294
    :goto_0
    return-void

    .line 2268
    :cond_0
    const/4 v1, 0x0

    .line 2270
    .local v1, "substrateInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.saurik.substrate"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 2273
    :goto_1
    if-nez v1, :cond_1

    .line 2274
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 2275
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lnet/zhuoweizhang/mcpelauncher/ui/GetSubstrateActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2277
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2278
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2279
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2283
    :cond_1
    const-string v4, "libmcpelauncher_tinysubstrate.so"

    invoke-virtual {p0, v4}, Lcom/mojang/minecraftpe/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2284
    .local v2, "substrateLibFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2286
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v5, "libsubstrate.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    .local v3, "substrateSourceLibFile":Ljava/io/File;
    :try_start_2
    invoke-static {v3, v2}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2293
    .end local v3    # "substrateSourceLibFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 2289
    .restart local v3    # "substrateSourceLibFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2290
    .local v0, "ie":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2271
    .end local v0    # "ie":Ljava/io/IOException;
    .end local v2    # "substrateLibFile":Ljava/io/File;
    .end local v3    # "substrateSourceLibFile":Ljava/io/File;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private clearRuntimeOptionsDialog()V
    .locals 1

    .prologue
    .line 2239
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$32;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$32;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2246
    return-void
.end method

.method private copyContentStoreToTempFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 8
    .param p1, "content"    # Landroid/net/Uri;

    .prologue
    .line 1962
    :try_start_0
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/mojang/minecraftpe/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, "skintemp.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1963
    .local v5, "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1964
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1965
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1966
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 1968
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 1969
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1974
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1975
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1976
    new-instance v5, Ljava/io/File;

    const-string v6, "/sdcard/totally/fake"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v2    # "ie":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 1971
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1972
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private disableAllPatches()V
    .locals 1

    .prologue
    .line 1821
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->disableAllPatches()V

    .line 1823
    return-void
.end method

.method private disableTransparentSystemBar()V
    .locals 2

    .prologue
    .line 1814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private enableSoftMenuKey()V
    .locals 3

    .prologue
    .line 1808
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 1809
    .local v0, "flag":I
    :goto_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1811
    return-void

    .line 1808
    .end local v0    # "flag":I
    :cond_0
    const/high16 v0, 0x8000000

    goto :goto_0
.end method

.method public static findMinecraftLibLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1660
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private fixMyEpicFail()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2249
    invoke-static {v7}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2250
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "last_bl_version"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2251
    .local v0, "lastVersion":I
    const/4 v1, 0x0

    .line 2253
    .local v1, "myVersion":I
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    :goto_0
    const/16 v3, 0x45

    if-ge v0, v3, :cond_0

    .line 2259
    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "zz_load_native_addons"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2261
    :cond_0
    if-eq v0, v1, :cond_1

    .line 2262
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_bl_version"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2264
    :cond_1
    return-void

    .line 2254
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getMCPEVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private getRegularInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1953
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :goto_0
    return-object v1

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "ie":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1956
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAtlasMeta()V
    .locals 10

    .prologue
    .line 2340
    const/4 v8, 0x0

    .line 2341
    .local v8, "dumpAtlas":Z
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2343
    :cond_0
    :try_start_0
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;

    const-string v1, "images/terrain.meta"

    const-string v2, "images/terrain-atlas.tga"

    const-string v3, "images/terrain-atlas/"

    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;

    invoke-direct {v4}, Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;II)V

    .line 2345
    .local v0, "terrainProvider":Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;

    const-string v2, "images/items.meta"

    const-string v3, "images/items-opaque.tga"

    const-string v4, "images/items-opaque/"

    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;

    invoke-direct {v5}, Lnet/zhuoweizhang/mcpelauncher/texture/TGAImageLoader;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/zhuoweizhang/mcpelauncher/texture/ImageLoader;II)V

    .line 2347
    .local v1, "itemsProvider":Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;
    invoke-virtual {v0, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->initAtlas(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 2348
    invoke-virtual {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->initAtlas(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 2353
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2354
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2355
    iget-object v2, v0, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    sput-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->terrainMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    .line 2356
    iget-object v2, v1, Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;->metaObj:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;

    sput-object v2, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->itemsMeta:Lnet/zhuoweizhang/mcpelauncher/texture/AtlasMeta;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2357
    .end local v0    # "terrainProvider":Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;
    .end local v1    # "itemsProvider":Lnet/zhuoweizhang/mcpelauncher/texture/AtlasProvider;
    :catch_0
    move-exception v9

    .line 2358
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 2359
    invoke-virtual {p0, v9}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isAddonCompat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2331
    if-nez p1, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return v0

    .line 2333
    :cond_1
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "0.14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2334
    const-string v1, "0.14.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCommandHistoryEnabled()Z
    .locals 3

    .prologue
    .line 2195
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zz_command_history"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isForcingController()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2364
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasExtrasPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_use_controller"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static native nativeOnPickImageCanceled(J)V
.end method

.method public static native nativeOnPickImageSuccess(JLjava/lang/String;)V
.end method

.method private navigateCommandHistory(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 2179
    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryIndex:I

    add-int v1, v2, p1

    .line 2180
    .local v1, "newIndex":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 2181
    :cond_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 2182
    :cond_1
    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setCommandHistoryIndex(I)V

    .line 2183
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2184
    .local v0, "newCommand":Ljava/lang/String;
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2185
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2186
    return-void
.end method

.method private prePatch()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 532
    const-string v20, "patched"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    .line 533
    .local v18, "patched":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/libminecraftpe.so"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v12, "originalLibminecraft":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v20, "libminecraftpe.so"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    .local v11, "newMinecraft":Ljava/io/File;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "force_prepatch"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 536
    .local v5, "forcePrePatch":Z
    sget-boolean v20, Lcom/mojang/minecraftpe/MainActivity;->hasPrePatched:Z

    if-nez v20, :cond_2

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledPatches()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v20

    if-nez v20, :cond_2

    .line 538
    const/16 v20, 0x1

    sput-boolean v20, Lcom/mojang/minecraftpe/MainActivity;->hasPrePatched:Z

    .line 539
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 540
    :cond_0
    if-eqz v5, :cond_1

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "force_prepatch"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "prepatch_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    sget-boolean v20, Lcom/mojang/minecraftpe/MainActivity;->hasPrePatched:Z

    if-nez v20, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_3

    if-eqz v5, :cond_7

    .line 546
    :cond_3
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "Forcing new prepatch"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 549
    .local v9, "libBytes":[B
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 551
    .local v8, "libBuffer":Ljava/nio/ByteBuffer;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 552
    .local v7, "is":Ljava/io/InputStream;
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    .line 553
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 555
    const/16 v19, 0x0

    .line 556
    .local v19, "patchedCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getMaxNumPatches()I

    move-result v10

    .line 558
    .local v10, "maxPatchNum":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getEnabledPatches()Ljava/util/Set;

    move-result-object v17

    .line 560
    .local v17, "patchLocs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 561
    .local v16, "patchLoc":Ljava/lang/String;
    if-ltz v10, :cond_8

    move/from16 v0, v19

    if-lt v0, v10, :cond_8

    .line 594
    .end local v16    # "patchLoc":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mojang/minecraftpe/MainActivity;->requiresGuiBlocksPatch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 595
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "Patching guiblocks"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    new-instance v14, Lcom/joshuahuelsman/patchtool/PTPatch;

    invoke-direct {v14}, Lcom/joshuahuelsman/patchtool/PTPatch;-><init>()V

    .line 597
    .local v14, "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->guiBlocksPatch:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->guiBlocksPatch:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/joshuahuelsman/patchtool/PTPatch;->loadPatch([B)V

    .line 600
    invoke-static {v8, v14}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->patch(Ljava/nio/ByteBuffer;Lcom/joshuahuelsman/patchtool/PTPatch;)V

    .line 604
    .end local v14    # "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    :cond_6
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 605
    .local v13, "os":Ljava/io/OutputStream;
    invoke-virtual {v13, v9}, Ljava/io/OutputStream;->write([B)V

    .line 606
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 607
    const/16 v20, 0x1

    sput-boolean v20, Lcom/mojang/minecraftpe/MainActivity;->hasPrePatched:Z

    .line 608
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "force_prepatch"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "prepatch_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 610
    sget-object v20, Lcom/mojang/minecraftpe/MainActivity;->failedPatches:Ljava/util/List;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_7

    .line 611
    const/16 v20, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    .line 616
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "libBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "libBytes":[B
    .end local v10    # "maxPatchNum":I
    .end local v13    # "os":Ljava/io/OutputStream;
    .end local v17    # "patchLocs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "patchedCount":I
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    .line 617
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    goto/16 :goto_0

    .line 563
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "libBuffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "libBytes":[B
    .restart local v10    # "maxPatchNum":I
    .restart local v16    # "patchLoc":Ljava/lang/String;
    .restart local v17    # "patchLocs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "patchedCount":I
    :cond_8
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v15, "patchFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 567
    :try_start_0
    new-instance v14, Lcom/joshuahuelsman/patchtool/PTPatch;

    invoke-direct {v14}, Lcom/joshuahuelsman/patchtool/PTPatch;-><init>()V

    .line 568
    .restart local v14    # "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    invoke-virtual {v14, v15}, Lcom/joshuahuelsman/patchtool/PTPatch;->loadPatch(Ljava/io/File;)V

    .line 569
    invoke-virtual {v14}, Lcom/joshuahuelsman/patchtool/PTPatch;->checkMagic()Z

    move-result v20

    if-nez v20, :cond_9

    .line 570
    sget-object v20, Lcom/mojang/minecraftpe/MainActivity;->failedPatches:Ljava/util/List;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 576
    .end local v14    # "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    :catch_0
    move-exception v4

    .line 577
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    sget-object v20, Lcom/mojang/minecraftpe/MainActivity;->failedPatches:Ljava/util/List;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 574
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v14    # "patch":Lcom/joshuahuelsman/patchtool/PTPatch;
    :cond_9
    :try_start_1
    invoke-static {v8, v14}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->patch(Ljava/nio/ByteBuffer;Lcom/joshuahuelsman/patchtool/PTPatch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1
.end method

.method private requiresPatchingInSafeMode()Z
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    return v0
.end method

.method public static saveScreenshot(Ljava/lang/String;II[I)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "firstInt"    # I
    .param p2, "secondInt"    # I
    .param p3, "thatArray"    # [I

    .prologue
    .line 1265
    return-void
.end method

.method private setCommandHistoryIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2189
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryIndex:I

    .line 2190
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->prevButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2191
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->nextButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2192
    return-void

    :cond_0
    move v0, v2

    .line 2190
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2191
    goto :goto_1
.end method

.method private setFakePackage(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->fakePackage:Z

    .line 521
    return-void
.end method

.method private setImmersiveMode(Z)V
    .locals 4
    .param p1, "set"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 2200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 2209
    :goto_0
    return-void

    .line 2201
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 2202
    .local v1, "uiOptions":I
    const/16 v0, 0x1002

    .line 2203
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 2204
    or-int/2addr v1, v0

    .line 2208
    :goto_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 2206
    :cond_1
    and-int/lit16 v1, v1, -0x1003

    goto :goto_1
.end method

.method private static stringFromInputStream(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "startingLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2030
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2032
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 2034
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2035
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2039
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3

    .line 2037
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    :cond_0
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2039
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v3
.end method

.method private touchImmersiveMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2212
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zz_immersive_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2213
    .local v0, "immersive":Z
    if-nez v0, :cond_0

    .line 2219
    :goto_0
    return-void

    .line 2214
    :cond_0
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$31;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$31;-><init>(Lcom/mojang/minecraftpe/MainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private turnOffSafeMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1858
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zz_safe_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1859
    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_prepatch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1860
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 1861
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->forceRestart(Landroid/app/Activity;)V

    .line 1862
    return-void
.end method

.method private useLegacyKeyboardInput()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1638
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zz_legacy_keyboard_input"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abortWebRequest(I)I
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1269
    const-string v1, "BlockLauncher/Main"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abort web request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->requestMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;

    .line 1271
    .local v0, "runner":Lcom/mojang/minecraftpe/MainActivity$HurlRunner;
    if-eqz v0, :cond_0

    .line 1272
    invoke-static {v0, v4}, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;->access$402(Lcom/mojang/minecraftpe/MainActivity$HurlRunner;Z)Z

    .line 1273
    :cond_0
    return v4
.end method

.method protected allowScriptOverrideTextures()Z
    .locals 1

    .prologue
    .line 2135
    const/4 v0, 0x1

    return v0
.end method

.method protected applyBuiltinPatches()V
    .locals 0

    .prologue
    .line 1753
    return-void
.end method

.method public buyGame()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public checkLicense()I
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public clearLoginInformation()V
    .locals 3

    .prologue
    .line 1463
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Clear login info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clientId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileUuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1466
    return-void
.end method

.method protected createBackupsNotSupportedDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Backed up versions of BlockLauncher are not supported, as BlockLauncher depends on updates from the application store.  Please reinstall BlockLauncher. If you believe you received this message in error, contact zhuowei_applications@yahoo.com"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$15;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$15;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createCopyWorldDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$layout;->copy_world_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 897
    .local v0, "textEntryView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->copy_world_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$14;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$14;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$13;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$13;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$12;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected createCreateWorldDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$layout;->create_world_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, "textEntryView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->world_create_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$7;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$6;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$6;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$5;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected createFirstLaunchDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v0, "dialogMsg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->firstlaunch_generic_intro:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkForwardLocked:Z

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->firstlaunch_jelly_bean:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->firstlaunch_see_options:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->firstlaunch_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->firstlaunch_help:I

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$11;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$11;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected createInsertTextDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 944
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 945
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 946
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 947
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 948
    invoke-virtual {v2, v1, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 950
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 951
    .local v0, "back":Landroid/widget/Button;
    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_insert_text_backspace:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 952
    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$16;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$16;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    invoke-virtual {v2, v0, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 966
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_insert_text:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/mojang/minecraftpe/MainActivity$17;

    invoke-direct {v5, p0, v1}, Lcom/mojang/minecraftpe/MainActivity$17;-><init>(Lcom/mojang/minecraftpe/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method protected createInvalidPatchesDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 866
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_invalid_patches:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->failedPatches:Ljava/util/List;

    sget-object v3, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->blankArray:[Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v3, "\n"

    invoke-static {v0, v3}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createMultiplayerDisableScriptsDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 987
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_disabled_in_multiplayer:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createNotSupportedDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 921
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->feature_not_supported:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createRuntimeOptionsDialog(Z)Landroid/app/Dialog;
    .locals 13
    .param p1, "hasInsertText"    # Z

    .prologue
    const/4 v11, 0x0

    .line 798
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->pref_texture_pack:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "livePatch":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, "optionMenu":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_insert_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 801
    .local v4, "insertText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->pref_zz_manage_scripts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 802
    .local v9, "manageModPEScripts":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->take_screenshot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 803
    .local v10, "takeScreenshot":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_start_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, "startRecording":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->hovercar_stop_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 805
    .local v6, "stopRecording":Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v8, v0, v11

    const/4 v1, 0x1

    aput-object v9, v0, v1

    const/4 v1, 0x2

    aput-object v10, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 807
    .local v2, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hasRecorder:Z

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isKamcordRecording()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->isRecording:Z

    .line 809
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->isRecording:Z

    if-eqz v0, :cond_3

    move-object v0, v6

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_0
    if-eqz p1, :cond_1

    .line 812
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->pref_zz_safe_mode:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-array v0, v11, [Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/CharSequence;

    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mojang/minecraftpe/MainActivity$9;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v11, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 855
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 856
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$10;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    :cond_2
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    move-object v0, v5

    .line 809
    goto :goto_0

    .line 815
    :cond_4
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->app_name:I

    goto :goto_1
.end method

.method protected createSELinuxBrokeEverythingDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 992
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->selinux_broke_everything:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createSafeModeDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "messageRes"    # I

    .prologue
    .line 789
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->safe_mode_exit:I

    new-instance v2, Lcom/mojang/minecraftpe/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/MainActivity$8;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->safe_mode_continue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1894
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create UUID"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1895
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createUpdateTexturePackDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 926
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->extract_textures_need_update:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dismissHiddenTextbox()V
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1607
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->hideKeyboardView()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1401
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeTypeCharacter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    const/4 v0, 0x1

    .line 1407
    :goto_0
    return v0

    .line 1403
    :catch_0
    move-exception v0

    .line 1407
    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displayDialog(I)V
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, -0x1

    .line 670
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    const/4 v1, 0x0

    iput v1, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_0
    :pswitch_0
    return-void

    .line 674
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "World creation"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 675
    iput v4, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 676
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$3;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 683
    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Settings"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 684
    iput v4, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 685
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getOptionsActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 689
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Copy world"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    iput v4, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 691
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$4;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doesRequireGuiBlocksPatch()Z
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x0

    return v0
.end method

.method protected filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1380
    return-object p1
.end method

.method public forceTextureReload()V
    .locals 0

    .prologue
    .line 2025
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeOnGraphicsReset()V

    .line 2026
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1420
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get access token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accessToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidVersion()I
    .locals 1

    .prologue
    .line 1634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBroadcastAddresses()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1613
    const-string v0, "BlockLauncher/Main"

    const-string v1, "get broadcast addresses"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "255.255.255.255"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1425
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get client ID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clientId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateString(I)Ljava/lang/String;
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 1003
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDateString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1883
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooperId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1884
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createUUID()Ljava/lang/String;

    move-result-object v0

    .line 1886
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "snooperId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1888
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Get device ID"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1889
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1630
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getDeviceModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFakeImageData(Ljava/lang/String;Z)[I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromAssets"    # Z

    .prologue
    .line 1146
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public getFileDataBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1008
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 1009
    .local v0, "bytes":[B
    const-string v2, ".meta"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1011
    .local v1, "fileStr":Ljava/lang/String;
    const-string v2, "portal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rabbit_foot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 1015
    .end local v1    # "fileStr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFileDataBytes(Ljava/lang/String;Z)[B
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "forceInternal"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1019
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get file data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getLocalInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1022
    .local v3, "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    const-string v6, "BlockLauncher/Main"

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6999cc85

    if-eq v6, v7, :cond_2

    .line 1040
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-object v5

    .line 1021
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 1027
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1028
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 1030
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 1031
    .local v4, "len":I
    if-gez v4, :cond_3

    .line 1036
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1038
    .local v5, "retval":[B
    goto :goto_1

    .line 1034
    .end local v5    # "retval":[B
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1039
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getImageData(Ljava/lang/String;Z)[I
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromAssets"    # Z

    .prologue
    .line 1123
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get image data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from assets? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1125
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 1126
    .local v9, "is":Ljava/io/InputStream;
    :goto_0
    if-nez v9, :cond_1

    .line 1127
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->getFakeImageData(Ljava/lang/String;Z)[I

    move-result-object v1

    .line 1139
    .end local v9    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 1125
    :cond_0
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getRegularInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    .line 1128
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1129
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 1130
    .local v1, "retval":[I
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, v1, v2

    .line 1131
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, v1, v2

    .line 1132
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1133
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1137
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "retval":[I
    .end local v9    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .line 1138
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1139
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->getInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lengthOut"    # [J

    .prologue
    .line 1049
    const/4 v2, 0x0

    .line 1051
    .local v2, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1053
    :try_start_1
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    invoke-interface {v3, p1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1054
    if-eqz v2, :cond_1

    .line 1055
    if-eqz p2, :cond_0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    invoke-interface {v3, p1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getSize(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, p2, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v3, v2

    .line 1074
    :goto_1
    return-object v3

    .line 1058
    :catch_0
    move-exception v3

    .line 1051
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    if-nez v3, :cond_3

    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->getLocalInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_1

    .line 1064
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to load  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "from tp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    invoke-interface {v3, p1}, Lnet/zhuoweizhang/mcpelauncher/TexturePack;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1066
    if-nez v2, :cond_4

    .line 1067
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from tp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->getLocalInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 1071
    goto :goto_1

    .line 1072
    :catch_1
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1074
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getKeyFromKeyCode(III)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "deviceId"    # I

    .prologue
    .line 1257
    invoke-static {p3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1258
    .local v0, "characterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 1261
    .local v1, "retval":I
    return v1
.end method

.method public getKeyboardHeight()F
    .locals 4

    .prologue
    .line 1929
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1930
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1931
    .local v1, "rootview":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1932
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1933
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    goto :goto_0
.end method

.method protected getLocalInputStreamForAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1079
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->getLocalInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalInputStreamForAsset(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lengthOut"    # [J

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1098
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-boolean v2, p0, Lcom/mojang/minecraftpe/MainActivity;->forceFallback:Z

    if-eqz v2, :cond_0

    .line 1099
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->openFallbackAsset(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1118
    :goto_0
    return-object v2

    .line 1102
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1108
    :goto_1
    if-nez v1, :cond_1

    .line 1109
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Can\'t find it in the APK - attempting to load fallback"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->openFallbackAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1112
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 1113
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, p2, v2

    :cond_2
    move-object v2, v1

    .line 1115
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Attempting to load fallback"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->openFallbackAsset(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 1116
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1117
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1118
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1901
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMaxNumPatches()I
    .locals 2

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$integer;->max_num_patches:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1150
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "OptionStrings"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1151
    invoke-static {v12}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1152
    .local v6, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 1153
    .local v3, "prefsMap":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1154
    .local v4, "prefsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v5, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1156
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1157
    .local v2, "key":Ljava/lang/String;
    const-string v7, "zz_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1159
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    const-string v7, "ctrl_sensitivity"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1163
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const-string v7, "game_difficulty"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    const-string v7, "game_difficultypeaceful"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1168
    const-string v7, "0"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1173
    new-array v7, v12, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 1170
    :cond_3
    const-string v7, "2"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected getOptionsActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1839
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/zhuoweizhang/mcpelauncher/ui/MainMenuOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 3

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->fakePackage:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;

    invoke-super {p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/RedirectPackageManager;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 528
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getPixelsPerMillimeter()F
    .locals 7

    .prologue
    const v6, 0x41cb3333    # 25.4f

    .line 1177
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Pixels per mm"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1178
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float v2, v3, v6

    .line 1179
    .local v2, "val":F
    const/4 v3, 0x0

    invoke-static {v3}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "zz_custom_dpi"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "custom":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1182
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    div-float v2, v3, v6

    .line 1187
    :cond_0
    :goto_0
    return v2

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlatformStringVar(I)Ljava/lang/String;
    .locals 3
    .param p1, "a"    # I

    .prologue
    .line 1192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlatformStringVar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1193
    const-string v0, ""

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1430
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get profile ID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileUuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1435
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get profile name"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmsRedirectInfo()Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;
    .locals 2

    .prologue
    .line 1854
    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;->targets:Ljava/util/Map;

    const-string v1, "NONE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/zhuoweizhang/mcpelauncher/RealmsRedirectInfo;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1277
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get Refresh token"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refreshToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 1197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 1202
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1282
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Get Session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sessionId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 6

    .prologue
    .line 1619
    :try_start_0
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->parseMemInfo()J

    move-result-wide v2

    .line 1620
    .local v2, "retval":J
    const-string v1, "BlockLauncher/Main"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get total memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    .end local v2    # "retval":J
    :goto_0
    return-wide v2

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1624
    const-wide v2, 0x400000000L

    goto :goto_0
.end method

.method public getUserInputStatus()I
    .locals 3

    .prologue
    .line 1207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User input status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1208
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    return v0
.end method

.method public getUserInputString()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "User input string"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->userInputStrings:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebRequestContent(I)Ljava/lang/String;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 1287
    const-string v0, "BlockLauncher/Main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get web request content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string v0, "ThisIsSparta"

    return-object v0
.end method

.method public getWebRequestStatus(I)I
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 1292
    const-string v0, "BlockLauncher/Main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get web request status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public hasBuyButtonWhenInvalidLicense()Z
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public hasHardwareChanged()Z
    .locals 1

    .prologue
    .line 1914
    const/4 v0, 0x0

    return v0
.end method

.method protected hasScriptSupport()Z
    .locals 2

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "0.14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->useLegacyKeyboardInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->hideKeyboardView()V

    .line 1499
    :goto_0
    return-void

    .line 1494
    :cond_0
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$20;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$20;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hideKeyboardView()V
    .locals 3

    .prologue
    .line 1865
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1866
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1867
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->touchImmersiveMode()V

    .line 1868
    return-void
.end method

.method protected initKamcord()V
    .locals 0

    .prologue
    .line 2230
    return-void
.end method

.method public initPatching()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1642
    const-string v3, "mcpelauncher_tinysubstrate"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMCPEVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "~~~~"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1644
    const-string v3, "mcpelauncher_lite"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1649
    :goto_0
    invoke-static {}, Lcom/mojang/minecraftpe/MainActivity;->findMinecraftLibLength()J

    move-result-wide v0

    .line 1650
    .local v0, "minecraftLibLength":J
    invoke-static {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/MaraudersMap;->initPatching(Landroid/content/Context;J)Z

    move-result v2

    .line 1651
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 1652
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Well, that sucks!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1653
    sput-boolean v5, Lcom/mojang/minecraftpe/MainActivity;->tempSafeMode:Z

    .line 1654
    iput-boolean v5, p0, Lcom/mojang/minecraftpe/MainActivity;->overlyZealousSELinuxSafeMode:Z

    .line 1657
    :cond_0
    return-void

    .line 1646
    .end local v0    # "minecraftLibLength":J
    .end local v2    # "success":Z
    :cond_1
    const-string v3, "mcpelauncher"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initiateUserInput(I)V
    .locals 3
    .param p1, "a"    # I

    .prologue
    .line 1223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateUserInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public isDemo()Z
    .locals 2

    .prologue
    .line 1448
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Is demo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstSnooperStart()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1909
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Is first snooper start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1910
    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooperId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isKamcordRecording()Z
    .locals 1

    .prologue
    .line 2235
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkEnabled(Z)Z
    .locals 1
    .param p1, "a"    # Z

    .prologue
    .line 1228
    const/4 v0, 0x1

    return v0
.end method

.method public isRedirectingRealms()Z
    .locals 1

    .prologue
    .line 1847
    const/4 v0, 0x0

    return v0
.end method

.method public isTablet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1919
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTouchscreen()Z
    .locals 3

    .prologue
    .line 1232
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ctrl_usetouchscreen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchUri(Ljava/lang/String;)V
    .locals 4
    .param p1, "theUri"    # Ljava/lang/String;

    .prologue
    .line 1939
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1941
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    :goto_0
    return-void

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public leaveGameCallback()V
    .locals 2

    .prologue
    .line 2003
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Leave game"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2004
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hasRecorder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->clearRuntimeOptionsDialog()V

    .line 2005
    :cond_0
    return-void
.end method

.method protected loadNativeAddons()V
    .locals 13

    .prologue
    .line 1688
    const/4 v9, 0x0

    invoke-static {v9}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "zz_load_native_addons"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1735
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1691
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->getAddonManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/AddonManager;

    move-result-object v0

    .line 1692
    .local v0, "addonManager":Lnet/zhuoweizhang/mcpelauncher/AddonManager;
    const/16 v9, 0x80

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1693
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    .local v3, "archFail":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1695
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    .line 1697
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "net.zhuoweizhang.mcpelauncher.api.nativelibname"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1699
    .local v6, "nativeLibName":Ljava/lang/String;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "net.zhuoweizhang.mcpelauncher.api.targetmcpeversion"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1701
    .local v8, "targetMCPEVersion":Ljava/lang/String;
    const-string v9, "net.zhuoweizhang.mcpelauncher.ADDON"

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lnet/zhuoweizhang/mcpelauncher/AddonManager;->isEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1705
    :try_start_0
    invoke-direct {p0, v8}, Lcom/mojang/minecraftpe/MainActivity;->isAddonCompat(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1706
    new-instance v9, Ljava/lang/Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The addon \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not compatible with Minecraft PE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :catch_0
    move-exception v4

    .line 1723
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v4}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    .line 1724
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1710
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    if-eqz v6, :cond_4

    .line 1711
    :try_start_1
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/mojang/minecraftpe/MainActivity;->checkAddonArch(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1712
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1713
    sget-object v9, Lcom/mojang/minecraftpe/MainActivity;->loadedAddons:Ljava/util/Set;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1715
    :cond_3
    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1720
    :cond_4
    sget-object v9, Lcom/mojang/minecraftpe/MainActivity;->loadedAddons:Ljava/util/Set;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1728
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "nativeLibName":Ljava/lang/String;
    .end local v8    # "targetMCPEVersion":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_6

    .line 1729
    new-instance v9, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lnet/zhuoweizhang/mcpelauncher/R$string;->addons_wrong_arch:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ARCH"

    iget v12, p0, Lcom/mojang/minecraftpe/MainActivity;->mcpeArch:I

    invoke-static {v12}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getArchName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ADDONS"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    .line 1734
    :cond_6
    iget-object v9, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    new-instance v10, Lnet/zhuoweizhang/mcpelauncher/AddonOverrideTexturePack;

    invoke-direct {v10, p0}, Lnet/zhuoweizhang/mcpelauncher/AddonOverrideTexturePack;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected loadTexturePack()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1780
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "zz_texture_pack_enable"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1781
    .local v2, "loadTexturePack":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    .line 1782
    if-eqz v2, :cond_1

    .line 1783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1784
    .local v1, "incompatible":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "images/terrain.meta"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;Z)[B

    move-result-object v4

    const-string v5, "images/items.meta"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/mojang/minecraftpe/MainActivity;->getFileDataBytes(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-static {p0, v1, v4, v5}, Lnet/zhuoweizhang/mcpelauncher/texture/TexturePackLoader;->loadTexturePacks(Landroid/content/Context;Ljava/util/List;[B[B)Ljava/util/List;

    move-result-object v3

    .line 1787
    .local v3, "packs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/TexturePack;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1788
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Some of your texture packs are not compatible with Minecraft PE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMCPEVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Please update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v1, v6}, Lnet/zhuoweizhang/mcpelauncher/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1794
    :cond_0
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    .end local v1    # "incompatible":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "loadTexturePack":Z
    .end local v3    # "packs":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/TexturePack;>;"
    :cond_1
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1799
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->texture_pack_unable_to_load:I

    invoke-virtual {p0, v0, v4, v7}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected loadTexturePackOld()V
    .locals 8

    .prologue
    .line 1756
    const/4 v2, 0x0

    .line 1758
    .local v2, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "zz_texture_pack_enable"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1759
    .local v3, "loadTexturePack":Z
    const/4 v4, 0x1

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "texturePack"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1760
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1761
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1765
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;

    .line 1776
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "loadTexturePack":Z
    :goto_0
    return-void

    .line 1767
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "loadTexturePack":Z
    :cond_0
    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;

    invoke-direct {v4, v1}, Lnet/zhuoweizhang/mcpelauncher/ZipTexturePack;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1772
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "loadTexturePack":Z
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1774
    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->texture_pack_unable_to_load:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;ILjava/lang/String;)V

    goto :goto_0

    .line 1770
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "loadTexturePack":Z
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->texturePack:Lnet/zhuoweizhang/mcpelauncher/TexturePack;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected loginLaunchCallback(Landroid/net/Uri;)V
    .locals 7
    .param p1, "launchUri"    # Landroid/net/Uri;

    .prologue
    .line 1826
    iget-object v6, p0, Lcom/mojang/minecraftpe/MainActivity;->loginDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1827
    const-string v6, "sessionId"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1828
    .local v5, "session":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1836
    :goto_0
    return-void

    .line 1830
    :cond_0
    const-string v6, "profileName"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1831
    .local v2, "profileName":Ljava/lang/String;
    const-string v6, "identity"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1832
    .local v4, "refreshToken":Ljava/lang/String;
    const-string v6, "accessToken"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    .local v0, "accessToken":Ljava/lang/String;
    const-string v6, "clientToken"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1834
    .local v1, "clientToken":Ljava/lang/String;
    const-string v6, "profileUuid"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1835
    .local v3, "profileUuid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/mojang/minecraftpe/MainActivity;->nativeLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected migrateToPatchManager()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1739
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "patchManagerVersion"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    .line 1740
    .local v1, "enabledPatchMgr":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1749
    .end local v1    # "enabledPatchMgr":Z
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1739
    goto :goto_0

    .line 1742
    .restart local v1    # "enabledPatchMgr":Z
    :cond_1
    const/16 v3, 0x1003

    invoke-virtual {p0, v3}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    .line 1743
    const-string v3, "ptpatches"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/mojang/minecraftpe/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1744
    .local v2, "patchesDir":Ljava/io/File;
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->getPatchManager(Landroid/content/Context;)Lnet/zhuoweizhang/mcpelauncher/PatchManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lnet/zhuoweizhang/mcpelauncher/PatchManager;->setEnabled([Ljava/io/File;Z)V

    .line 1745
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x1

    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "enabledPatches"

    const-string v6, "LOL"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1746
    .end local v1    # "enabledPatchMgr":Z
    .end local v2    # "patchesDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public native nativeBackPressed()V
.end method

.method public native nativeBackSpacePressed()V
.end method

.method public native nativeLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeRegisterThis()V
.end method

.method public native nativeReturnKeyPressed()V
.end method

.method public native nativeSetTextboxText(Ljava/lang/String;)V
.end method

.method public native nativeStopThis()V
.end method

.method public native nativeSuspend()V
.end method

.method public native nativeTypeCharacter(Ljava/lang/String;)V
.end method

.method public native nativeUnregisterThis()V
.end method

.method public native nativeWebRequestCompleted(IJILjava/lang/String;)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 701
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_1

    .line 702
    const/4 v1, 0x1

    iput v1, p0, Lcom/mojang/minecraftpe/MainActivity;->inputStatus:I

    .line 703
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Settings OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->applyBuiltinPatches()V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const/16 v1, 0x19f

    if-ne p1, v1, :cond_3

    .line 709
    if-ne p2, v2, :cond_2

    .line 710
    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->pickImageResult:Landroid/content/Intent;

    .line 711
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->copyContentStoreToTempFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 712
    .local v0, "tempFile":Ljava/io/File;
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->pickImageCallbackAddress:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageSuccess(JLjava/lang/String;)V

    goto :goto_0

    .line 714
    .end local v0    # "tempFile":Ljava/io/File;
    :cond_2
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->pickImageCallbackAddress:J

    invoke-static {v2, v3}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageCanceled(J)V

    goto :goto_0

    .line 716
    :cond_3
    const/16 v1, 0x1a0

    if-ne p1, v1, :cond_0

    .line 717
    if-ne p2, v2, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 719
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->forceRestart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1949
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    new-instance v18, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v18, Lcom/mojang/minecraftpe/MainActivity;->currentMainActivity:Ljava/lang/ref/WeakReference;

    .line 211
    sget-boolean v18, Lcom/mojang/minecraftpe/MainActivity;->hasAlreadyInited:Z

    if-eqz v18, :cond_1

    .line 212
    const/16 v18, 0x1

    sput-boolean v18, Lcom/mojang/minecraftpe/MainActivity;->globalRestart:Z

    .line 213
    sget-wide v18, Lcom/mojang/minecraftpe/MainActivity;->lastDestroyTime:J

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sget-wide v20, Lcom/mojang/minecraftpe/MainActivity;->lastDestroyTime:J

    sub-long v6, v18, v20

    .line 215
    .local v6, "elapsedTime":J
    const-wide/16 v18, 0xbb8

    cmp-long v18, v6, v18

    if-gez v18, :cond_0

    .line 218
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 223
    .end local v6    # "elapsedTime":J
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 224
    const/16 v18, 0x3e8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/NerdyStuffActivity;->forceRestart(Landroid/app/Activity;IZ)V

    .line 225
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 227
    :cond_1
    const/16 v18, 0x1

    sput-boolean v18, Lcom/mojang/minecraftpe/MainActivity;->hasAlreadyInited:Z

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->checkForSubstrate()V

    .line 231
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "safe_mode_counter"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 232
    .local v15, "safeModeCounter":I
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current fails: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_2

    .line 234
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "zz_safe_mode"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    const/4 v15, 0x0

    .line 237
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 238
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "safe_mode_counter"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    sput-object v18, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->context:Landroid/content/Context;

    .line 241
    const/4 v13, 0x0

    .line 244
    .local v13, "needsToClearOverrides":Z
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "com.mojang.minecraftpe"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v18, v0

    sput-object v18, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    .line 247
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/libminecraftpe.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    .line 248
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "libminecraftpe.so is at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkForwardLocked:Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 251
    .local v11, "minecraftVersionCode":I
    invoke-static {v11}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->getRaw(I)Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 253
    const/16 v18, 0x1

    sput-boolean v18, Lcom/mojang/minecraftpe/MainActivity;->tempSafeMode:Z

    .line 254
    const/16 v18, 0x1004

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    .line 255
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->getDefault()Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;->needsWarning:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 258
    const-string v18, "BlockLauncher/Main"

    const-string v19, "OMG hipster version code found - breaking mod compat before it\'s cool"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    move-object/from16 v18, v0

    sput-object v18, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->minecraftVersion:Lnet/zhuoweizhang/mcpelauncher/MinecraftVersion;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "0.14"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "~~~~"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    :cond_5
    const/4 v9, 0x1

    .line 266
    .local v9, "isSupportedVersion":Z
    :goto_2
    if-nez v9, :cond_6

    .line 267
    new-instance v8, Landroid/content/Intent;

    const-class v18, Lnet/zhuoweizhang/mcpelauncher/ui/MinecraftNotSupportedActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v8, "intent":Landroid/content/Intent;
    const-string v18, "minecraftVersion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcPkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v18, "supportedVersion"

    const-string v19, "0.14.0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    const-wide/16 v18, 0x3e8

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->fixMyEpicFail()V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->migrateToPatchManager()V

    .line 283
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 284
    .local v12, "myprefs":Landroid/content/SharedPreferences;
    const-string v18, "prepatch_version"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 286
    .local v14, "prepatchedVersionCode":I
    if-eq v14, v11, :cond_7

    .line 287
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Version updated; forcing prepatch"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "force_prepatch"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->disableAllPatches()V

    .line 290
    const/4 v13, 0x1

    .line 293
    :cond_7
    const-string v18, "last_version"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 295
    .local v10, "lastVersionCode":I
    if-eq v10, v11, :cond_8

    .line 297
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "zz_texture_pack_enable"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "last_version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    const-string v18, "texture_packs"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "minecraft.apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_8

    .line 300
    const/16 v18, 0x1006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 317
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->checkArch()V

    .line 320
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.mojang.minecraftpe"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkContext:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 333
    :goto_4
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 335
    new-instance v18, Ljava/io/File;

    const-string v19, "/sdcard/bl_forcefallback.txt"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mojang/minecraftpe/MainActivity;->forceFallback:Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->loadTexturePack()V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->allowScriptOverrideTextures()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lnet/zhuoweizhang/mcpelauncher/ScriptOverrideTexturePack;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ScriptOverrideTexturePack;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_9
    invoke-static/range {p0 .. p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->attachCache(Landroid/content/Context;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->doesRequireGuiBlocksPatch()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mojang/minecraftpe/MainActivity;->requiresGuiBlocksPatch:Z

    .line 352
    :try_start_5
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-nez v18, :cond_a

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "zz_manage_patches"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_b

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getMCPEVersion()Ljava/lang/String;

    move-result-object v18

    const-string v19, "~~~~"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 354
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->prePatch()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 364
    :cond_c
    :goto_5
    :try_start_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/libgnustl_shared.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 365
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mcAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/libfmod.so"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 366
    sget-object v18, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_LOCATION:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 375
    invoke-static/range {p0 .. p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 377
    const/16 v18, 0x1

    sput-boolean v18, Lcom/mojang/minecraftpe/MainActivity;->libLoaded:Z

    .line 380
    :try_start_7
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->requiresPatchingInSafeMode()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 381
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->initPatching()V

    .line 382
    sget-object v18, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    if-eqz v18, :cond_f

    .line 383
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "zz_signal_handler"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 384
    .local v17, "signalHandler":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->hasScriptSupport()Z

    move-result v18

    if-nez v18, :cond_18

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativePrePatch(ZLcom/mojang/minecraftpe/MainActivity;Z)V

    .line 385
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "zz_desktop_gui"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 386
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->nativeModPESetDesktopGui(Z)V

    .line 388
    :cond_e
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-nez v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->loadNativeAddons()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 397
    .end local v17    # "signalHandler":Z
    :cond_f
    :goto_7
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->hasScriptSupport()Z

    move-result v16

    .line 398
    .local v16, "shouldLoadScripts":Z
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-nez v18, :cond_10

    sget-object v18, Lcom/mojang/minecraftpe/MainActivity;->minecraftLibBuffer:Ljava/nio/ByteBuffer;

    if-eqz v18, :cond_10

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->applyBuiltinPatches()V

    .line 400
    if-eqz v16, :cond_10

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "zz_script_enable"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 401
    invoke-static/range {p0 .. p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->init(Landroid/content/Context;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->textureOverrides:Ljava/util/List;

    move-object/from16 v18, v0

    sget-object v19, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->modPkgTexturePack:Lnet/zhuoweizhang/mcpelauncher/texture/ModPkgTexturePack;

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_10
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-nez v18, :cond_11

    if-nez v16, :cond_12

    .line 406
    :cond_11
    invoke-static/range {p0 .. p0}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->loadEnabledScriptsNames(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 416
    .end local v16    # "shouldLoadScripts":Z
    :cond_12
    :goto_8
    if-eqz v13, :cond_13

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->clearTextureOverrides()V

    .line 418
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->initAtlasMeta()V

    .line 420
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 422
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setVolumeControlStream(I)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 426
    sget-object v18, Lcom/mojang/minecraftpe/MainActivity;->MC_NATIVE_LIBRARY_DIR:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->addLibraryDirToPath(Ljava/lang/String;)V

    .line 428
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setFakePackage(Z)V

    .line 430
    invoke-super/range {p0 .. p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeRegisterThis()V

    .line 434
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setFakePackage(Z)V

    .line 436
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setupTheme(Landroid/content/Context;Z)V

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->disableTransparentSystemBar()V

    .line 441
    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    .line 442
    .local v4, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v4}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 444
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mojang/minecraftpe/MainActivity;->overlyZealousSELinuxSafeMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 446
    const/16 v18, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    .line 453
    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->initKamcord()V

    .line 455
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 457
    .end local v4    # "cookieManager":Ljava/net/CookieManager;
    .end local v9    # "isSupportedVersion":Z
    .end local v10    # "lastVersionCode":I
    .end local v11    # "minecraftVersionCode":I
    .end local v12    # "myprefs":Landroid/content/SharedPreferences;
    .end local v14    # "prepatchedVersionCode":I
    :goto_a
    return-void

    .line 249
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 262
    .restart local v11    # "minecraftVersionCode":I
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 305
    .end local v11    # "minecraftVersionCode":I
    :catch_0
    move-exception v5

    .line 306
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 308
    new-instance v18, Landroid/content/Intent;

    const-class v19, Lnet/zhuoweizhang/mcpelauncher/ui/NoMinecraftActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    const-wide/16 v18, 0x64

    :try_start_9
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 311
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_a

    .line 312
    :catch_1
    move-exception v18

    goto :goto_a

    .line 323
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "isSupportedVersion":Z
    .restart local v10    # "lastVersionCode":I
    .restart local v11    # "minecraftVersionCode":I
    .restart local v12    # "myprefs":Landroid/content/SharedPreferences;
    .restart local v14    # "prepatchedVersionCode":I
    :cond_17
    :try_start_a
    const-string v18, "com.mojang.minecraftpe"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mojang/minecraftpe/MainActivity;->minecraftApkContext:Landroid/content/Context;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 326
    :catch_2
    move-exception v5

    .line 327
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const-string v18, "Can\'t create package context for the original APK"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    goto/16 :goto_4

    .line 356
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 357
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 367
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 368
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 384
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v17    # "signalHandler":Z
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 391
    .end local v17    # "signalHandler":Z
    :catch_5
    move-exception v5

    .line 392
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 411
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 412
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 448
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cookieManager":Ljava/net/CookieManager;
    :cond_19
    const/16 v18, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->showDialog(I)V

    goto/16 :goto_9

    .line 219
    .end local v4    # "cookieManager":Ljava/net/CookieManager;
    .end local v9    # "isSupportedVersion":Z
    .end local v10    # "lastVersionCode":I
    .end local v11    # "minecraftVersionCode":I
    .end local v12    # "myprefs":Landroid/content/SharedPreferences;
    .end local v13    # "needsToClearOverrides":Z
    .end local v14    # "prepatchedVersionCode":I
    .end local v15    # "safeModeCounter":I
    .restart local v6    # "elapsedTime":J
    :catch_7
    move-exception v18

    goto/16 :goto_0

    .line 275
    .end local v6    # "elapsedTime":J
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "isSupportedVersion":Z
    .restart local v11    # "minecraftVersionCode":I
    .restart local v13    # "needsToClearOverrides":Z
    .restart local v15    # "safeModeCounter":I
    :catch_8
    move-exception v18

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 725
    sparse-switch p1, :sswitch_data_0

    .line 753
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 727
    :sswitch_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createCreateWorldDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 729
    :sswitch_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createCopyWorldDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 731
    :sswitch_2
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_crash_safe_mode:I

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->createSafeModeDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 733
    :sswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->createRuntimeOptionsDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 735
    :sswitch_4
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createInvalidPatchesDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 737
    :sswitch_5
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createFirstLaunchDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 739
    :sswitch_6
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->version_mismatch_message:I

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->createSafeModeDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 741
    :sswitch_7
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createNotSupportedDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 743
    :sswitch_8
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createUpdateTexturePackDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 745
    :sswitch_9
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createInsertTextDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 747
    :sswitch_a
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createMultiplayerDisableScriptsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 749
    :sswitch_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->createRuntimeOptionsDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 751
    :sswitch_c
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createSELinuxBrokeEverythingDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x1001 -> :sswitch_3
        0x1002 -> :sswitch_4
        0x1003 -> :sswitch_5
        0x1004 -> :sswitch_6
        0x1005 -> :sswitch_7
        0x1006 -> :sswitch_8
        0x1007 -> :sswitch_9
        0x1008 -> :sswitch_a
        0x1009 -> :sswitch_b
        0x100a -> :sswitch_c
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 494
    sget-boolean v1, Lcom/mojang/minecraftpe/MainActivity;->globalRestart:Z

    if-eqz v1, :cond_0

    .line 495
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 510
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeUnregisterThis()V

    .line 499
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 500
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "running.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    .local v0, "lockFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    invoke-virtual {v1}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->dismiss()V

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    .line 507
    :cond_2
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->destroy()V

    .line 509
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeSuspend()V

    .line 487
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 488
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "safe_mode_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hasResetSafeModeCounter:Z

    .line 490
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->hideKeyboardView()V

    .line 491
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 461
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 462
    iget-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hasResetSafeModeCounter:Z

    if-eqz v1, :cond_0

    .line 463
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "safe_mode_counter"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 464
    .local v0, "safeModeCounter":I
    add-int/lit8 v0, v0, 0x1

    .line 465
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "safe_mode_counter"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 467
    .end local v0    # "safeModeCounter":I
    :cond_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    if-nez v1, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$2;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 480
    :goto_0
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "zz_immersive_mode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->setImmersiveMode(Z)V

    .line 482
    return-void

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "zz_hovercar_hide"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setVisible(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeStopThis()V

    .line 514
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 515
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/ScriptTextureDownloader;->flushCache()V

    .line 516
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 517
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2223
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 2224
    if-eqz p1, :cond_0

    .line 2225
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->touchImmersiveMode()V

    .line 2227
    :cond_0
    return-void
.end method

.method protected openFallbackAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openLoginWindow()V
    .locals 2

    .prologue
    .line 1297
    const-string v0, "BlockLauncher/Main"

    const-string v1, "Open login window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$18;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1329
    return-void
.end method

.method public pickImage(J)V
    .locals 3
    .param p1, "callbackAddress"    # J

    .prologue
    .line 1875
    iput-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->pickImageCallbackAddress:J

    .line 1877
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1878
    .local v0, "picker":Landroid/content/Intent;
    const/16 v1, 0x19f

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1879
    return-void
.end method

.method public postScreenshotToFacebook(Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "firstInt"    # I
    .param p3, "secondInt"    # I
    .param p4, "thatArray"    # [I

    .prologue
    .line 1236
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->finish()V

    .line 1240
    return-void
.end method

.method public reportError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2044
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$string;->report_error_title:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->reportError(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 2045
    return-void
.end method

.method public reportError(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "messageId"    # I
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 2048
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$27;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/mojang/minecraftpe/MainActivity$27;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/Throwable;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2074
    return-void
.end method

.method public reportReimported(Ljava/lang/String;)V
    .locals 1
    .param p1, "scripts"    # Ljava/lang/String;

    .prologue
    .line 2379
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$33;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$33;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2386
    return-void
.end method

.method protected resetOrientation()V
    .locals 0

    .prologue
    .line 2106
    return-void
.end method

.method public screenshotCallback(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 2122
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$30;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$30;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2132
    return-void
.end method

.method public scriptErrorCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "scriptName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2077
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$28;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2102
    return-void
.end method

.method public scriptOverrideTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "theOverridden"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->forceTextureReload()V

    .line 2018
    return-void
.end method

.method public scriptPrintCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "scriptName"    # Ljava/lang/String;

    .prologue
    .line 2008
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$26;

    invoke-direct {v0, p0, p2, p1}, Lcom/mojang/minecraftpe/MainActivity$26;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2014
    return-void
.end method

.method public scriptResetImages()V
    .locals 0

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->forceTextureReload()V

    .line 2022
    return-void
.end method

.method public scriptTooManyErrorsCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "scriptName"    # Ljava/lang/String;

    .prologue
    .line 2109
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$29;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$29;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2119
    return-void
.end method

.method public setIsPowerVR(Z)V
    .locals 3
    .param p1, "powerVR"    # Z

    .prologue
    .line 1243
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerVR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public setLevelCallback(Z)V
    .locals 3
    .param p1, "isRemote"    # Z

    .prologue
    .line 1986
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set level callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1987
    if-eqz p1, :cond_0

    sget-object v0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1988
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$25;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$25;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1994
    :cond_0
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hasRecorder:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->clearRuntimeOptionsDialog()V

    .line 1995
    :cond_1
    return-void
.end method

.method public setLoginInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "profileUuid"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clientId"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileUuid"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profileName"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1460
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1332
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refreshToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1333
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 1336
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1337
    return-void
.end method

.method protected setupHoverCar()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1673
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v2

    invoke-direct {v1, p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    .line 1674
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->show(Landroid/view/View;)V

    .line 1675
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    invoke-static {v0}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "zz_hovercar_hide"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->setVisible(Z)V

    .line 1676
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hoverCar:Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;

    iget-object v0, v0, Lnet/zhuoweizhang/mcpelauncher/ui/HoverCar;->mainButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$24;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$24;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    return-void
.end method

.method public showHiddenTextbox(Ljava/lang/String;IZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "dismissAfterOneLine"    # Z

    .prologue
    .line 1527
    const/high16 v0, 0x2000000

    .line 1528
    .local v0, "IME_FLAG_NO_FULLSCREEN":I
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isCommandHistoryEnabled()Z

    move-result v1

    .line 1529
    .local v1, "commandHistory":Z
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    if-nez v7, :cond_0

    .line 1530
    if-eqz v1, :cond_2

    .line 1531
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lnet/zhuoweizhang/mcpelauncher/R$layout;->chat_history_popup:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryView:Landroid/view/View;

    .line 1533
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryView:Landroid/view/View;

    sget v8, Lnet/zhuoweizhang/mcpelauncher/R$id;->hidden_text_view:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    .line 1534
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryView:Landroid/view/View;

    sget v8, Lnet/zhuoweizhang/mcpelauncher/R$id;->command_history_previous:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->prevButton:Landroid/widget/Button;

    .line 1535
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryView:Landroid/view/View;

    sget v8, Lnet/zhuoweizhang/mcpelauncher/R$id;->command_history_next:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->nextButton:Landroid/widget/Button;

    .line 1536
    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$22;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$22;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 1545
    .local v4, "listener":Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->prevButton:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1546
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    .end local v4    # "listener":Landroid/view/View$OnClickListener;
    :goto_0
    new-instance v5, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V

    .line 1551
    .local v5, "whoWatchesTheWatcher":Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1552
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1553
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1554
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    const v8, 0x12000005

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1556
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 1557
    if-eqz v1, :cond_3

    .line 1558
    new-instance v7, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryView:Landroid/view/View;

    invoke-direct {v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    .line 1564
    :goto_1
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1566
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1567
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1568
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1570
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1571
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1572
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1575
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    new-instance v8, Lcom/mojang/minecraftpe/MainActivity$23;

    invoke-direct {v8, p0}, Lcom/mojang/minecraftpe/MainActivity$23;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1582
    .end local v5    # "whoWatchesTheWatcher":Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
    :cond_0
    if-eqz v1, :cond_5

    .line 1584
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 1585
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1584
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1548
    .end local v2    # "i":I
    :cond_2
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1560
    .restart local v5    # "whoWatchesTheWatcher":Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
    :cond_3
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1561
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1562
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    goto :goto_1

    .line 1587
    .end local v3    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v5    # "whoWatchesTheWatcher":Lcom/mojang/minecraftpe/MainActivity$PopupTextWatcher;
    .restart local v2    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->commandHistoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/mojang/minecraftpe/MainActivity;->setCommandHistoryIndex(I)V

    .line 1591
    .end local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1593
    iput-boolean p3, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextDismissAfterOneLine:Z

    .line 1595
    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 1597
    .local v6, "xLoc":I
    :goto_3
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x33

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1599
    iget-object v7, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 1600
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboardView()V

    .line 1601
    return-void

    .line 1595
    .end local v6    # "xLoc":I
    :cond_6
    const/16 v6, -0x2710

    goto :goto_3
.end method

.method public showKeyboard(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "mystr"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "mybool"    # Z

    .prologue
    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZZ)V

    .line 1472
    return-void
.end method

.method public showKeyboard(Ljava/lang/String;IZZ)V
    .locals 1
    .param p1, "mystr"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "mybool"    # Z
    .param p4, "mybool2"    # Z

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->useLegacyKeyboardInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboardView()V

    .line 1485
    :goto_0
    return-void

    .line 1480
    :cond_0
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mojang/minecraftpe/MainActivity$19;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showKeyboardView()V
    .locals 3

    .prologue
    .line 1413
    const-string v1, "BlockLauncher/Main"

    const-string v2, "Show keyboard view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1415
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1416
    return-void
.end method

.method public statsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "firstEvent"    # Ljava/lang/String;
    .param p2, "secondEvent"    # Ljava/lang/String;

    .prologue
    .line 1440
    const-string v0, "BlockLauncher/Main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats track: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void
.end method

.method public statsUpdateUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "firstEvent"    # Ljava/lang/String;
    .param p2, "secondEvent"    # Ljava/lang/String;

    .prologue
    .line 1444
    const-string v0, "BlockLauncher/Main"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats update user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void
.end method

.method public supportsNonTouchscreen()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1340
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isForcingController()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1341
    iget-boolean v8, p0, Lcom/mojang/minecraftpe/MainActivity;->controllerInit:Z

    if-nez v8, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->isSafeMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1342
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/api/modpe/ControllerManager;->init()V

    .line 1343
    iput-boolean v7, p0, Lcom/mojang/minecraftpe/MainActivity;->controllerInit:Z

    .line 1359
    :cond_0
    :goto_0
    return v7

    .line 1347
    :cond_1
    const/4 v6, 0x0

    .line 1348
    .local v6, "xperia":Z
    const/4 v4, 0x0

    .line 1349
    .local v4, "play":Z
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    .line 1350
    .local v1, "data":[Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    .line 1351
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    .line 1352
    const/4 v9, 0x2

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 1353
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 1354
    .local v5, "s":Ljava/lang/String;
    const-string v9, "xperia"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_2

    .line 1355
    const/4 v6, 0x1

    .line 1356
    :cond_2
    const-string v9, "play"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_3

    .line 1357
    const/4 v4, 0x1

    .line 1353
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1359
    .end local v5    # "s":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    if-nez v4, :cond_0

    :cond_5
    move v7, v8

    goto :goto_0
.end method

.method public tick()V
    .locals 0

    .prologue
    .line 1247
    return-void
.end method

.method protected toggleRecording()V
    .locals 0

    .prologue
    .line 2233
    return-void
.end method

.method public updateTextboxText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1524
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->hiddenTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$21;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public vibrate(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-static {v2}, Lnet/zhuoweizhang/mcpelauncher/Utils;->getPrefs(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zz_longvibration"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    mul-int/lit8 p1, p1, 0x5

    .line 1253
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1254
    return-void
.end method

.method public webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "timestamp"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "cookies"    # Ljava/lang/String;

    .prologue
    .line 1363
    const-string v7, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mojang/minecraftpe/MainActivity;->webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method public webRequest(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "requestId"    # I
    .param p2, "timestamp"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "cookies"    # Ljava/lang/String;
    .param p7, "extraParam"    # Ljava/lang/String;

    .prologue
    .line 1373
    invoke-virtual {p0, p4}, Lcom/mojang/minecraftpe/MainActivity;->filterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1376
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mojang/minecraftpe/MainActivity$HurlRunner;-><init>(Lcom/mojang/minecraftpe/MainActivity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1377
    return-void
.end method
