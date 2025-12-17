.class public final Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.super Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;
    }
.end annotation


# static fields
.field private static final CONDITION_IMAGE_GRAPHS_CONTAINER_NAME:Ljava/lang/String; = "mediapipe.tasks.vision.image_generator.ConditionedImageGraphContainer"

.field private static final CONDITION_IMAGE_STREAM_NAME:Ljava/lang/String; = "condition_image"

.field private static final GENERATED_IMAGE_HEIGHT:I = 0x200

.field private static final GENERATED_IMAGE_OUT_STREAM_INDEX:I = 0x0

.field private static final GENERATED_IMAGE_WIDTH:I = 0x200

.field private static final ITERATION_OUT_STREAM_INDEX:I = 0x2

.field private static final ITERATION_STREAM_NAME:Ljava/lang/String; = "iteration"

.field private static final PROMPT_STREAM_NAME:Ljava/lang/String; = "prompt"

.field private static final RAND_SEED_STREAM_NAME:Ljava/lang/String; = "rand_seed"

.field private static final SELECT_STREAM_NAME:Ljava/lang/String; = "select"

.field private static final SHOW_RESULT_OUT_STREAM_INDEX:I = 0x3

.field private static final SHOW_RESULT_STREAM_NAME:Ljava/lang/String; = "show_result"

.field private static final SOURCE_CONDITION_IMAGE_STREAM_NAME:Ljava/lang/String; = "source_condition_image"

.field private static final STEPS_OUT_STREAM_INDEX:I = 0x1

.field private static final STEPS_STREAM_NAME:Ljava/lang/String; = "steps"

.field private static final TAG:Ljava/lang/String; = "ImageGenerator"

.field private static final TASK_GRAPH_NAME:Ljava/lang/String; = "mediapipe.tasks.vision.image_generator.ImageGeneratorGraph"


# instance fields
.field private cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

.field private conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

.field private conditionTypeIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private inProcessing:Z

.field private useConditionImage:Z


# direct methods
.method public static synthetic $r8$lambda$bTzzxlNNnDNE8kvLH2xiwBEMrc4(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/ErrorListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mediapipe_tasks_vision_image_generator_jni"

    .line 84
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/tasks/core/TaskRunner;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskRunner"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;-><init>(Lcom/google/mediapipe/tasks/core/TaskRunner;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    .line 80
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    return-void
.end method

.method public static createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "generatorOptions"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "generatorOptions",
            "conditionOptions"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "RAND_SEED:rand_seed"

    const-string v2, "SHOW_RESULT:show_result"

    const-string v3, "STEPS:steps"

    const-string v4, "ITERATION:iteration"

    const-string v5, "PROMPT:prompt"

    .line 113
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "CONDITION_IMAGE:condition_image"

    const-string v5, "SELECT:select"

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->access$002(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Ljava/util/Optional;)Ljava/util/Optional;

    :cond_1
    const-string v6, "ITERATION:iteration_out"

    const-string v7, "SHOW_RESULT:show_result_out"

    const-string v8, "IMAGE:image_out"

    const-string v9, "STEPS:steps_out"

    .line 126
    filled-new-array {v8, v9, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 133
    new-instance v7, Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-direct {v7}, Lcom/google/mediapipe/tasks/core/OutputHandler;-><init>()V

    .line 134
    new-instance v8, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$1;

    invoke-direct {v8}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$1;-><init>()V

    invoke-virtual {v7, v8}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setOutputPacketConverter(Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;)V

    .line 164
    invoke-virtual {v7, v2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setHandleTimestampBoundChanges(Z)V

    .line 165
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->errorListener()Ljava/util/Optional;

    move-result-object v8

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v9, v7}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/tasks/core/OutputHandler;)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 169
    invoke-static {}, Lcom/google/mediapipe/tasks/core/TaskInfo;->builder()Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v8

    const-string v9, "ImageGenerator"

    .line 170
    invoke-virtual {v8, v9}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v8

    sget-object v10, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 171
    invoke-virtual {v10}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v8

    const-string v10, "mediapipe.tasks.vision.image_generator.ImageGeneratorGraph"

    .line 172
    invoke-virtual {v8, v10}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskGraphName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v8

    .line 173
    invoke-virtual {v8, v0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setInputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v6}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setOutputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskOptions(Lcom/google/mediapipe/tasks/core/TaskOptions;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setEnableFlowLimiting(Z)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->build()Lcom/google/mediapipe/tasks/core/TaskInfo;

    move-result-object v0

    .line 167
    invoke-static {p0, v0, v7}, Lcom/google/mediapipe/tasks/core/TaskRunner;->create(Landroid/content/Context;Lcom/google/mediapipe/tasks/core/TaskInfo;Lcom/google/mediapipe/tasks/core/OutputHandler;)Lcom/google/mediapipe/tasks/core/TaskRunner;

    move-result-object v0

    .line 179
    new-instance v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    invoke-direct {v6, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;-><init>(Lcom/google/mediapipe/tasks/core/TaskRunner;)V

    if-eqz v3, :cond_4

    iput-boolean v2, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    const-string v0, "IMAGE:source_condition_image"

    .line 182
    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/google/mediapipe/tasks/core/OutputHandler;

    invoke-direct {v4}, Lcom/google/mediapipe/tasks/core/OutputHandler;-><init>()V

    .line 187
    new-instance v5, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$2;

    invoke-direct {v5}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$2;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setOutputPacketConverter(Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;)V

    .line 202
    invoke-virtual {v4, v2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->setHandleTimestampBoundChanges(Z)V

    .line 206
    invoke-static {}, Lcom/google/mediapipe/tasks/core/TaskInfo;->builder()Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v9}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->IMAGE:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 208
    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    const-string v5, "mediapipe.tasks.vision.image_generator.ConditionedImageGraphContainer"

    .line 209
    invoke-virtual {v2, v5}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskGraphName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setInputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setOutputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskOptions(Lcom/google/mediapipe/tasks/core/TaskOptions;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1, v1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setEnableFlowLimiting(Z)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->build()Lcom/google/mediapipe/tasks/core/TaskInfo;

    move-result-object p1

    .line 204
    invoke-static {p0, p1, v4}, Lcom/google/mediapipe/tasks/core/TaskRunner;->create(Landroid/content/Context;Lcom/google/mediapipe/tasks/core/TaskInfo;Lcom/google/mediapipe/tasks/core/OutputHandler;)Lcom/google/mediapipe/tasks/core/TaskRunner;

    move-result-object p0

    iput-object p0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 216
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 217
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->faceConditionOptions()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 218
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->FACE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    iget-object v0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_2
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->edgeConditionOptions()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 222
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->EDGE:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    iget-object v0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 223
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 222
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_3
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->depthConditionOptions()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 226
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->DEPTH:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    iget-object p2, v6, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 227
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 226
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v6
.end method

.method private runIterations(Ljava/lang/String;IILcom/google/mediapipe/framework/image/MPImage;I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "steps",
            "seed",
            "conditionImage",
            "select"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    if-nez v0, :cond_3

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_1

    .line 422
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez v4, :cond_0

    iget-boolean v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz v5, :cond_0

    .line 424
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 425
    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "condition_image"

    .line 424
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "select"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_0
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createString(Ljava/lang/String;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "prompt"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "steps"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "iteration"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "rand_seed"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v5}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createBool(Z)Lcom/google/mediapipe/framework/Packet;

    move-result-object v5

    const-string v6, "show_result"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v3, v0, v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->process(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    add-int/lit8 v4, v4, 0x1

    move-wide v0, v6

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz p1, :cond_2

    .line 438
    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->timestampMs()J

    move-result-wide p2

    .line 437
    invoke-static {p1, p4, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->create(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3

    .line 415
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Iterative API was called previously. It is not allowed to called batch API duringiterative processing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private runStep(Ljava/lang/String;IIILcom/google/mediapipe/framework/image/MPImage;IZ)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "iterations",
            "step",
            "seed",
            "conditionImage",
            "select",
            "showResult"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->cachedTimestamp:J

    .line 455
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p3, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 458
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/Packet;

    move-result-object v1

    const-string v2, "condition_image"

    .line 457
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p6

    const-string v1, "select"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_1
    iget-object p6, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {p6}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createString(Ljava/lang/String;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p6, "prompt"

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p6, "steps"

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p6, "iteration"

    invoke-interface {v0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p4, "rand_seed"

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createBool(Z)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p4, "show_result"

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    iget-object p4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iget-wide p6, p4, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->cachedTimestamp:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p6

    iput-wide v1, p4, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->cachedTimestamp:J

    .line 467
    invoke-virtual {p1, v0, p6, p7}, Lcom/google/mediapipe/tasks/core/TaskRunner;->process(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    if-eqz p1, :cond_2

    iget-boolean p4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz p4, :cond_2

    .line 472
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->timestampMs()J

    move-result-wide p6

    .line 471
    invoke-static {p4, p5, p6, p7}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->create(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_3

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    .line 476
    new-instance p2, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    invoke-direct {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;-><init>()V

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    :cond_3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->close()V

    :cond_1
    return-void
.end method

.method public createConditionImage(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;)Lcom/google/mediapipe/framework/image/MPImage;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceConditionImage",
            "conditionType"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 392
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 400
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createImage(Lcom/google/mediapipe/framework/image/MPImage;)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string v1, "source_condition_image"

    .line 397
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 405
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;

    move-result-object p1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 406
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/framework/AndroidPacketCreator;->createInt32(I)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    const-string p2, "select"

    .line 402
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionImageGraphsContainerTaskRunner:Lcom/google/mediapipe/tasks/core/TaskRunner;

    .line 408
    invoke-virtual {p1, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->process(Ljava/util/Map;)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;

    .line 409
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;->conditionImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    return-object p1

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The condition type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not created during initialization."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showResult"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 372
    iget-object v2, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->prompt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iget v3, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->iterations:I

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iget v4, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    add-int/lit8 v1, v4, 0x1

    iput v1, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iget v5, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->seed:I

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    iget-object v6, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->cachedConditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 378
    iget-object v1, v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->conditionType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    move-object v1, p0

    move v8, p1

    .line 372
    invoke-direct/range {v1 .. v8}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runStep(Ljava/lang/String;IIILcom/google/mediapipe/framework/image/MPImage;IZ)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1

    .line 370
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must call setInputs before execute."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generate(Ljava/lang/String;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "iterations",
            "seed"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 254
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runIterations(Ljava/lang/String;IILcom/google/mediapipe/framework/image/MPImage;I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageGenerator is created with condition options. Must use the methods with condition options."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generate(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
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
            "prompt",
            "sourceConditionImage",
            "conditionType",
            "iterations",
            "seed"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createConditionImage(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v5

    iget-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->conditionTypeIndex:Ljava/util/Map;

    .line 288
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    .line 283
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->runIterations(Ljava/lang/String;IILcom/google/mediapipe/framework/image/MPImage;I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageGenerator is created without condition options. Must use the methods without condition options."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputs(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "iterations",
            "seed"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 307
    iput-object p1, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->prompt:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 308
    iput p2, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->iterations:I

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 309
    iput p3, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->seed:I

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    const/4 p2, 0x0

    .line 310
    iput p2, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    return-void

    .line 302
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageGenerator is created with condition options. Must use the methods with condition options."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputs(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prompt",
            "sourceConditionImage",
            "conditionType",
            "iterations",
            "seed"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->useConditionImage:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 339
    iput-object p1, v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->prompt:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 340
    iput p4, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->iterations:I

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 341
    iput p5, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->seed:I

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    const/4 p4, 0x0

    .line 342
    iput p4, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->step:I

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 343
    invoke-virtual {p0, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createConditionImage(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p2

    iput-object p2, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->cachedConditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    iget-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->cachedInputs:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;

    .line 344
    iput-object p3, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$CachedInputs;->conditionType:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->inProcessing:Z

    return-void

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageGenerator is created without condition options. Must use the methods without condition options."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
