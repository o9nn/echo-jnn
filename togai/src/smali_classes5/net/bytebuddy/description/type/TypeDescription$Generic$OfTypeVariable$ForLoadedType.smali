.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;
    }
.end annotation


# instance fields
.field private final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

.field private final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 5841
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;-><init>(Ljava/lang/reflect/TypeVariable;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/TypeVariable;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;",
            ")V"
        }
    .end annotation

    .line 5850
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    return-void
.end method


# virtual methods
.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 5823
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    .line 5889
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->asList()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 5882
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariableSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 5859
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 5860
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 5861
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0

    .line 5862
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 5863
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    .line 5864
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_2

    .line 5865
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v1

    .line 5867
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown declaration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    .line 5875
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType$TypeVariableBoundList;-><init>([Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-object v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$ForLoadedType;->typeVariable:Ljava/lang/reflect/TypeVariable;

    if-eq v0, p1, :cond_1

    .line 5896
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
