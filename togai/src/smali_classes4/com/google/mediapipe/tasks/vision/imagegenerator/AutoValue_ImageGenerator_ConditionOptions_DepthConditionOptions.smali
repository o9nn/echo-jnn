.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;
.source "AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;
    }
.end annotation


# instance fields
.field private final depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pluginModelBaseOptions",
            "depthModelBaseOptions"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;)V

    return-void
.end method


# virtual methods
.method depthModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

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

    .line 42
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 44
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 45
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->depthModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

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
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DepthConditionOptions{pluginModelBaseOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", depthModelBaseOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
