.class final Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "$MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReferencedTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/Void;",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
        "Ljavax/lang/model/element/TypeElement;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 467
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->INSTANCE:Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->visitArray(Ljavax/lang/model/type/ArrayType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 471
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 477
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    .line 478
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 479
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 486
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes$ReferencedTypes;->visitWildcard(Ljavax/lang/model/type/WildcardType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/WildcardType;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 493
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 499
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
