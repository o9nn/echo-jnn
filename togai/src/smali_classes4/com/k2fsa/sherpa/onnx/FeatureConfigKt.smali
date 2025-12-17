.class public final Lcom/k2fsa/sherpa/onnx/FeatureConfigKt;
.super Ljava/lang/Object;
.source "FeatureConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "getFeatureConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "sampleRate",
        "",
        "featureDim",
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
.method public static final getFeatureConfig(II)Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 7

    .line 10
    new-instance v6, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
