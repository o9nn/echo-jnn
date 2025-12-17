.class Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor8;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->nameForType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor8<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;


# direct methods
.method constructor <init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 405
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor8;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 405
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    iget-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 434
    invoke-static {p2, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$500(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$visitDeclared$0$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation$1(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 414
    invoke-static {v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$500(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 405
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 408
    invoke-static {p2, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$500(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p2

    .line 409
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 413
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;)V

    .line 414
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 415
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 416
    invoke-virtual {v1, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->isMapOrMultimap(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 418
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%sOf%sTo%s"

    .line 417
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 421
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "Of"

    .line 423
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p2

    if-le p2, v2, :cond_2

    const-string p2, "And"

    .line 426
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_2
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, ""

    .line 429
    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
