.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedFieldType"
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 6467
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->field:Ljava/lang/reflect/Field;

    .line 6481
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 2

    .line 6486
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->field:Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveFieldType(Ljava/lang/reflect/Field;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 6455
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->field:Ljava/lang/reflect/Field;

    .line 6474
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedFieldType;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
