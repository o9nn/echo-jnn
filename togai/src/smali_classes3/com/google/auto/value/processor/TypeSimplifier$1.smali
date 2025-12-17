.class final Lcom/google/auto/value/processor/TypeSimplifier$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "TypeSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/TypeSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$visitDeclared$0(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    .line 345
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeSimplifier;->access$000(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 340
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeSimplifier$1;->visit(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeSimplifier$1;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 345
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/TypeSimplifier$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/google/auto/value/processor/TypeSimplifier$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeSimplifier$1;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeSimplifier$1;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 335
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/TypeSimplifier$1;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
