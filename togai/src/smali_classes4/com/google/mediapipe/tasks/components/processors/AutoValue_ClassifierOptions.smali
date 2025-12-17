.class final Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;
.super Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;
.source "AutoValue_ClassifierOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$Builder;
    }
.end annotation


# instance fields
.field private final categoryAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryDenylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final displayNamesLocale:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxResults:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scoreThreshold:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayNamesLocale",
            "maxResults",
            "scoreThreshold",
            "categoryAllowlist",
            "categoryDenylist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->displayNamesLocale:Ljava/util/Optional;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->maxResults:Ljava/util/Optional;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->scoreThreshold:Ljava/util/Optional;

    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryAllowlist:Ljava/util/List;

    iput-object p5, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryDenylist:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public categoryAllowlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryAllowlist:Ljava/util/List;

    return-object v0
.end method

.method public categoryDenylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryDenylist:Ljava/util/List;

    return-object v0
.end method

.method public displayNamesLocale()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->displayNamesLocale:Ljava/util/Optional;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 74
    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->displayNamesLocale:Ljava/util/Optional;

    .line 75
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->displayNamesLocale()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->maxResults:Ljava/util/Optional;

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->maxResults()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->scoreThreshold:Ljava/util/Optional;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->scoreThreshold()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryAllowlist:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryAllowlist()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryDenylist:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions;->categoryDenylist()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->displayNamesLocale:Ljava/util/Optional;

    .line 88
    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->maxResults:Ljava/util/Optional;

    .line 90
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->scoreThreshold:Ljava/util/Optional;

    .line 92
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryAllowlist:Ljava/util/List;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryDenylist:Ljava/util/List;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public maxResults()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->maxResults:Ljava/util/Optional;

    return-object v0
.end method

.method public scoreThreshold()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->scoreThreshold:Ljava/util/Optional;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassifierOptions{displayNamesLocale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->displayNamesLocale:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->maxResults:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scoreThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->scoreThreshold:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryAllowlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryAllowlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryDenylist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/processors/AutoValue_ClassifierOptions;->categoryDenylist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
