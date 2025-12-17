.class Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;
.super Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
.source "$AutoValue_MPImageProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private imageFormat:Ljava/lang/Integer;

.field private storageType:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/google/mediapipe/framework/image/MPImageProperties;
    .locals 4

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " imageFormat"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " storageType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    new-instance v0, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;

    iget-object v1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/image/AutoValue_MPImageProperties;-><init>(II)V

    return-object v0

    .line 85
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

.method setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->imageFormat:Ljava/lang/Integer;

    return-object p0
.end method

.method setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storageType"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/$AutoValue_MPImageProperties$Builder;->storageType:Ljava/lang/Integer;

    return-object p0
.end method
