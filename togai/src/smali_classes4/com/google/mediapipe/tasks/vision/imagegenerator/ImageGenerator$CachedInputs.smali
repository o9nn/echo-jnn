.class Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedInputs"
.end annotation


# instance fields
.field public cachedConditionImage:Lcom/google/mediapipe/framework/image/MPImage;

.field public cachedTimestamp:J

.field public conditionType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

.field public iterations:I

.field public prompt:Ljava/lang/String;

.field public seed:I

.field public step:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->prompt:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->iterations:I

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->seed:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prompt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Iterations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Seed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->conditionType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 511
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", ConditionType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->conditionType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
