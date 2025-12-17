.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithinMethod"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodDescriptor:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 3337
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    .line 3346
    invoke-virtual {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    .line 3347
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    .line 3348
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->hasMethodName(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 3349
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3352
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object p1

    .line 3350
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not declared by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->name:Ljava/lang/String;

    .line 3359
    invoke-interface {p1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinMethod;->methodDescriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isLocalType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelfContained()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
