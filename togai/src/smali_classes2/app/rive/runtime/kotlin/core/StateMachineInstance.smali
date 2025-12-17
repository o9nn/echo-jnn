.class public final Lapp/rive/runtime/kotlin/core/StateMachineInstance;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "StateMachineInstance.kt"

# interfaces
.implements Lapp/rive/runtime/kotlin/core/PlayableInstance;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateMachineInstance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateMachineInstance.kt\napp/rive/runtime/kotlin/core/StateMachineInstance\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1#2:199\n1549#3:200\n1620#3,3:201\n1549#3:204\n1620#3,3:205\n1549#3:208\n1620#3,3:209\n1549#3:212\n1620#3,3:213\n*S KotlinDebug\n*F\n+ 1 StateMachineInstance.kt\napp/rive/runtime/kotlin/core/StateMachineInstance\n*L\n122#1:200\n122#1:201,3\n126#1:204\n126#1:205,3\n189#1:208\n189#1:209,3\n194#1:212\n194#1:213,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0015H\u0002J\u0010\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020!H\u0002J\u0019\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020&H\u0082 J\u0011\u0010.\u001a\u00020/2\u0006\u0010,\u001a\u00020\u0004H\u0096 J\u0011\u00100\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u0004H\u0082 J\u0011\u00102\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u0004H\u0082 J\u0011\u00103\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0004H\u0082 J!\u00104\u001a\u00020/2\u0006\u00101\u001a\u00020\u00042\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&H\u0082 J!\u00107\u001a\u00020/2\u0006\u00101\u001a\u00020\u00042\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&H\u0082 J!\u00108\u001a\u00020/2\u0006\u00101\u001a\u00020\u00042\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&H\u0082 J\u0019\u00109\u001a\u00020:2\u0006\u00101\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u000eH\u0082 J\u0011\u0010<\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u0004H\u0082 J\u0019\u0010=\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u000eH\u0082 J\u0019\u0010>\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u000eH\u0082 J\u0011\u0010?\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u0004H\u0082 J\u000e\u0010@\u001a\u00020\n2\u0006\u0010;\u001a\u00020\u000eJ\u000e\u0010(\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u000eJ\u000e\u0010(\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0012J\u0016\u0010A\u001a\u00020/2\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&J\u0016\u0010B\u001a\u00020/2\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&J\u0016\u0010C\u001a\u00020/2\u0006\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020&J\u000e\u0010D\u001a\u00020!2\u0006\u0010;\u001a\u00020\u000eR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000cR\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000cR\u0011\u0010\u0017\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0010R\u0014\u0010\u001e\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0010R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u000c\u00a8\u0006E"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/StateMachineInstance;",
        "Lapp/rive/runtime/kotlin/core/PlayableInstance;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "(JLjava/util/concurrent/locks/ReentrantLock;)V",
        "eventsReported",
        "",
        "Lapp/rive/runtime/kotlin/core/RiveEvent;",
        "getEventsReported",
        "()Ljava/util/List;",
        "inputCount",
        "",
        "getInputCount",
        "()I",
        "inputNames",
        "",
        "getInputNames",
        "inputs",
        "Lapp/rive/runtime/kotlin/core/SMIInput;",
        "getInputs",
        "layerCount",
        "getLayerCount",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "reportedEventCount",
        "getReportedEventCount",
        "stateChangedCount",
        "getStateChangedCount",
        "statesChanged",
        "Lapp/rive/runtime/kotlin/core/LayerState;",
        "getStatesChanged",
        "advance",
        "",
        "elapsed",
        "",
        "convertInput",
        "input",
        "convertLayerState",
        "state",
        "cppAdvance",
        "pointer",
        "elapsedTime",
        "cppDelete",
        "",
        "cppInputCount",
        "cppPointer",
        "cppLayerCount",
        "cppName",
        "cppPointerDown",
        "x",
        "y",
        "cppPointerMove",
        "cppPointerUp",
        "cppReportedEventAt",
        "Lapp/rive/runtime/kotlin/core/RiveEventReport;",
        "index",
        "cppReportedEventCount",
        "cppSMIInputByIndex",
        "cppStateChangedByIndex",
        "cppStateChangedCount",
        "eventAt",
        "pointerDown",
        "pointerMove",
        "pointerUp",
        "stateChanged",
        "kotlin_release"
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
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/locks/ReentrantLock;)V
    .locals 1

    const-string v0, "lock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    iput-object p3, p0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final convertInput(Lapp/rive/runtime/kotlin/core/SMIInput;)Lapp/rive/runtime/kotlin/core/SMIInput;
    .locals 3

    .line 79
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lapp/rive/runtime/kotlin/core/SMIBoolean;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/SMIBoolean;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/SMIInput;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->isTrigger()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lapp/rive/runtime/kotlin/core/SMITrigger;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/SMITrigger;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/SMIInput;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lapp/rive/runtime/kotlin/core/SMINumber;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/SMINumber;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/SMIInput;

    :goto_0
    return-object v0

    .line 82
    :cond_2
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown State Machine Input Instance for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/SMIInput;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final convertLayerState(Lapp/rive/runtime/kotlin/core/LayerState;)Lapp/rive/runtime/kotlin/core/LayerState;
    .locals 3

    .line 130
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->isAnimationState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lapp/rive/runtime/kotlin/core/AnimationState;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/AnimationState;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/LayerState;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->isAnyState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lapp/rive/runtime/kotlin/core/AnyState;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/AnyState;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/LayerState;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->isEntryState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    new-instance v0, Lapp/rive/runtime/kotlin/core/EntryState;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/EntryState;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/LayerState;

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->isExitState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lapp/rive/runtime/kotlin/core/ExitState;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/ExitState;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/LayerState;

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->isBlendState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    new-instance v0, Lapp/rive/runtime/kotlin/core/BlendState;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/BlendState;-><init>(J)V

    check-cast v0, Lapp/rive/runtime/kotlin/core/LayerState;

    :goto_0
    return-object v0

    .line 150
    :cond_4
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Layer State for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final native cppAdvance(JF)Z
.end method

.method private final native cppInputCount(J)I
.end method

.method private final native cppLayerCount(J)I
.end method

.method private final native cppName(J)Ljava/lang/String;
.end method

.method private final native cppPointerDown(JFF)V
.end method

.method private final native cppPointerMove(JFF)V
.end method

.method private final native cppPointerUp(JFF)V
.end method

.method private final native cppReportedEventAt(JI)Lapp/rive/runtime/kotlin/core/RiveEventReport;
.end method

.method private final native cppReportedEventCount(J)I
.end method

.method private final native cppSMIInputByIndex(JI)J
.end method

.method private final native cppStateChangedByIndex(JI)J
.end method

.method private final native cppStateChangedCount(J)I
.end method

.method private final getReportedEventCount()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppReportedEventCount(J)I

    move-result v0

    return v0
.end method

.method private final getStateChangedCount()I
    .locals 2

    .line 71
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppStateChangedCount(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final advance(F)Z
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppAdvance(JF)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public native cppDelete(J)V
.end method

.method public final eventAt(I)Lapp/rive/runtime/kotlin/core/RiveEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lapp/rive/runtime/kotlin/core/errors/RiveEventException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppReportedEventAt(JI)Lapp/rive/runtime/kotlin/core/RiveEventReport;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/RiveEventReport;->getUnsafeCppPointer()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/RiveEventReport;->getEvent()Lapp/rive/runtime/kotlin/core/RiveEvent;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/RiveEventException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Rive Event found at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/RiveEventException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEventsReported()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/RiveEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getReportedEventCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 213
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 194
    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->eventAt(I)Lapp/rive/runtime/kotlin/core/RiveEvent;

    move-result-object v2

    .line 214
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getInputCount()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppInputCount(J)I

    move-result v0

    return v0
.end method

.method public final getInputNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getInputCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 126
    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->input(I)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object v2

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/SMIInput;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getInputs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/SMIInput;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getInputCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 201
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 122
    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->input(I)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object v2

    .line 202
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getLayerCount()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppLayerCount(J)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatesChanged()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/LayerState;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getStateChangedCount()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 189
    invoke-virtual {p0, v2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->stateChanged(I)Lapp/rive/runtime/kotlin/core/LayerState;

    move-result-object v2

    .line 210
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final input(I)Lapp/rive/runtime/kotlin/core/SMIInput;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppSMIInputByIndex(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 100
    new-instance p1, Lapp/rive/runtime/kotlin/core/SMIInput;

    invoke-direct {p1, v0, v1}, Lapp/rive/runtime/kotlin/core/SMIInput;-><init>(J)V

    .line 101
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->convertInput(Lapp/rive/runtime/kotlin/core/SMIInput;)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No StateMachineInput found at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final input(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/SMIInput;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getInputCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-virtual {p0, v1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->input(I)Lapp/rive/runtime/kotlin/core/SMIInput;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/core/SMIInput;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No StateMachineInput found with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pointerDown(FF)V
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppPointerDown(JFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final pointerMove(FF)V
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppPointerMove(JFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final pointerUp(FF)V
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppPointerUp(JFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final stateChanged(I)Lapp/rive/runtime/kotlin/core/LayerState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->cppStateChangedByIndex(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 167
    new-instance p1, Lapp/rive/runtime/kotlin/core/LayerState;

    invoke-direct {p1, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;-><init>(J)V

    .line 168
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/core/StateMachineInstance;->convertLayerState(Lapp/rive/runtime/kotlin/core/LayerState;)Lapp/rive/runtime/kotlin/core/LayerState;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    new-instance v0, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No LayerState found at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/errors/StateMachineInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
