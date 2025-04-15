.class public Lorg/mozilla/javascript/ast/IfStatement;
.super Lorg/mozilla/javascript/ast/AstNode;


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePart:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePosition:I

.field private lp:I

.field private rp:I

.field private thenPart:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 v0, 0x71

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 v0, 0x71

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 v0, 0x71

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePosition()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return v0
.end method

.method public getLp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return v0
.end method

.method public getThenPart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setElsePosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return-void
.end method

.method public setLp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setRp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x82

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v2

    if-eq v2, v4, :cond_0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/ast/IfStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v2

    if-eq v2, v4, :cond_3

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "else "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v0

    const/16 v2, 0x71

    if-eq v0, v2, :cond_1

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ast/IfStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, " else "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
