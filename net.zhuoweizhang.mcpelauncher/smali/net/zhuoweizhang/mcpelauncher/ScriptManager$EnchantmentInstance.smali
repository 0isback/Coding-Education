.class Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;
.super Ljava/lang/Object;
.source "ScriptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/zhuoweizhang/mcpelauncher/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnchantmentInstance"
.end annotation


# instance fields
.field public final level:I

.field public final type:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "level"    # I

    .prologue
    .line 2608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2609
    iput p1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;->type:I

    .line 2610
    iput p2, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;->level:I

    .line 2611
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnchantmentInstance[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/zhuoweizhang/mcpelauncher/ScriptManager$EnchantmentInstance;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
