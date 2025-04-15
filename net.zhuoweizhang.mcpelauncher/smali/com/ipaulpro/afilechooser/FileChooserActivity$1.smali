.class Lcom/ipaulpro/afilechooser/FileChooserActivity$1;
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
    .line 73
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-static {v2, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-static {v2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->access$000(Lcom/ipaulpro/afilechooser/FileChooserActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
