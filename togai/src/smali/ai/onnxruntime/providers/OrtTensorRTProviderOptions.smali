.class public final Lai/onnxruntime/providers/OrtTensorRTProviderOptions;
.super Lai/onnxruntime/providers/StringConfigProviderOptions;
.source "OrtTensorRTProviderOptions.java"


# static fields
.field private static final PROVIDER:Lai/onnxruntime/OrtProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lai/onnxruntime/OrtProvider;->TENSOR_RT:Lai/onnxruntime/OrtProvider;

    sput-object v0, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    sget-object v0, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    .line 36
    new-instance v1, Lai/onnxruntime/providers/OrtTensorRTProviderOptions$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lai/onnxruntime/providers/StringConfigProviderOptions;-><init>(J)V

    if-ltz p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 43
    iget-object p1, p0, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->options:Ljava/util/Map;

    const-string v0, "device_id"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->getApiHandle()J

    move-result-wide v1

    iget-wide v3, p0, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->nativeHandle:J

    const-string v5, "device_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->add(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->close()V

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device id must be non-negative, received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native create(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method static synthetic lambda$new$0()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->getApiHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->create(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected native add(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 17
    invoke-super {p0, p1, p2}, Lai/onnxruntime/providers/StringConfigProviderOptions;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected native close(JJ)V
.end method

.method public bridge synthetic getOptionsString()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->getOptionsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lai/onnxruntime/OrtProvider;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->PROVIDER:Lai/onnxruntime/OrtProvider;

    return-object v0
.end method

.method public bridge synthetic parseOptionsString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 17
    invoke-super {p0, p1}, Lai/onnxruntime/providers/StringConfigProviderOptions;->parseOptionsString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-super {p0}, Lai/onnxruntime/providers/StringConfigProviderOptions;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
