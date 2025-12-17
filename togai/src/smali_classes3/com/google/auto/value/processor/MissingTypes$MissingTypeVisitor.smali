.class Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "MissingTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/MissingTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MissingTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/Void;",
        "Lcom/google/auto/value/processor/TypeMirrorSet;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/processor/MissingTypes$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;-><init>()V

    return-void
.end method

.method private visitAll(Ljava/util/List;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lcom/google/auto/value/processor/TypeMirrorSet;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 134
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method check(Ljavax/lang/model/type/TypeMirror;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-direct {v0}, Lcom/google/auto/value/processor/TypeMirrorSet;-><init>()V

    invoke-interface {p1, p0, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 0

    .line 96
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 1

    .line 101
    invoke-virtual {p2, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->add(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitAll(Ljava/util/List;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 0

    .line 91
    new-instance p2, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    invoke-direct {p2, p1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw p2
.end method

.method public bridge synthetic visitIntersection(Ljavax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitIntersection(Ljavax/lang/model/type/IntersectionType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersection(Ljavax/lang/model/type/IntersectionType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 0

    .line 129
    invoke-interface {p1}, Ljavax/lang/model/type/IntersectionType;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitAll(Ljava/util/List;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 1

    .line 109
    invoke-virtual {p2, p1}, Lcom/google/auto/value/processor/TypeMirrorSet;->add(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lcom/google/auto/value/processor/TypeMirrorSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Lcom/google/auto/value/processor/TypeMirrorSet;)Ljava/lang/Void;
    .locals 1

    .line 118
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
