.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;
.super Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;
.source "AutoValue_NormalizedKeypoint.java"


# instance fields
.field private final label:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final score:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final x:F

.field private final y:F


# direct methods
.method constructor <init>(FFLjava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "label",
            "score"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->x:F

    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->y:F

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->label:Ljava/util/Optional;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->score:Ljava/util/Optional;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null score"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null label"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public label()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->label:Ljava/util/Optional;

    return-object v0
.end method

.method public score()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->score:Ljava/util/Optional;

    return-object v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->x:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;->y:F

    return v0
.end method
