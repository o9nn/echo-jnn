.class public Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;
.super Ljava/lang/Object;
.source "Super.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator;
    .locals 3

    .line 340
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForParameterType;

    return-object p0

    .line 342
    :cond_0
    const-class v0, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    sget-object p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForInstrumentedType;

    return-object p0

    .line 344
    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot assign proxy to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 355
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p1

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impossible to assign "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Super$Binder$TypeLocator$ForType;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
