.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;
.super Ljava/lang/Object;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSignatureVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ONLY_CHARACTER:I


# instance fields
.field protected final signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 0

    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-void
.end method

.method private onOwnableType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 3

    .line 1706
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isParameterized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onOwnableType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1709
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1711
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    .line 1713
    :goto_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeArguments()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1714
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1680
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1730
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_0

    .line 1732
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1733
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitBaseType(C)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1735
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1736
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    .line 1695
    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onOwnableType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1696
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    .line 1722
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    .line 1688
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected wildcard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
