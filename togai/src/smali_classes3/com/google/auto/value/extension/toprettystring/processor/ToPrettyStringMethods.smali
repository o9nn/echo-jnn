.class final Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;
.super Ljava/lang/Object;
.source "ToPrettyStringMethods.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toPrettyStringMethods$0(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/auto/value/extension/toprettystring/processor/Annotations;->toPrettyStringAnnotation(Ljavax/lang/model/element/Element;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$toPrettyStringMethods$1(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/auto/value/extension/toprettystring/processor/Annotations;->toPrettyStringAnnotation(Ljavax/lang/model/element/Element;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method static toPrettyStringMethod(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MoreCollectors;->toOptional()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method static toPrettyStringMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods$$ExternalSyntheticLambda1;-><init>()V

    .line 52
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 53
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p0
.end method

.method static toPrettyStringMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->abstractMethods()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods$$ExternalSyntheticLambda0;-><init>()V

    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p0
.end method
