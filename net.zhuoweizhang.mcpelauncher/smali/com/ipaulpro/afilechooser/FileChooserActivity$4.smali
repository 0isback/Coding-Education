.class Lcom/ipaulpro/afilechooser/FileChooserActivity$4;
.super Ljava/lang/Object;
.source "FileChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipaulpro/afilechooser/FileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$4;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 109
    .local v0, "a":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 110
    .local v2, "b":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 111
    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 106
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ipaulpro/afilechooser/FileChooserActivity$4;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
