.class public abstract Lapp/rive/runtime/kotlin/core/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.kt"

# interfaces
.implements Lapp/rive/runtime/kotlin/core/RefCount;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/NativeObject$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeObject.kt\napp/rive/runtime/kotlin/core/NativeObject\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n37#2,2:144\n1855#3,2:146\n*S KotlinDebug\n*F\n+ 1 NativeObject.kt\napp/rive/runtime/kotlin/core/NativeObject\n*L\n46#1:144,2\n137#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 $2\u00020\u0001:\u0001$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003H\u0016J\u0008\u0010\"\u001a\u00020 H\u0002J\u0008\u0010#\u001a\u00020\u001cH\u0016R$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0004R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "Lapp/rive/runtime/kotlin/core/RefCount;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "value",
        "cppPointer",
        "getCppPointer",
        "()J",
        "setCppPointer",
        "dependencies",
        "",
        "getDependencies",
        "()Ljava/util/List;",
        "disposeStackTrace",
        "Lkotlin/sequences/Sequence;",
        "Ljava/lang/StackTraceElement;",
        "hasCppObject",
        "",
        "getHasCppObject",
        "()Z",
        "refs",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getRefs",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setRefs",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "acquire",
        "",
        "buildCombinedStackTrace",
        "",
        "cppDelete",
        "",
        "pointer",
        "dispose",
        "release",
        "Companion",
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


# static fields
.field public static final Companion:Lapp/rive/runtime/kotlin/core/NativeObject$Companion;

.field public static final NULL_POINTER:J


# instance fields
.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/RefCount;",
            ">;"
        }
    .end annotation
.end field

.field private disposeStackTrace:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private refs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private unsafeCppPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/core/NativeObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/NativeObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/NativeObject;->Companion:Lapp/rive/runtime/kotlin/core/NativeObject$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->dependencies:Ljava/util/List;

    return-void
.end method

.method private final buildCombinedStackTrace()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->disposeStackTrace:Lkotlin/sequences/Sequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 72
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, "Dispose_Trace"

    const-string v6, "Start"

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v2, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 74
    new-instance v1, Ljava/lang/StackTraceElement;

    const-string v4, "Current_Trace"

    invoke-direct {v1, v4, v6, v2, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget-object v3, Lapp/rive/runtime/kotlin/core/Helpers;->INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Lapp/rive/runtime/kotlin/core/Helpers;->getCurrentStackTrace$default(Lapp/rive/runtime/kotlin/core/Helpers;ZILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 79
    invoke-static {v2, v5}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    return-object v0
.end method

.method private final declared-synchronized dispose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lapp/rive/runtime/kotlin/core/Helpers;->INSTANCE:Lapp/rive/runtime/kotlin/core/Helpers;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lapp/rive/runtime/kotlin/core/Helpers;->getCurrentStackTrace$default(Lapp/rive/runtime/kotlin/core/Helpers;ZILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    iput-object v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->disposeStackTrace:Lkotlin/sequences/Sequence;

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->dependencies:Ljava/util/List;

    .line 137
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/core/RefCount;

    .line 137
    invoke-interface {v2}, Lapp/rive/runtime/kotlin/core/RefCount;->release()I

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-wide v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    .line 140
    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/NativeObject;->cppDelete(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Failed requirement."

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->acquire(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 97
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Failed requirement."

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cppDelete(J)V
    .locals 0

    return-void
.end method

.method public final getCppPointer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lapp/rive/runtime/kotlin/core/errors/RiveException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/NativeObject;->getHasCppObject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    return-wide v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lapp/rive/runtime/kotlin/core/errors/RiveException;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessing disposed C++ object "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Lapp/rive/runtime/kotlin/core/errors/RiveException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/NativeObject;->buildCombinedStackTrace()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 145
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 46
    invoke-virtual {v1, v0}, Lapp/rive/runtime/kotlin/core/errors/RiveException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 48
    throw v1
.end method

.method public final getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/RefCount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->dependencies:Ljava/util/List;

    return-object v0
.end method

.method public final getHasCppObject()Z
    .locals 4

    iget-wide v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRefCount()I
    .locals 1

    .line 12
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->getRefCount(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0

    return v0
.end method

.method public final getRefs()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public declared-synchronized release()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {p0}, Lapp/rive/runtime/kotlin/core/RefCount$DefaultImpls;->release(Lapp/rive/runtime/kotlin/core/RefCount;)I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/NativeObject;->getHasCppObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/NativeObject;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v0, "Failed requirement."

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCppPointer(J)V
    .locals 0

    iput-wide p1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->unsafeCppPointer:J

    return-void
.end method

.method public final setRefs(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/NativeObject;->refs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
