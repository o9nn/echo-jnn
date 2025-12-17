.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntropyDaemon"
.end annotation


# instance fields
.field private final tasks:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;->tasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;-><init>()V

    return-void
.end method


# virtual methods
.method addTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;->tasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 2

    :catchall_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$EntropyDaemon;->tasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
