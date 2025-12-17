.class public Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperTypeLoading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;,
        Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;,
        Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

.field private final delegate:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 9340
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate$Simple;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate$Simple;

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V
    .locals 0

    .line 9350
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    return-void
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9489
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 9316
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9447
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9360
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9412
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9419
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9461
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 9316
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9454
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9381
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9468
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9475
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 9405
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;-><init>(Lnet/bytebuddy/description/type/TypeList$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9367
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9388
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9517
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9524
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9510
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9482
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9426
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9395
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9396
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    invoke-direct {v1, v0, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9374
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9496
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9433
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9503
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9440
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    return v0
.end method
