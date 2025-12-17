.class public abstract Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;
.super Ljava/lang/Object;
.source "NormalizedLandmark.java"


# static fields
.field private static final TOLERANCE:F = 1.0E-6f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FFF)Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 38
    new-instance v6, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedLandmark;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedLandmark;-><init>(FFFLjava/util/Optional;Ljava/util/Optional;)V

    return-object v6
.end method

.method public static create(FFFLjava/util/Optional;Ljava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;
    .locals 7
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
            ">;)",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;"
        }
    .end annotation

    .line 46
    new-instance v6, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedLandmark;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_NormalizedLandmark;-><init>(FFFLjava/util/Optional;Ljava/util/Optional;)V

    return-object v6
.end method

.method public static createFromProto(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "landmarkProto"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getX()F

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getY()F

    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getZ()F

    move-result v2

    .line 55
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getVisibility()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->hasPresence()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getPresence()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    .line 51
    :goto_1
    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->create(FFFLjava/util/Optional;Ljava/util/Optional;)Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    move-result-object p0

    return-object p0
.end method

.method public static createListFromProto(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "landmarkListProto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getLandmarkList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 66
    invoke-static {v1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->createFromProto(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 88
    instance-of v0, p1, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;

    .line 92
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->z()F

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
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->z()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract presence()Ljava/util/Optional;
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
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Normalized Landmark (x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->x()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->y()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->z()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visibility= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->visibility()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " presence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;->presence()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract visibility()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract x()F
.end method

.method public abstract y()F
.end method

.method public abstract z()F
.end method
