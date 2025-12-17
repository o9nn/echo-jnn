.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;
.super Lcom/google/mediapipe/tasks/components/containers/Landmark;
.source "AutoValue_Landmark.java"


# instance fields
.field private final presence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final visibility:Ljava/util/Optional;
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

.field private final z:F


# direct methods
.method constructor <init>(FFFLjava/util/Optional;Ljava/util/Optional;)V
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
            "x",
            "y",
            "z",
            "visibility",
            "presence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Landmark;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->x:F

    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->y:F

    iput p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->z:F

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->visibility:Ljava/util/Optional;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->presence:Ljava/util/Optional;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null presence"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null visibility"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public presence()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->presence:Ljava/util/Optional;

    return-object v0
.end method

.method public visibility()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->visibility:Ljava/util/Optional;

    return-object v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->x:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->y:F

    return v0
.end method

.method public z()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Landmark;->z:F

    return v0
.end method
