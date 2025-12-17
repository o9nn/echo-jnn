.class Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;
.super Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;
.source "AnnotationOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AnnotationOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotationSourceFormVisitor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;-><init>(Lcom/google/auto/value/processor/AnnotationOutput$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/processor/AnnotationOutput$1;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;-><init>()V

    return-void
.end method

.method private static shortForm(Ljava/util/Map;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 200
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/StringBuilder;)Ljava/lang/Void;
    .locals 3

    const/16 v0, 0x40

    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x28

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {p1}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->shortForm(Ljava/util/Map;)Ljava/util/Optional;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 183
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, v0, p2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ", "

    goto :goto_0

    :cond_1
    :goto_1
    const/16 p1, 0x29

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visitArray(Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$AnnotationSourceFormVisitor;->visit(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/auto/value/processor/AnnotationOutput$SourceFormVisitor;->visitArray(Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
