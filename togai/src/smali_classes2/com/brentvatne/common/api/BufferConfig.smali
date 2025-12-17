.class public final Lcom/brentvatne/common/api/BufferConfig;
.super Ljava/lang/Object;
.source "BufferConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/BufferConfig$Companion;,
        Lcom/brentvatne/common/api/BufferConfig$Live;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0010\u0018\u0000 *2\u00020\u0001:\u0002*+B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001a\u0010$\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 R\u001a\u0010\'\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008\u00a8\u0006,"
    }
    d2 = {
        "Lcom/brentvatne/common/api/BufferConfig;",
        "",
        "()V",
        "backBufferDurationMs",
        "",
        "getBackBufferDurationMs",
        "()I",
        "setBackBufferDurationMs",
        "(I)V",
        "bufferForPlaybackAfterRebufferMs",
        "getBufferForPlaybackAfterRebufferMs",
        "setBufferForPlaybackAfterRebufferMs",
        "bufferForPlaybackMs",
        "getBufferForPlaybackMs",
        "setBufferForPlaybackMs",
        "cacheSize",
        "getCacheSize",
        "setCacheSize",
        "live",
        "Lcom/brentvatne/common/api/BufferConfig$Live;",
        "getLive",
        "()Lcom/brentvatne/common/api/BufferConfig$Live;",
        "setLive",
        "(Lcom/brentvatne/common/api/BufferConfig$Live;)V",
        "maxBufferMs",
        "getMaxBufferMs",
        "setMaxBufferMs",
        "maxHeapAllocationPercent",
        "",
        "getMaxHeapAllocationPercent",
        "()D",
        "setMaxHeapAllocationPercent",
        "(D)V",
        "minBackBufferMemoryReservePercent",
        "getMinBackBufferMemoryReservePercent",
        "setMinBackBufferMemoryReservePercent",
        "minBufferMemoryReservePercent",
        "getMinBufferMemoryReservePercent",
        "setMinBufferMemoryReservePercent",
        "minBufferMs",
        "getMinBufferMs",
        "setMinBufferMs",
        "Companion",
        "Live",
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


# static fields
.field private static final BufferConfigPropUnsetDouble:D

.field private static final BufferConfigPropUnsetInt:I

.field public static final Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

.field private static final PROP_BUFFER_CONFIG_BACK_BUFFER_DURATION_MS:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_MS:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_CACHE_SIZE:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_LIVE:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_MAX_BUFFER_MS:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_MAX_HEAP_ALLOCATION_PERCENT:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_MIN_BACK_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_MIN_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

.field private static final PROP_BUFFER_CONFIG_MIN_BUFFER_MS:Ljava/lang/String;


# instance fields
.field private backBufferDurationMs:I

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private cacheSize:I

.field private live:Lcom/brentvatne/common/api/BufferConfig$Live;

.field private maxBufferMs:I

.field private maxHeapAllocationPercent:D

.field private minBackBufferMemoryReservePercent:D

.field private minBufferMemoryReservePercent:D

.field private minBufferMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/BufferConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/BufferConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetInt:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetDouble:D

    const-string v0, "cacheSizeMB"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_CACHE_SIZE:Ljava/lang/String;

    const-string v0, "minBufferMs"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BUFFER_MS:Ljava/lang/String;

    const-string v0, "maxBufferMs"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MAX_BUFFER_MS:Ljava/lang/String;

    const-string v0, "bufferForPlaybackMs"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_MS:Ljava/lang/String;

    const-string v0, "bufferForPlaybackAfterRebufferMs"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:Ljava/lang/String;

    const-string v0, "maxHeapAllocationPercent"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MAX_HEAP_ALLOCATION_PERCENT:Ljava/lang/String;

    const-string v0, "minBackBufferMemoryReservePercent"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BACK_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

    const-string v0, "minBufferMemoryReservePercent"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

    const-string v0, "backBufferDurationMs"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BACK_BUFFER_DURATION_MS:Ljava/lang/String;

    const-string v0, "live"

    sput-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_LIVE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetInt:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->cacheSize:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMs:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->maxBufferMs:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackMs:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackAfterRebufferMs:I

    iput v0, p0, Lcom/brentvatne/common/api/BufferConfig;->backBufferDurationMs:I

    sget-wide v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetDouble:D

    iput-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->maxHeapAllocationPercent:D

    iput-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBackBufferMemoryReservePercent:D

    iput-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMemoryReservePercent:D

    .line 24
    new-instance v0, Lcom/brentvatne/common/api/BufferConfig$Live;

    invoke-direct {v0}, Lcom/brentvatne/common/api/BufferConfig$Live;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/common/api/BufferConfig;->live:Lcom/brentvatne/common/api/BufferConfig$Live;

    return-void
.end method

.method public static final synthetic access$getBufferConfigPropUnsetDouble$cp()D
    .locals 2

    sget-wide v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetDouble:D

    return-wide v0
.end method

.method public static final synthetic access$getBufferConfigPropUnsetInt$cp()I
    .locals 1

    sget v0, Lcom/brentvatne/common/api/BufferConfig;->BufferConfigPropUnsetInt:I

    return v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_BACK_BUFFER_DURATION_MS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BACK_BUFFER_DURATION_MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_MS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_BUFFER_FOR_PLAYBACK_MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_CACHE_SIZE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_CACHE_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_LIVE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_LIVE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_MAX_BUFFER_MS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MAX_BUFFER_MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_MAX_HEAP_ALLOCATION_PERCENT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MAX_HEAP_ALLOCATION_PERCENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_MIN_BACK_BUFFER_MEMORY_RESERVE_PERCENT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BACK_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_MIN_BUFFER_MEMORY_RESERVE_PERCENT$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BUFFER_MEMORY_RESERVE_PERCENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPROP_BUFFER_CONFIG_MIN_BUFFER_MS$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->PROP_BUFFER_CONFIG_MIN_BUFFER_MS:Ljava/lang/String;

    return-object v0
.end method

.method public static final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/BufferConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/brentvatne/common/api/BufferConfig;->Companion:Lcom/brentvatne/common/api/BufferConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/brentvatne/common/api/BufferConfig$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/BufferConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBackBufferDurationMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->backBufferDurationMs:I

    return v0
.end method

.method public final getBufferForPlaybackAfterRebufferMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackAfterRebufferMs:I

    return v0
.end method

.method public final getBufferForPlaybackMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackMs:I

    return v0
.end method

.method public final getCacheSize()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->cacheSize:I

    return v0
.end method

.method public final getLive()Lcom/brentvatne/common/api/BufferConfig$Live;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/common/api/BufferConfig;->live:Lcom/brentvatne/common/api/BufferConfig$Live;

    return-object v0
.end method

.method public final getMaxBufferMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->maxBufferMs:I

    return v0
.end method

.method public final getMaxHeapAllocationPercent()D
    .locals 2

    iget-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->maxHeapAllocationPercent:D

    return-wide v0
.end method

.method public final getMinBackBufferMemoryReservePercent()D
    .locals 2

    iget-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBackBufferMemoryReservePercent:D

    return-wide v0
.end method

.method public final getMinBufferMemoryReservePercent()D
    .locals 2

    iget-wide v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMemoryReservePercent:D

    return-wide v0
.end method

.method public final getMinBufferMs()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMs:I

    return v0
.end method

.method public final setBackBufferDurationMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->backBufferDurationMs:I

    return-void
.end method

.method public final setBufferForPlaybackAfterRebufferMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackAfterRebufferMs:I

    return-void
.end method

.method public final setBufferForPlaybackMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->bufferForPlaybackMs:I

    return-void
.end method

.method public final setCacheSize(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->cacheSize:I

    return-void
.end method

.method public final setLive(Lcom/brentvatne/common/api/BufferConfig$Live;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brentvatne/common/api/BufferConfig;->live:Lcom/brentvatne/common/api/BufferConfig$Live;

    return-void
.end method

.method public final setMaxBufferMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->maxBufferMs:I

    return-void
.end method

.method public final setMaxHeapAllocationPercent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/brentvatne/common/api/BufferConfig;->maxHeapAllocationPercent:D

    return-void
.end method

.method public final setMinBackBufferMemoryReservePercent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/brentvatne/common/api/BufferConfig;->minBackBufferMemoryReservePercent:D

    return-void
.end method

.method public final setMinBufferMemoryReservePercent(D)V
    .locals 0

    iput-wide p1, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMemoryReservePercent:D

    return-void
.end method

.method public final setMinBufferMs(I)V
    .locals 0

    iput p1, p0, Lcom/brentvatne/common/api/BufferConfig;->minBufferMs:I

    return-void
.end method
