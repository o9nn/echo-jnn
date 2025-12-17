.class public final enum Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
.super Ljava/lang/Enum;
.source "EmbeddingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmbeddingCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

.field public static final enum EMBEDDING_NOT_SET:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

.field public static final enum FLOAT_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

.field public static final enum QUANTIZED_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 736
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    const-string v1, "FLOAT_EMBEDDING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->FLOAT_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    .line 737
    new-instance v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    const-string v4, "QUANTIZED_EMBEDDING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->QUANTIZED_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    .line 738
    new-instance v3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    const-string v4, "EMBEDDING_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->EMBEDDING_NOT_SET:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    filled-new-array {v0, v1, v3}, [Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->$VALUES:[Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 740
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->QUANTIZED_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->FLOAT_EMBEDDING:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->EMBEDDING_NOT_SET:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 748
    invoke-static {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->forNumber(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    .line 735
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->$VALUES:[Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    .line 735
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->value:I

    return v0
.end method
