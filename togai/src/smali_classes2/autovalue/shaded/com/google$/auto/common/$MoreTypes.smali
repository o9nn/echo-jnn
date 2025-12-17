.class public final Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.super Ljava/lang/Object;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingUncheckedVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeOf;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$WildcardTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeVariableVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NullTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ExecutableTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ArrayTypeVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$AsElementVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$HashVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;,
        Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;
    }
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 65
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->enclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equalLists(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/util/List;Ljava/util/Set;)I
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->hashList(Ljava/util/List;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public static asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;
    .locals 2

    .line 561
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ArrayTypeVisitor;->access$1100()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ArrayTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ArrayType;

    return-object p0
.end method

.method public static asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .locals 2

    .line 582
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;->access$1200()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$DeclaredTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/DeclaredType;

    return-object p0
.end method

.method public static asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
    .locals 2

    .line 515
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$AsElementVisitor;->access$1000()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$AsElementVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/Element;

    return-object p0
.end method

.method public static asError(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ErrorType;
    .locals 2

    .line 603
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;->access$1300()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ErrorTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ErrorType;

    return-object p0
.end method

.method public static asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;
    .locals 2

    .line 624
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ExecutableTypeVisitor;->access$1400()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ExecutableTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ExecutableType;

    return-object p0
.end method

.method public static asIntersection(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/IntersectionType;
    .locals 2

    .line 645
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;->access$1500()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IntersectionTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/IntersectionType;

    return-object p0
.end method

.method public static asMemberOf(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 920
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asExecutable(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 924
    invoke-interface {p0, p1, v0}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p0

    .line 925
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 926
    invoke-interface {p0}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    .line 927
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(Z)V

    .line 928
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 932
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 936
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not find variable: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :cond_3
    invoke-interface {p0, p1, p2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method public static asNoType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/NoType;
    .locals 2

    .line 666
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;->access$1600()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NoTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/NoType;

    return-object p0
.end method

.method public static asNullType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/NullType;
    .locals 2

    .line 687
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NullTypeVisitor;->access$1700()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$NullTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/NullType;

    return-object p0
.end method

.method public static asPrimitiveType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;
    .locals 2

    .line 708
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;->access$1800()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$PrimitiveTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/PrimitiveType;

    return-object p0
.end method

.method public static asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 544
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method public static asTypeElements(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 550
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 551
    invoke-static {v1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;
    .locals 2

    .line 733
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeVariableVisitor;->access$1900()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeVariableVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeVariable;

    return-object p0
.end method

.method public static asWildcard(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;
    .locals 2

    .line 754
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$WildcardTypeVisitor;->access$2000()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$WildcardTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/WildcardType;

    return-object p0
.end method

.method private static enclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 327
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1, v2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;)Z"
        }
    .end annotation

    .line 310
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljavax/lang/model/type/ExecutableType;

    if-nez v0, :cond_0

    return v1

    .line 313
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;-><init>(Lautovalue/shaded/com/google$/auto/common/$MoreTypes$1;)V

    .line 314
    iput-object p1, v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    .line 315
    iput-object p2, v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 316
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->access$600()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static equalLists(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;)Z"
        }
    .end annotation

    .line 337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 342
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 344
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 348
    invoke-static {v0, v1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;->access$200()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$TypeEquivalence;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$HashVisitor;->access$800()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$HashVisitor;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static hashList(Ljava/util/List;Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)I"
        }
    .end annotation

    .line 443
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x11

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static isConversionFromObjectUnchecked(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 962
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingUncheckedVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingUncheckedVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$CastingUncheckedVisitor;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isObjectType(Ljavax/lang/model/type/DeclaredType;)Z
    .locals 1

    .line 908
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "java.lang.Object"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 776
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;->access$2100()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")Z"
        }
    .end annotation

    .line 814
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeOf;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$IsTypeOf;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static nonObjectSuperclass(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Ljavax/lang/model/type/DeclaredType;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/type/DeclaredType;",
            ")",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "Ljavax/lang/model/type/DeclaredType;",
            ">;"
        }
    .end annotation

    .line 882
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 887
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->isType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Optional;->absent()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    return-object p0

    .line 891
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    .line 892
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->isObjectType(Ljavax/lang/model/type/DeclaredType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Optional;->absent()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    return-object p0

    .line 896
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Optional;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    return-object p0

    .line 904
    :cond_2
    invoke-interface {p0, p2}, Ljavax/lang/model/util/Types;->directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    return-object p0
.end method

.method public static referencedTypes(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    .line 461
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->access$900()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method
