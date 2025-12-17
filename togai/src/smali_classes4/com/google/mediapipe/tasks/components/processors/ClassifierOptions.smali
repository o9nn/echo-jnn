.class public abstract Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
.super Ljava/lang/Object;
.source "ClassifierOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 2

    .line 95
    new-instance v0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;-><init>()V

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->setCategoryAllowlist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;

    move-result-object v0

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;->setCategoryDenylist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract categoryAllowlist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract categoryDenylist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public convertToProto()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 3

    .line 106
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->newBuilder()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->displayNamesLocale()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->maxResults()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->scoreThreshold()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryAllowlist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryAllowlist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->addAllCategoryAllowlist(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryDenylist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryDenylist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->addAllCategoryDenylist(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    .line 116
    :cond_1
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object v0
.end method

.method public abstract displayNamesLocale()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract maxResults()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract scoreThreshold()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method
