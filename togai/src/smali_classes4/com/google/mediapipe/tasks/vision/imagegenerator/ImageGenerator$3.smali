.class synthetic Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$3;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$mediapipe$tasks$vision$imagegenerator$ImageGenerator$ImageGeneratorOptions$ModelType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 579
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->values()[Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$3;->$SwitchMap$com$google$mediapipe$tasks$vision$imagegenerator$ImageGenerator$ImageGeneratorOptions$ModelType:[I

    :try_start_0
    sget-object v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->SD_1:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
