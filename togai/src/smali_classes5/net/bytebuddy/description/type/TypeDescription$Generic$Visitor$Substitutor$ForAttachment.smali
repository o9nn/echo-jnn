.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAttachment"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/TypeVariableSource;)V
    .locals 0

    .line 1900
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/TypeVariableSource;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/TypeVariableSource;)V
    .locals 0

    .line 1909
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;
    .locals 2

    .line 1921
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/TypeVariableSource;)V

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;
    .locals 2

    .line 1931
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/TypeVariableSource;)V

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;
    .locals 2

    .line 1941
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/TypeVariableSource;)V

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;
    .locals 1

    .line 1951
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    invoke-direct {v0, p0, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/TypeVariableSource;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1880
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1880
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1880
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method protected onSimpleType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 1968
    const-class v0, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1880
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    .line 1958
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/TypeVariableSource;->findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1962
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;

    invoke-direct {v1, v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v1

    .line 1960
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot attach undefined variable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 1880
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method
