.class public Lcom/mojang/android/net/HTTPResponse;
.super Ljava/lang/Object;
.source "HTTPResponse.java"


# static fields
.field public static final STATUS_FAIL:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field private body:Ljava/lang/String;

.field private headers:[Lorg/apache/http/Header;

.field private responseCode:I

.field private status:I


# direct methods
.method public constructor <init>(IILjava/lang/String;[Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "responseCode"    # I
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    .line 17
    iput p2, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    .line 18
    iput-object p3, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    .line 20
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 2

    .prologue
    .line 38
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "get headers"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mojang/android/net/HTTPResponse;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2

    .prologue
    .line 33
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "get response code"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->responseCode:I

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lcom/mojang/android/net/HTTPRequest;->debugNet:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "get status"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/mojang/android/net/HTTPResponse;->status:I

    return v0
.end method
