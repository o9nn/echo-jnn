.class final Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;
.super Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;
.source "AutoValue_ByteBufferExtractor_Result.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final format:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->buffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->format:I

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->buffer:Ljava/nio/ByteBuffer;

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

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;

    iget-object v1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->buffer:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->format:I

    .line 49
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/ByteBufferExtractor$Result;->format()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->format:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->buffer:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->format:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{buffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/framework/image/AutoValue_ByteBufferExtractor_Result;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
