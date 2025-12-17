.class public final Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008%\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\tH\u00c6\u0003J\t\u0010+\u001a\u00020\u000bH\u00c6\u0003J\t\u0010,\u001a\u00020\rH\u00c6\u0003JE\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010.\u001a\u00020\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u00020\tH\u00d6\u0001J\t\u00101\u001a\u00020\rH\u00d6\u0001R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00062"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;",
        "",
        "vits",
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;",
        "matcha",
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;",
        "kokoro",
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getKokoro",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;",
        "setKokoro",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;)V",
        "getMatcha",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;",
        "setMatcha",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getProvider",
        "()Ljava/lang/String;",
        "setProvider",
        "(Ljava/lang/String;)V",
        "getVits",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;",
        "setVits",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
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
.field private debug:Z

.field private kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

.field private matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

.field private numThreads:I

.field private provider:Ljava/lang/String;

.field private vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)V
    .locals 1

    const-string v0, "vits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcha"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kokoro"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    iput p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    iput-boolean p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_2

    .line 41
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move/from16 v3, p4

    :goto_3
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move/from16 v4, p5

    :goto_4
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_5

    const-string v5, "cpu"

    goto :goto_5

    :cond_5
    move-object/from16 v5, p6

    :goto_5
    move-object p1, p0

    move-object p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    .line 38
    invoke-direct/range {p1 .. p7}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;
    .locals 8

    const-string v0, "vits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matcha"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kokoro"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;IZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    iget-boolean v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    iget-object p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    return v0
.end method

.method public final getKokoro()Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    return-object v0
.end method

.method public final getMatcha()Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    return-object v0
.end method

.method public final getNumThreads()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getVits()Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    return-void
.end method

.method public final setKokoro(Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    return-void
.end method

.method public final setMatcha(Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setVits(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->vits:Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->matcha:Lcom/k2fsa/sherpa/onnx/OfflineTtsMatchaModelConfig;

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->kokoro:Lcom/k2fsa/sherpa/onnx/OfflineTtsKokoroModelConfig;

    iget v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->numThreads:I

    iget-boolean v4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->debug:Z

    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsModelConfig;->provider:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OfflineTtsModelConfig(vits="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", matcha="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kokoro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
