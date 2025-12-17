.class public abstract Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfSimpleType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7934
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 4

    .line 7968
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->isAnonymousType()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7971
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 7972
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7976
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7969
    :cond_2
    :goto_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->NO_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 7934
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 7954
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 7961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .line 7984
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    .line 7985
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7988
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x2f

    .line 7990
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 7995
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7998
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    .line 8005
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
