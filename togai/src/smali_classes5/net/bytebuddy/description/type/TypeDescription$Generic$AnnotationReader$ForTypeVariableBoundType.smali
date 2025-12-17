.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypeVariableBoundType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.lang.reflect.AnnotatedTypeVariable"

    const-string v1, "getAnnotatedBounds"

    .line 3356
    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;I)V
    .locals 0

    .line 3370
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->index:I

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;

    iget p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->index:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->index:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 3350
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->resolve()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    return-object v0
.end method

.method protected resolve(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    :try_start_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;

    .line 3377
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;->index:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.AnnotatedTypeVariable#getAnnotatedBounds"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.AnnotatedTypeVariable#getAnnotatedBounds"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3379
    :catch_2
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object p1
.end method
