.class public Lcom/ipaulpro/afilechooser/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "net.zhuoweizhang.afilechooser.extra.MIME_TYPES"

.field public static final EXTRA_SORT_METHOD:Ljava/lang/String; = "net.zhuoweizhang.afilechooser.extra.SORT_METHOD"

.field private static final HIDDEN_PREFIX:Ljava/lang/String; = "."

.field public static final MIME_TYPE_APP:Ljava/lang/String; = "application/*"

.field public static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/*"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field public static final SORT_LAST_MODIFIED:Ljava/lang/String; = "net.zhuoweizhang.afilechooser.extra.SORT_LAST_MODIFIED"

.field static final TAG:Ljava/lang/String; = "FileUtils"

.field private static mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static mDirFilter:Ljava/io/FileFilter;

.field private static mFileFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$1;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$1;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mComparator:Ljava/util/Comparator;

    .line 419
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$2;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$2;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mFileFilter:Ljava/io/FileFilter;

    .line 432
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$3;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$3;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mDirFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGetContentIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "dot":I
    if-ltz v0, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "filepath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .end local v0    # "filepath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "curdir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "curdir"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v1, "/"

    .line 191
    .local v1, "separator":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string v1, ""

    .line 194
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "clickedFile":Ljava/io/File;
    return-object v0
.end method

.method public static getFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v8, "pathDir":Ljava/io/File;
    sget-object v9, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 456
    .local v2, "dirs":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 458
    sget-object v9, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 460
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    sget-object v9, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 465
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_1

    .line 467
    sget-object v9, Lcom/ipaulpro/afilechooser/utils/FileUtils;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 469
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .local v3, "file":Ljava/io/File;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 472
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    return-object v7
.end method

.method public static getMimeType(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeTypes(Landroid/content/Context;)Lcom/ipaulpro/afilechooser/utils/MimeTypes;

    move-result-object v1

    .line 310
    .local v1, "mimeTypes":Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_0
    return-object v0
.end method

.method private static getMimeTypes(Landroid/content/Context;)Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "mimeTypes":Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    new-instance v2, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;

    invoke-direct {v2}, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;-><init>()V

    .line 290
    .local v2, "mtp":Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ipaulpro/afilechooser/R$xml;->mimetypes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 293
    .local v0, "in":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/ipaulpro/afilechooser/utils/MimeTypeParser;->fromXmlResource(Landroid/content/res/XmlResourceParser;)Lcom/ipaulpro/afilechooser/utils/MimeTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    .line 294
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 226
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 228
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 231
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 246
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 242
    :cond_0
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v0, v8

    .line 246
    goto :goto_0
.end method

.method public static getPathWithoutFilename(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 163
    if-eqz p0, :cond_2

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    .end local p0    # "file":Ljava/io/File;
    :goto_0
    return-object p0

    .line 168
    .restart local p0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "filepath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "pathwithoutname":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_1
    new-instance p0, Ljava/io/File;

    .end local p0    # "file":Ljava/io/File;
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "pathwithoutname":Ljava/lang/String;
    .restart local p0    # "file":Ljava/io/File;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getReadableFileSize(I)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # I

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    .line 258
    const/16 v0, 0x400

    .line 259
    .local v0, "BYTES_IN_KILOBYTES":I
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v7, "###.#"

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 260
    .local v4, "dec":Ljava/text/DecimalFormat;
    const-string v2, " KB"

    .line 261
    .local v2, "KILOBYTES":Ljava/lang/String;
    const-string v3, " MB"

    .line 262
    .local v3, "MEGABYTES":Ljava/lang/String;
    const-string v1, " GB"

    .line 263
    .local v1, "GIGABYTES":Ljava/lang/String;
    const/4 v5, 0x0

    .line 264
    .local v5, "fileSize":F
    const-string v6, " KB"

    .line 266
    .local v6, "suffix":Ljava/lang/String;
    const/16 v7, 0x400

    if-le p0, v7, :cond_0

    .line 267
    div-int/lit16 v7, p0, 0x400

    int-to-float v5, v7

    .line 268
    cmpl-float v7, v5, v8

    if-lez v7, :cond_0

    .line 269
    div-float/2addr v5, v8

    .line 270
    cmpl-float v7, v5, v8

    if-lez v7, :cond_1

    .line 271
    div-float/2addr v5, v8

    .line 272
    const-string v6, " GB"

    .line 278
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 274
    :cond_1
    const-string v6, " MB"

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 341
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isMediaUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    const-string v1, "FileUtils"

    const-string v2, "You can only retrieve thumbnails for images and videos."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    :goto_0
    return-object v6

    .line 364
    :cond_1
    const/4 v6, 0x0

    .line 365
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 369
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 370
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 374
    .local v8, "id":I
    const-string v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    int-to-long v2, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 392
    .end local v8    # "id":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 381
    .restart local v8    # "id":I
    :cond_3
    :try_start_1
    const-string v1, "image/*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    int-to-long v2, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 389
    .end local v8    # "id":I
    :catch_0
    move-exception v1

    .line 392
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getThumbnail(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 326
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "uriString":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
