.class public final Lcom/k2fsa/sherpa/onnx/VadKt;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getVadModelConfig",
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "type",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getVadModelConfig(I)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 9

    if-nez p0, :cond_0

    .line 89
    new-instance p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    .line 90
    new-instance v6, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    const-string v1, "silero_vad.onnx"

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3e800000    # 0.25f

    const/16 v5, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;-><init>(Ljava/lang/String;FFFI)V

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    const-string v4, "nnapi"

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v6

    move v6, v7

    move-object v7, v8

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
