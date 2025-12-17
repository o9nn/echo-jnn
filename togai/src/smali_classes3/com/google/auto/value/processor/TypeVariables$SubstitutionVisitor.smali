.class Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "TypeVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/TypeVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubstitutionVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljavax/lang/model/type/TypeMirror;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final substitute:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljava/util/function/Function;Ljavax/lang/model/util/Types;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/util/Types;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->substitute:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->typeUtils:Ljavax/lang/model/util/Types;

    return-void
.end method

.method private visitOrNull(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 230
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 231
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p2

    sget-object v0, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {p2, v0}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 240
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asWildcard(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 242
    invoke-interface {p2, p1}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 203
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    .line 204
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/lang/model/type/TypeMirror;

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, v2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 209
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 208
    invoke-interface {p2, p1, v0}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    iget-object p2, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->substitute:Ljava/util/function/Function;

    .line 197
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 2

    .line 214
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitOrNull(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 215
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 225
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/processor/TypeVariables$SubstitutionVisitor;->visitOrNull(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object p1

    return-object p1
.end method
