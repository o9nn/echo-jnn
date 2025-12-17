.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;
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
    name = "Inlining"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final namedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 4

    .line 7051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 7053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    .line 7054
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    const-class v0, Lnet/bytebuddy/asm/Advice$Local;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/method/ParameterList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/ParameterList;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 7055
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/asm/Advice$Local;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/Advice$Local;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Local;->value()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    .line 7056
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz v2, :cond_0

    .line 7057
    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7058
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Local variable for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is defined with inconsistent types"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 6
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

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    .line 7097
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v3

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v5

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object p1

    return-object p1
.end method

.method public asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 5
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

    .line 7106
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getNamedTypes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    .line 7107
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    .line 7108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDefinition;

    if-eqz v3, :cond_1

    .line 7111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 7112
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " does not read variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 7110
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " attempts use of undeclared local variable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 7115
    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p3

    invoke-static {v1, v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public bridge synthetic getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 7033
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 7081
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

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;->namedTypes:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

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

    const/4 v0, 0x1

    return v0
.end method
