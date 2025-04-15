.class Lcom/ipaulpro/afilechooser/FileChooserActivity$2;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipaulpro/afilechooser/FileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$2;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
