.class public Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPackageDescription"
.end annotation


# instance fields
.field private final packageDescription:Lnet/bytebuddy/description/type/PackageDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/PackageDescription;)V
    .locals 0

    .line 9189
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;->packageDescription:Lnet/bytebuddy/description/type/PackageDescription;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;->packageDescription:Lnet/bytebuddy/description/type/PackageDescription;

    .line 9267
    invoke-interface {v0}, Lnet/bytebuddy/description/type/PackageDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

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

    .line 9246
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/field/FieldList$Empty;-><init>()V

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

    .line 9253
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/method/MethodList$Empty;-><init>()V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 9239
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 9177
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 9274
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 9211
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 9218
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 9204
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/16 v0, 0x1600

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 9295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;->packageDescription:Lnet/bytebuddy/description/type/PackageDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/PackageDescription;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".package-info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    return-object p0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 9309
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;->packageDescription:Lnet/bytebuddy/description/type/PackageDescription;

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 9197
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 9281
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
