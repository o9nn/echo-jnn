.class public final Lcom/brentvatne/common/api/BufferConfig$Live$Companion;
.super Ljava/lang/Object;
.source "BufferConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brentvatne/common/api/BufferConfig$Live;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/brentvatne/common/api/BufferConfig$Live$Companion;",
        "",
        "()V",
        "PROP_BUFFER_CONFIG_LIVE_MAX_OFFSET_MS",
        "",
        "PROP_BUFFER_CONFIG_LIVE_MAX_PLAYBACK_SPEED",
        "PROP_BUFFER_CONFIG_LIVE_MIN_OFFSET_MS",
        "PROP_BUFFER_CONFIG_LIVE_MIN_PLAYBACK_SPEED",
        "PROP_BUFFER_CONFIG_LIVE_TARGET_OFFSET_MS",
        "parse",
        "Lcom/brentvatne/common/api/BufferConfig$Live;",
        "src",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "react-native-video_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/common/api/BufferConfig$Live$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/BufferConfig$Live;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    new-instance v0, Lcom/brentvatne/common/api/BufferConfig$Live;

    invoke-direct {v0}, Lcom/brentvatne/common/api/BufferConfig$Live;-><init>()V

    .line 43
    invoke-static {}, Lcom/brentvatne/common/api/BufferConfig$Live;->access$getPROP_BUFFER_CONFIG_LIVE_MAX_PLAYBACK_SPEED$cp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/BufferConfig$Companion;->getBufferConfigPropUnsetDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetFloat(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/BufferConfig$Live;->setMaxPlaybackSpeed(F)V

    .line 44
    invoke-static {}, Lcom/brentvatne/common/api/BufferConfig$Live;->access$getPROP_BUFFER_CONFIG_LIVE_MIN_PLAYBACK_SPEED$cp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/BufferConfig$Companion;->getBufferConfigPropUnsetDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetFloat(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brentvatne/common/api/BufferConfig$Live;->setMinPlaybackSpeed(F)V

    .line 45
    invoke-static {}, Lcom/brentvatne/common/api/BufferConfig$Live;->access$getPROP_BUFFER_CONFIG_LIVE_MAX_OFFSET_MS$cp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/BufferConfig$Companion;->getBufferConfigPropUnsetInt()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/brentvatne/common/api/BufferConfig$Live;->setMaxOffsetMs(J)V

    .line 46
    invoke-static {}, Lcom/brentvatne/common/api/BufferConfig$Live;->access$getPROP_BUFFER_CONFIG_LIVE_MIN_OFFSET_MS$cp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/BufferConfig$Companion;->getBufferConfigPropUnsetInt()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/brentvatne/common/api/BufferConfig$Live;->setMinOffsetMs(J)V

    .line 47
    invoke-static {}, Lcom/brentvatne/common/api/BufferConfig$Live;->access$getPROP_BUFFER_CONFIG_LIVE_TARGET_OFFSET_MS$cp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v2}, Lcom/brentvatne/common/api/BufferConfig$Companion;->getBufferConfigPropUnsetInt()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/brentvatne/common/api/BufferConfig$Live;->setTargetOffsetMs(J)V

    return-object v0
.end method
