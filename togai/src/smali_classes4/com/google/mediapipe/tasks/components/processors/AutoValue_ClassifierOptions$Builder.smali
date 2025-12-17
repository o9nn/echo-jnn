.class final Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;
.super Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
.source "AutoValue_ClassifierOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private categoryAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryDenylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayNamesLocale:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxResults:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scoreThreshold:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->displayNamesLocale:Ljava/util/Optional;

    .line 102
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->maxResults:Ljava/util/Optional;

    .line 103
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->scoreThreshold:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
    .locals 9

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryAllowlist:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, " categoryAllowlist"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryDenylist:Ljava/util/List;

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " categoryDenylist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->displayNamesLocale:Ljava/util/Optional;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->maxResults:Ljava/util/Optional;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->scoreThreshold:Ljava/util/Optional;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryAllowlist:Ljava/util/List;

    iget-object v7, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryDenylist:Ljava/util/List;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$1;)V

    return-object v0

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCategoryAllowlist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 1
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

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryAllowlist:Ljava/util/List;

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null categoryAllowlist"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCategoryDenylist(Ljava/util/List;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 1
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

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->categoryDenylist:Ljava/util/List;

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null categoryDenylist"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayNamesLocale"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->displayNamesLocale:Ljava/util/Optional;

    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxResults"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->maxResults:Ljava/util/Optional;

    return-object p0
.end method

.method public setScoreThreshold(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoreThreshold"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;->scoreThreshold:Ljava/util/Optional;

    return-object p0
.end method
