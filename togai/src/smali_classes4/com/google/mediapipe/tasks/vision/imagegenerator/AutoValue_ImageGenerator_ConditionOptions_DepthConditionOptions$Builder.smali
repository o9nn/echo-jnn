.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;
.source "AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;
    .locals 4

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    if-nez v0, :cond_0

    const-string v0, " pluginModelBaseOptions"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " depthModelBaseOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$1;)V

    return-object v0

    .line 91
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

.method public setDepthModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depthModelBaseOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->depthModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null depthModelBaseOptions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginModelBaseOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_DepthConditionOptions$Builder;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null pluginModelBaseOptions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
