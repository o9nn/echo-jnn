.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;
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
    name = "Reducing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final typeVariableTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;)V"
        }
    .end annotation

    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->typeVariableTokens:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeVariableToken;)V
    .locals 0

    .line 2258
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->typeVariableTokens:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 2238
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 2276
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p1, v0}, Lnet/bytebuddy/dynamic/TargetType;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 2238
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 2309
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p1, v0}, Lnet/bytebuddy/dynamic/TargetType;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 2238
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 2290
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p1, v0}, Lnet/bytebuddy/dynamic/TargetType;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 2238
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->typeVariableTokens:Ljava/util/List;

    .line 2297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeVariableToken;

    .line 2298
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeVariableToken;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2299
    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeVariableToken;->getBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    return-object p1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2302
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->findVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p1, v0}, Lnet/bytebuddy/dynamic/TargetType;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    .line 2238
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 2283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A wildcard cannot be a top-level type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
