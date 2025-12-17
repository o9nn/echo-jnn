.class Lai/onnxruntime/reactnative/OnnxruntimeExtensions;
.super Ljava/lang/Object;
.source "OnnxruntimeExtensionsDisabled.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerOrtExtensionsIfEnabled(Lai/onnxruntime/OrtSession$SessionOptions;)V
    .locals 1

    const-string p1, "OnnxruntimeExtensions"

    const-string v0, "ORT Extensions is not enabled in the current configuration. If you want to enable this support, please add \"onnxruntimeEnableExtensions\": \"true\" in your project root directory package.json."

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
