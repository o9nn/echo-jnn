.class public abstract Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;
.super Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.source "FieldDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/field/FieldDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    .locals 3

    .line 191
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public bridge synthetic asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/field/FieldDescription$Token;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;"
        }
    .end annotation

    .line 181
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v2

    .line 183
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    new-instance v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;

    invoke-direct {v4, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 184
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/field/FieldDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 206
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    .line 207
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActualModifiers()I
    .locals 3

    .line 172
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Ljava/lang/Deprecated;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 138
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isNonGeneric()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    new-instance v2, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {v2}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    .line 140
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 142
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 196
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
