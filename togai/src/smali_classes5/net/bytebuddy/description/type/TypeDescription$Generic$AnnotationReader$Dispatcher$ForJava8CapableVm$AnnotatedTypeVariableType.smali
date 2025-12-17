.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnnotatedTypeVariableType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 2790
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public ofTypeVariableBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 2

    .line 2805
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType$OfFormalTypeVariable;-><init>(Ljava/lang/reflect/TypeVariable;I)V

    return-object v0
.end method

.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    return-object v0
.end method
