.class public Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayProjection"
.end annotation


# static fields
.field private static final ARRAY_EXCLUDED:I = 0x2208

.field private static final ARRAY_IMPLIED:I = 0x410


# instance fields
.field private final arity:I

.field private final componentType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;I)V
    .locals 0

    .line 8749
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    const/4 v0, 0x1

    .line 8761
    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    if-ltz p1, :cond_2

    .line 8775
    :goto_0
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8776
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 8779
    :cond_1
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;-><init>(Lnet/bytebuddy/description/type/TypeDescription;I)V

    move-object p0, v0

    :goto_1
    return-object p0

    .line 8773
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays cannot have a negative arity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 8857
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8859
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->NO_NAME:Ljava/lang/String;

    return-object v0

    .line 8861
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    if-ge v0, v2, :cond_1

    const-string v2, "[]"

    .line 8863
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8865
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8721
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 4

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8795
    :cond_0
    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;-><init>(Lnet/bytebuddy/description/type/TypeDescription;I)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 8912
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

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

    .line 8891
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

    .line 8898
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/method/MethodList$Empty;-><init>()V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 8839
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8721
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8960
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 3

    .line 8949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x5b

    .line 8951
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 8953
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 8825
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8832
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getInheritedAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 8919
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8818
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 8967
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0x2209

    or-int/lit16 v0, v0, 0x410

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 8933
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    if-ge v3, v4, :cond_0

    const/16 v4, 0x5b

    .line 8936
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8938
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8939
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    const/16 v3, 0x2e

    .line 8940
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8942
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    return-object p0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 8988
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

    .line 8926
    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 3

    .line 8846
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->componentType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->arity:I

    if-ge v1, v2, :cond_0

    const-string v2, "[]"

    .line 8848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8850
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    .line 8905
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 8811
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8974
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMemberType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
