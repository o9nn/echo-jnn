.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EqualVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/Boolean;",
        "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;

    return-object v0
.end method

.method private visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;

    .line 293
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p3

    .line 294
    invoke-static {p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p5

    invoke-direct {v0, p2, p3, p4, p5}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;-><init>(Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/element/Element;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    .line 295
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 296
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ComparedElements;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, p3

    .line 282
    invoke-direct/range {v0 .. v5}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 175
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p1

    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 2

    .line 180
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/ArrayType;

    .line 182
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 184
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 10

    .line 189
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 191
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 192
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v9

    .line 193
    iget-object v3, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    .line 195
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    move-object v2, p0

    move-object v4, v8

    move-object v6, v9

    .line 194
    invoke-direct/range {v2 .. v7}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 196
    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 203
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {p2, v4, v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 207
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    .line 205
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 209
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 215
    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 5

    .line 220
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/ExecutableType;

    .line 222
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 222
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 227
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Ljavax/lang/model/type/IntersectionType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 2

    .line 232
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INTERSECTION:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/IntersectionType;

    .line 234
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object v0

    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitIntersection(Ljavax/lang/model/type/IntersectionType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 6

    .line 241
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 243
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 244
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeParameterElement;

    .line 245
    iget-object v4, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v4

    .line 246
    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 250
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p2

    invoke-interface {v3}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 258
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {p2, v2, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 259
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v5

    .line 257
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 261
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 5

    .line 266
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    .line 268
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object p2, p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 268
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 271
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p2, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Lautovalue/shaded/com/google$/auto/common/$MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
