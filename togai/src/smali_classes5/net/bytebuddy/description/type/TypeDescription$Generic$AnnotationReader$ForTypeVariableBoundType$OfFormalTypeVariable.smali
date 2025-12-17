.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfFormalTypeVariable"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;


# instance fields
.field private final index:I

.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3396
    const-class v0, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAnnotatedBounds"

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$Chained;->of(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/TypeVariable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;I)V"
        }
    .end annotation

    .line 3414
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->index:I

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;

    iget v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->index:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->index:I

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 3

    :try_start_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->GET_ANNOTATED_BOUNDS:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 3424
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3430
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error invoking java.lang.reflect.TypeVariable#getAnnotatedBounds"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3428
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access java.lang.reflect.TypeVariable#getAnnotatedBounds"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3426
    :catch_2
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    return-object v0
.end method
