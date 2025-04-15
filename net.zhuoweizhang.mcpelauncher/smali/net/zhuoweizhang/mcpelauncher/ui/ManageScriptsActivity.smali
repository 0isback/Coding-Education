.class public Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
.super Landroid/app/ListActivity;
.source "ManageScriptsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;,
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;,
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;,
        Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptTask;
    }
.end annotation


# static fields
.field private static final ALL_SCRIPT_MIMETYPES:[Ljava/lang/String;

.field private static final DIALOG_IMPORT_FROM_CFGY:I = 0x6

.field private static final DIALOG_IMPORT_FROM_CLIPBOARD:I = 0x9

.field private static final DIALOG_IMPORT_FROM_CLIPBOARD_CODE:I = 0xa

.field private static final DIALOG_IMPORT_FROM_INTENT:I = 0xb

.field private static final DIALOG_IMPORT_FROM_URL:I = 0x7

.field private static final DIALOG_IMPORT_SOURCES:I = 0x5

.field private static final DIALOG_MANAGE_PATCH:I = 0x1

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_DISABLED:I = 0x2

.field private static final DIALOG_MANAGE_PATCH_CURRENTLY_ENABLED:I = 0x3

.field private static final DIALOG_PATCH_INFO:I = 0x4

.field private static final DIALOG_VERSION_INCOMPATIBLE:I = 0x8

.field private static final REQUEST_IMPORT_PATCH:I = 0xd4

.field private static cfgyMappings:[C


# instance fields
.field protected adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;"
        }
    .end annotation
.end field

.field private importButton:Landroid/widget/Button;

.field private importClipboardName:Ljava/lang/String;

.field protected master:Landroid/widget/CompoundButton;

.field private patches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;"
        }
    .end annotation
.end field

.field private refreshThread:Ljava/lang/Thread;

.field private selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/javascript"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text/coffeescript"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/literate-coffeescript"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "application/x-mpep"

    aput-object v2, v0, v1

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->ALL_SCRIPT_MIMETYPES:[Ljava/lang/String;

    .line 544
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->cfgyMappings:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x66s
        0x74s
        0x61s
        0x6ds
        0x62s
        0x71s
        0x67s
        0x72s
        0x7as
        0x6fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importClipboardName:Ljava/lang/String;

    .line 791
    return-void
.end method

.method static synthetic access$000(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->patches:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->openManagePatchWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    return-void
.end method

.method static synthetic access$1300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getCfgyUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;I)[B
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->bytesFromInputStream(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->findScripts()V

    return-void
.end method

.method static synthetic access$300(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .locals 1
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    return-object v0
.end method

.method static synthetic access$400(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->viewSource(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    return-void
.end method

.method static synthetic access$500(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importFromCfgy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importClipboardName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importFromClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importFromIntent()V

    return-void
.end method

.method private afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 0
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 330
    return-void
.end method

.method private static bytesFromInputStream(Ljava/io/InputStream;I)[B
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "startingLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 829
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 831
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 832
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 836
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3

    .line 834
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 836
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v3
.end method

.method private static cfgyIdToFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 531
    const/16 v4, 0x24

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "cfgyID":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 533
    .local v0, "cfgyFilename":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 534
    sget-object v4, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->cfgyMappings:[C

    aget-char v5, v0, v2

    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 538
    .local v3, "retval":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    return-object v3
.end method

.method private createImportFromCfgyDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 442
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "view":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_cfgy_id:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;

    invoke-direct {v3, p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$5;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createImportFromClipboardCodeDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 488
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 489
    .local v0, "view":Landroid/widget/EditText;
    const v1, 0x1332bf5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 490
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_clipboard_code:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$8;

    invoke-direct {v3, p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$8;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createImportFromClipboardDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 474
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, "view":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_clipboard_name:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$7;

    invoke-direct {v3, p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$7;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createImportFromIntentDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Unable to get script location"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_intent_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$9;

    invoke-direct {v2, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$9;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createImportFromUrlDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 455
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, "view":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_url_enter:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$6;

    invoke-direct {v3, p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$6;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createImportSourcesDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 421
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 422
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_local:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_cfgy:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_url:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from_clipboard:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 424
    .local v0, "options":[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_from:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;

    invoke-direct {v3, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$4;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createPatchInfoDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Whoops! info fail"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Whoops - try again, this is a tiny fail"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createVersionIncompatibleDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_minecraft_version_incompatible:I

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

.method private findScripts()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;

    invoke-direct {v1, p0, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread;-><init>(Landroid/app/Activity;Lnet/zhuoweizhang/mcpelauncher/ui/RefreshContentListThread$OnRefreshContentList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshThread:Ljava/lang/Thread;

    .line 246
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method private static getCfgyUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const-string v1, "[a-zA-Z]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 586
    .local v0, "legacyScript":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 587
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://modpe.cf.gy/mods/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->cfgyIdToFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 589
    :goto_1
    return-object v1

    .line 585
    .end local v0    # "legacyScript":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    .restart local v0    # "legacyScript":Z
    :cond_2
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://betamodpe2.cf.gy/user/getScr.php?scrid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPatchInfo(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Ljava/lang/String;
    .locals 3
    .param p1, "patchItem"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_path:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private importFromCfgy(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    .line 521
    .local v0, "task":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromCfgyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    return-void
.end method

.method private importFromClipboard(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 595
    :try_start_0
    const-string v5, "modscripts"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 596
    .local v2, "patchesFolder":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importClipboardName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v4, "scriptFile":Ljava/io/File;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 598
    .local v3, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 600
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 602
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V

    .line 603
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getMaxPatchCount()I

    move-result v1

    .line 604
    .local v1, "maxPatchCount":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyScripts()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 605
    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_too_many:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v1    # "maxPatchCount":I
    .end local v2    # "patchesFolder":Ljava/io/File;
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v4    # "scriptFile":Ljava/io/File;
    :goto_0
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->findScripts()V

    .line 614
    return-void

    .line 607
    .restart local v1    # "maxPatchCount":I
    .restart local v2    # "patchesFolder":Ljava/io/File;
    .restart local v3    # "printWriter":Ljava/io/PrintWriter;
    .restart local v4    # "scriptFile":Ljava/io/File;
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v4, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 609
    .end local v1    # "maxPatchCount":I
    .end local v2    # "patchesFolder":Ljava/io/File;
    .end local v3    # "printWriter":Ljava/io/PrintWriter;
    .end local v4    # "scriptFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private importFromIntent()V
    .locals 4

    .prologue
    .line 617
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 618
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    .line 619
    .local v0, "task":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromIntentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 621
    return-void
.end method

.method private importFromUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 548
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;)V

    .line 549
    .local v0, "task":Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$ImportScriptFromUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 550
    return-void
.end method

.method private isValidPatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Z
    .locals 4
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 513
    iget-object v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openManagePatchWindow(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 1
    .param p1, "item"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 250
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 251
    iget-boolean v0, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    .line 252
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private reportError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 553
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;

    invoke-direct {v0, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$10;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method

.method private reportScriptLoadError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportError(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method

.method private versionIsSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 577
    :try_start_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.mojang.minecraftpe"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x1dd99df3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private viewSource(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 7
    .param p1, "item"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 626
    :try_start_0
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "scripts"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 627
    .local v3, "outDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 628
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    .local v4, "outFile":Ljava/io/File;
    iget-object v5, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-static {v5, v4}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 630
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 632
    .local v0, "derp":Landroid/net/Uri;
    const-string v5, "text/plain"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .end local v0    # "derp":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "outDir":Ljava/io/File;
    .end local v4    # "outFile":Ljava/io/File;
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected createManagePatchDialog(I)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "enableStatus"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 377
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_info:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 378
    .local v1, "patchInfoStr":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_view_source:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 379
    .local v2, "viewSourceStr":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 380
    .local v0, "options":[Ljava/lang/CharSequence;
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 381
    new-array v0, v8, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v1, v0, v6

    aput-object v2, v0, v7

    .line 389
    .restart local v0    # "options":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Patch name goes here"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;

    invoke-direct {v4, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$3;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 384
    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/CharSequence;

    .end local v0    # "options":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_delete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object v1, v0, v6

    aput-object v2, v0, v7

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_enable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v8

    .restart local v0    # "options":[Ljava/lang/CharSequence;
    goto :goto_0

    .end local v0    # "options":[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_disable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1
.end method

.method public deletePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 3
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 335
    :try_start_0
    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setPatchListModified()V

    .line 338
    iget-object v1, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 339
    return-void

    .line 336
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFolders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v1, "modscripts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    return-object v0
.end method

.method protected getMaxPatchCount()I
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$integer;->max_num_scripts:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public importPatch()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->showDialog(I)V

    .line 187
    return-void
.end method

.method public importPatchFromFile()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->createGetContentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, "target":Landroid/content/Intent;
    const-string v1, "application/javascript"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-class v1, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v1, "net.zhuoweizhang.afilechooser.extra.MIME_TYPES"

    sget-object v2, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->ALL_SCRIPT_MIMETYPES:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "net.zhuoweizhang.afilechooser.extra.SORT_METHOD"

    const-string v2, "net.zhuoweizhang.afilechooser.extra.SORT_LAST_MODIFIED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/16 v1, 0xd4

    invoke-virtual {p0, v0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method

.method public isEnabled(Ljava/io/File;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 880
    invoke-static {p1}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->isEnabled(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 212
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 213
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 216
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v1}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->isCoffeeScript(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    new-instance v3, Ljava/io/File;

    const-string v5, "modscripts"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->outputName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v3, "to":Ljava/io/File;
    invoke-static {v1, v3}, Lnet/zhuoweizhang/mcpelauncher/CoffeeScriptCompiler;->compileFile(Ljava/io/File;Ljava/io/File;)V

    .line 224
    :goto_1
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V

    .line 225
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getMaxPatchCount()I

    move-result v2

    .line 226
    .local v2, "maxPatchCount":I
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyScripts()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_too_many:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    :goto_2
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setPatchListModified()V

    .line 233
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->findScripts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v2    # "maxPatchCount":I
    .end local v3    # "to":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportError(Ljava/lang/Throwable;)V

    .line 237
    sget v5, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_import_error:I

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v5, "modscripts"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .restart local v3    # "to":Ljava/io/File;
    invoke-static {v1, v3}, Lnet/zhuoweizhang/mcpelauncher/patch/PatchUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 222
    invoke-static {v1, v3}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setOriginalLocation(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 229
    .restart local v2    # "maxPatchCount":I
    :cond_2
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V

    .line 230
    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 209
    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importPatch()V

    .line 183
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->setLanguageOverride()V

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setResult(I)V

    .line 100
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$layout;->manage_patches:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 102
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 103
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$1;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->manage_patches_import_button:I

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importButton:Landroid/widget/Button;

    .line 109
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->importButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->androidContext:Landroid/content/Context;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->patches:Ljava/util/List;

    .line 115
    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$layout;->patch_list_item:I

    iget-object v3, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->patches:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 116
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createManagePatchDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createPatchInfoDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_4
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportSourcesDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_5
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromCfgyDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_6
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromUrlDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_7
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createVersionIncompatibleDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_8
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromClipboardDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_9
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromClipboardCodeDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_a
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->createImportFromIntentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$menu;->ab_master:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    sget v0, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch_container:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnet/zhuoweizhang/mcpelauncher/R$id;->ab_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->master:Landroid/widget/CompoundButton;

    .line 127
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->master:Landroid/widget/CompoundButton;

    new-instance v1, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;

    invoke-direct {v1, p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$2;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshABToggle()V

    .line 147
    :goto_0
    const/4 v0, 0x1

    .line 149
    :goto_1
    return v0

    .line 145
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WTF?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 162
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshABToggle()V

    .line 163
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .param p1, "dialogId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 284
    packed-switch p1, :pswitch_data_0

    .line 305
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 307
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    move-object v0, p2

    .line 288
    check-cast v0, Landroid/app/AlertDialog;

    .line 289
    .local v0, "aDialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->toString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    .end local v0    # "aDialog":Landroid/app/AlertDialog;
    :pswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->selectedPatchItem:Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    invoke-virtual {p0, p2, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->preparePatchInfo(Landroid/app/AlertDialog;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    goto :goto_0

    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_3
    move-object v1, p2

    .line 295
    check-cast v1, Landroid/app/AlertDialog;

    .line 296
    .local v1, "bDialog":Landroid/app/AlertDialog;
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/ClipboardManager;

    .line 297
    .local v4, "cmgr":Landroid/text/ClipboardManager;
    invoke-virtual {v4}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 298
    .local v3, "cSequence":Ljava/lang/CharSequence;
    const v5, 0x1332bf5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1    # "bDialog":Landroid/app/AlertDialog;
    .end local v3    # "cSequence":Ljava/lang/CharSequence;
    .end local v4    # "cmgr":Landroid/text/ClipboardManager;
    :pswitch_4
    move-object v2, p2

    .line 301
    check-cast v2, Landroid/app/AlertDialog;

    .line 302
    .local v2, "cDialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRefreshComplete(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .line 844
    .local v3, "item":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    :try_start_0
    iget-object v5, v3, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".modpkg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 845
    new-instance v4, Ljava/util/zip/ZipFile;

    iget-object v5, v3, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 846
    .local v4, "zip":Ljava/util/zip/ZipFile;
    invoke-static {v4}, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->fromZip(Ljava/util/zip/ZipFile;)Lnet/zhuoweizhang/mcpelauncher/MpepInfo;

    move-result-object v2

    .line 847
    .local v2, "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lnet/zhuoweizhang/mcpelauncher/MpepInfo;->authorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    .end local v2    # "info":Lnet/zhuoweizhang/mcpelauncher/MpepInfo;
    .end local v4    # "zip":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "item":Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
    :cond_1
    new-instance v5, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;

    invoke-direct {v5, p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity$11;-><init>(Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;Ljava/util/List;)V

    invoke-virtual {p0, v5}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 168
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->refreshABToggle()V

    .line 169
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 156
    invoke-direct {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->findScripts()V

    .line 157
    return-void
.end method

.method public preparePatchInfo(Landroid/app/AlertDialog;Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    .line 342
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->toString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    :try_start_0
    invoke-direct {p0, p2}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getPatchInfo(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 349
    .local v1, "patchInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 350
    return-void

    .line 346
    .end local v1    # "patchInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot show info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "patchInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method protected refreshABToggle()V
    .locals 4

    .prologue
    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->master:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, "sh":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->master:Landroid/widget/CompoundButton;

    const-string v2, "zz_script_enable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    .end local v0    # "sh":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method protected setPatchListModified()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->setResult(I)V

    .line 205
    return-void
.end method

.method public togglePatch(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V
    .locals 6
    .param p1, "patch"    # Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->getMaxPatchCount()I

    move-result v1

    .line 311
    .local v1, "maxPatchCount":I
    iget-boolean v4, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v4, :cond_0

    invoke-static {}, Lnet/zhuoweizhang/mcpelauncher/Utils;->hasTooManyScripts()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->script_import_too_many:I

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 323
    :goto_0
    return-void

    .line 316
    :cond_0
    :try_start_0
    iget-object v5, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    iget-boolean v4, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v4, :cond_1

    move v4, v2

    :goto_1
    invoke-static {v5, v4}, Lnet/zhuoweizhang/mcpelauncher/ScriptManager;->setEnabled(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_2
    iget-boolean v4, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-nez v4, :cond_2

    :goto_3
    iput-boolean v2, p1, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 322
    invoke-direct {p0, p1}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->afterPatchToggle(Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;)V

    goto :goto_0

    :cond_1
    move v4, v3

    .line 316
    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    invoke-direct {p0, v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ManageScriptsActivity;->reportScriptLoadError(Ljava/lang/Exception;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v2, v3

    .line 321
    goto :goto_3
.end method
