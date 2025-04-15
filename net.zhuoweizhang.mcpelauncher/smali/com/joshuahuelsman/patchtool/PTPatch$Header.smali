.class Lcom/joshuahuelsman/patchtool/PTPatch$Header;
.super Ljava/lang/Object;
.source "PTPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joshuahuelsman/patchtool/PTPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Header"
.end annotation


# instance fields
.field indices:[B

.field magic:[B

.field minecraft_ver:I

.field num_patches:I

.field final synthetic this$0:Lcom/joshuahuelsman/patchtool/PTPatch;


# direct methods
.method constructor <init>(Lcom/joshuahuelsman/patchtool/PTPatch;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->this$0:Lcom/joshuahuelsman/patchtool/PTPatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/joshuahuelsman/patchtool/PTPatch$Header;->magic:[B

    return-void
.end method
