.class public final Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00d6\u0001J\t\u0010(\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006)"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;",
        "",
        "model",
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;",
        "ruleFsts",
        "",
        "ruleFars",
        "maxNumSentences",
        "",
        "silenceScale",
        "",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)V",
        "getMaxNumSentences",
        "()I",
        "setMaxNumSentences",
        "(I)V",
        "getModel",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;",
        "setModel",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;)V",
        "getRuleFars",
        "()Ljava/lang/String;",
        "setRuleFars",
        "(Ljava/lang/String;)V",
        "getRuleFsts",
        "setRuleFsts",
        "getSilenceScale",
        "()F",
        "setSilenceScale",
        "(F)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private maxNumSentences:I

.field private model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

.field private ruleFars:Ljava/lang/String;

.field private ruleFsts:Ljava/lang/String;

.field private silenceScale:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    iput p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    iput p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p6, 0x2

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 v4, p6, 0x10

    if-eqz v4, :cond_4

    const v4, 0x3e4ccccd    # 0.2f

    goto :goto_4

    :cond_4
    move v4, p5

    :goto_4
    move-object p1, p0

    move-object p2, v0

    move-object p3, v1

    move-object p4, v2

    move p5, v3

    move/from16 p6, v4

    .line 47
    invoke-direct/range {p1 .. p6}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    return v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;
    .locals 7

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Ljava/lang/String;Ljava/lang/String;IF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getMaxNumSentences()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    return v0
.end method

.method public final getModel()Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    return-object v0
.end method

.method public final getRuleFars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final getRuleFsts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public final getSilenceScale()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setMaxNumSentences(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    return-void
.end method

.method public final setModel(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    return-void
.end method

.method public final setRuleFars(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    return-void
.end method

.method public final setRuleFsts(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    return-void
.end method

.method public final setSilenceScale(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->model:Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFsts:Ljava/lang/String;

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->ruleFars:Ljava/lang/String;

    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->maxNumSentences:I

    iget v4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsConfig;->silenceScale:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OfflineTtsConfig(model="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", ruleFsts="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruleFars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxNumSentences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silenceScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
