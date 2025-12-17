.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntropyGatherer"
.end annotation


# instance fields
.field private final baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

.field final synthetic this$1:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->this$1:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->this$1:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->access$1200(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->baseRandom:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->this$1:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->access$1100(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$IncrementalEntropySource;->getEntropy(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource$EntropyGatherer;->this$1:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;->access$1300(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$HybridEntropySource$SignallingEntropySource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
