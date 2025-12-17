.class final Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
.source "AutoValue_FaceLandmarker_FaceLandmarkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private minFaceDetectionConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private minFacePresenceConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private minTrackingConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private numFaces:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private outputFaceBlendshapes:Ljava/lang/Boolean;

.field private outputFacialTransformationMatrixes:Ljava/lang/Boolean;

.field private resultListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;-><init>()V

    .line 172
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->numFaces:Ljava/util/Optional;

    .line 173
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFaceDetectionConfidence:Ljava/util/Optional;

    .line 174
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFacePresenceConfidence:Ljava/util/Optional;

    .line 175
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minTrackingConfidence:Ljava/util/Optional;

    .line 178
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->resultListener:Ljava/util/Optional;

    .line 179
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->errorListener:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;
    .locals 14

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    if-nez v0, :cond_0

    const-string v0, " baseOptions"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-nez v1, :cond_1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFaceBlendshapes:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputFaceBlendshapes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFacialTransformationMatrixes:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputFacialTransformationMatrixes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->numFaces:Ljava/util/Optional;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFaceDetectionConfidence:Ljava/util/Optional;

    iget-object v7, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFacePresenceConfidence:Ljava/util/Optional;

    iget-object v8, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minTrackingConfidence:Ljava/util/Optional;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFaceBlendshapes:Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFacialTransformationMatrixes:Ljava/lang/Boolean;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->resultListener:Ljava/util/Optional;

    iget-object v12, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->errorListener:Ljava/util/Optional;

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;ZZLjava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$1;)V

    return-object v0

    .line 254
    :cond_4
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

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null baseOptions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorListener"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->errorListener:Ljava/util/Optional;

    return-object p0
.end method

.method public setMinFaceDetectionConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minFaceDetectionConfidence"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFaceDetectionConfidence:Ljava/util/Optional;

    return-object p0
.end method

.method public setMinFacePresenceConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minFacePresenceConfidence"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minFacePresenceConfidence:Ljava/util/Optional;

    return-object p0
.end method

.method public setMinTrackingConfidence(Ljava/lang/Float;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minTrackingConfidence"
        }
    .end annotation

    .line 215
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->minTrackingConfidence:Ljava/util/Optional;

    return-object p0
.end method

.method public setNumFaces(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numFaces"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->numFaces:Ljava/util/Optional;

    return-object p0
.end method

.method public setOutputFaceBlendshapes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFaceBlendshapes"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFaceBlendshapes:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOutputFacialTransformationMatrixes(Z)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFacialTransformationMatrixes"
        }
    .end annotation

    .line 225
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->outputFacialTransformationMatrixes:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;"
        }
    .end annotation

    .line 230
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->resultListener:Ljava/util/Optional;

    return-object p0
.end method

.method public setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runningMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object p0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null runningMode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
