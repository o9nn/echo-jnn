.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithResolvedErasure"
.end annotation


# instance fields
.field private final annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

.field private final delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 6667
    invoke-direct {p0, p1, p2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;Lnet/bytebuddy/description/annotation/AnnotationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ")V"
        }
    .end annotation

    .line 6677
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6694
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->annotationSource:Lnet/bytebuddy/description/annotation/AnnotationSource;

    .line 6687
    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    .line 6700
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
