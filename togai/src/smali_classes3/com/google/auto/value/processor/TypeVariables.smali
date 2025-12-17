.class final Lcom/google/auto/value/processor/TypeVariables;
.super Ljava/lang/Object;
.source "TypeVariables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canAssignStaticMethodResult(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/util/Types;)Z
    .locals 6

    .line 138
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 139
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 143
    :cond_0
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 149
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move v3, v1

    .line 150
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v4}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;

    move-result-object v4

    .line 152
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v5

    invoke-virtual {v5, v4}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_2
    new-instance p2, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda2;

    invoke-direct {p2, v2}, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    .line 156
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/VariableElement;

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 157
    new-instance v0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;

    invoke-direct {v0, p2, p3}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;-><init>(Ljava/util/function/Function;Ljavax/lang/model/util/Types;)V

    const/4 p2, 0x0

    .line 158
    invoke-virtual {v0, p0, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    .line 159
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p2

    sget-object v0, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {p2, v0}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 163
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asWildcard(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object p2

    .line 164
    invoke-interface {p2}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    invoke-interface {p2}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 168
    :cond_3
    invoke-interface {p3, p1, p0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method static synthetic lambda$canAssignStaticMethodResult$2(Ljava/util/Map;Ljavax/lang/model/type/TypeVariable;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 155
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method

.method static synthetic lambda$rewriteReturnTypes$0(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$rewriteReturnTypes$1(Lcom/google/auto/value/processor/EclipseHack;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 105
    invoke-virtual {p0, p2, p1}, Lcom/google/auto/value/processor/EclipseHack;->methodReturnType(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method static rewriteReturnTypes(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/util/Collection;Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/util/Types;",
            "Ljava/util/Collection<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {p4}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p4

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%s != %s"

    .line 90
    invoke-static {v1, v2, v0, p4}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/google/auto/value/processor/EclipseHack;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/processor/EclipseHack;-><init>(Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;)V

    .line 99
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljavax/lang/model/type/TypeMirror;

    const/4 v1, 0x0

    .line 100
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p1, p3, p0}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    .line 104
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda0;-><init>()V

    new-instance p3, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0, p0}, Lcom/google/auto/value/processor/TypeVariables$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/processor/EclipseHack;Ljavax/lang/model/type/DeclaredType;)V

    .line 105
    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0
.end method

.method static substituteTypeVariables(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Function;Ljavax/lang/model/util/Types;)Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/function/Function<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/util/Types;",
            ")",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;

    invoke-direct {v0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;-><init>(Ljava/util/function/Function;Ljavax/lang/model/util/Types;)V

    const/4 p1, 0x0

    .line 174
    invoke-virtual {v0, p0, p1}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0
.end method
