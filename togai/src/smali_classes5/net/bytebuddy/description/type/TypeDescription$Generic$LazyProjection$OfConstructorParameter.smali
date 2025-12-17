.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfConstructorParameter"
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private transient synthetic delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final erasure:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 6556
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->constructor:Ljava/lang/reflect/Constructor;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->index:I

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->erasure:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->erasure:[Ljava/lang/Class;

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->index:I

    .line 6575
    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    .line 6580
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->constructor:Ljava/lang/reflect/Constructor;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveParameterType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 6531
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "delegate"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->constructor:Ljava/lang/reflect/Constructor;

    .line 6565
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->erasure:[Ljava/lang/Class;

    .line 6566
    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_1

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->index:I

    aget-object v0, v0, v1

    .line 6567
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->index:I

    aget-object v0, v1, v0

    .line 6568
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 6566
    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
