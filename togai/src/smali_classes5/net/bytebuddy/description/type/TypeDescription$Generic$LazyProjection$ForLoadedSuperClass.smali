.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedSuperClass"
.end annotation


# instance fields
.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 6421
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->type:Ljava/lang/Class;

    .line 6440
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6441
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 6443
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 2

    .line 6448
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveSuperClassType(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 6409
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->type:Ljava/lang/Class;

    .line 6430
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6431
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 6433
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6431
    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
