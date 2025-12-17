.class public Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$MethodLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$MethodLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForElementMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")V"
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 807
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 808
    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->asMethodList()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    .line 806
    invoke-static {p2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 809
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 810
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    return-object p1

    .line 812
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not define exactly one virtual method or constructor for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
