.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignallingEntropySource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;
    }
.end annotation


# instance fields
.field private final byteLength:I

.field private final entropy:Ljava/util/concurrent/atomic/AtomicReference;

.field private final entropyDaemon:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;

.field private final entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

.field private final pause:J

.field private final scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/bouncycastle/crypto/prng/EntropySourceProvider;I)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropyDaemon:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p4, p5}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    add-int/lit8 p5, p5, 0x7

    div-int/lit8 p5, p5, 0x8

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->byteLength:I

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->access$1000()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->pause:J

    return-void
.end method

.method static synthetic access$1100(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->pause:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->byteLength:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->getEntropy(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getEntropy(J)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropy:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->byteLength:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;->getEntropy(J)[B

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->schedule()V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method schedule()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->scheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropyDaemon:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->entropySource:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;->addTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
