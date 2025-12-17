.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegating"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 8402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method


# virtual methods
.method public asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    iget-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8440
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result p3

    invoke-static {p2, p1, v0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object p1

    return-object p1
.end method

.method public asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;"
        }
    .end annotation

    .line 8449
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getNamedTypes()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8450
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/asm/Advice$Local;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 8451
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/asm/Advice$Local;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/Advice$Local;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$Local;->value()Ljava/lang/String;

    move-result-object v2

    .line 8452
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz v3, :cond_1

    .line 8455
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8456
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not read variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " as "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8454
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " attempts use of undeclared local variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8459
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p3

    invoke-static {v0, p2, p1, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p1

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public bridge synthetic getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8389
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8424
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getNamedTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    .line 8431
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
