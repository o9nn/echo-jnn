.class Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KindVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljavax/lang/model/util/Elements;

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->types:Ljavax/lang/model/util/Types;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->elements:Ljavax/lang/model/util/Elements;

    return-void
.end method


# virtual methods
.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
    .locals 0

    .line 520
    sget-object p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->ARRAY:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 504
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
    .locals 3

    .line 525
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 526
    invoke-static {p2, v0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethod(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    sget-object p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->HAS_TO_PRETTY_STRING_METHOD:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p1

    .line 530
    :cond_0
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->access$700()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    if-eqz p2, :cond_1

    return-object p2

    .line 535
    :cond_1
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->access$800()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p2

    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p2

    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->elements:Ljavax/lang/model/util/Elements;

    .line 536
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->types:Ljavax/lang/model/util/Types;

    .line 538
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p1

    .line 543
    :cond_3
    sget-object p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->REGULAR_OBJECT:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 504
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;
    .locals 0

    .line 515
    sget-object p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->PRIMITIVE:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    return-object p1
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 504
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    move-result-object p1

    return-object p1
.end method
