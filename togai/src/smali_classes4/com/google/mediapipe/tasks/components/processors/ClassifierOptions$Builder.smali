.class public abstract Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
.super Ljava/lang/Object;
.source "ClassifierOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->maxResults()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->maxResults()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If specified, maxResults must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract setCategoryAllowlist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryAllowlist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;"
        }
    .end annotation
.end method

.method public abstract setCategoryDenylist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryDenylist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;"
        }
    .end annotation
.end method

.method public abstract setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation
.end method

.method public abstract setMaxResults(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxResults"
        }
    .end annotation
.end method

.method public abstract setScoreThreshold(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoreThreshold"
        }
    .end annotation
.end method
