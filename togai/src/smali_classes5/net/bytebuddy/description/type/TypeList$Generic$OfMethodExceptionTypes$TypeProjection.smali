.class Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeProjection"
.end annotation


# instance fields
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

.field private final method:Ljava/lang/reflect/Method;

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 979
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    .line 998
    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    .line 1003
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveExceptionType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    .line 988
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    .line 989
    array-length v1, v1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    .line 990
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    .line 991
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 989
    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
