.class public Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;
.super Ljava/lang/Object;
.source "ContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem$ContentListComparator;
    }
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public enabled:Z

.field public extraData:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "enabled"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->file:Ljava/io/File;

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    .line 21
    return-void
.end method

.method public static sort(Ljava/util/List;)V
    .locals 1
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
    .line 36
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;>;"
    new-instance v0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem$ContentListComparator;

    invoke-direct {v0}, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem$ContentListComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, " "

    const-string v2, "(disabled)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lnet/zhuoweizhang/mcpelauncher/ui/ContentListItem;->enabled:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, " "

    sget v2, Lnet/zhuoweizhang/mcpelauncher/R$string;->manage_patches_disabled:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
