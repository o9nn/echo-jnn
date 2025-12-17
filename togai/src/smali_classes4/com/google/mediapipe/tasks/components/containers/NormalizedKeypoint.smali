.class public abstract Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;
.super Ljava/lang/Object;
.source "NormalizedKeypoint.java"


# static fields
.field private static final TOLERANCE:F = 1.0E-6f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FF)Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;-><init>(FFLjava/util/Optional;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static create(FFLjava/util/Optional;Ljava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;
    .locals 1
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
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedKeypoint;-><init>(FFLjava/util/Optional;Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 67
    instance-of v0, p1, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;

    .line 71
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->x()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->x()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->y()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->y()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->label()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->score()Ljava/util/Optional;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract label()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract score()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Normalized Keypoint (x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->x()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->y()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->label()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->score()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedKeypoint;->score()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/Serializable;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract x()F
.end method

.method public abstract y()F
.end method
