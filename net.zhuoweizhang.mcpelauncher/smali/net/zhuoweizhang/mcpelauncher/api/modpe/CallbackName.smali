.class public interface abstract annotation Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
.super Ljava/lang/Object;
.source "CallbackName.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/zhuoweizhang/mcpelauncher/api/modpe/CallbackName;
        args = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract args()[Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method
