.class Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;
.super Ljava/lang/ref/WeakReference;
.source "LoggingScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LoggingScope$WeakScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/google/common/flogger/LoggingScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/google/common/flogger/LoggingScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onCloseHooks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/LoggingScope;)V
    .locals 1

    sget-object v0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 149
    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 146
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->onCloseHooks:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;)Ljava/util/Queue;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->onCloseHooks:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->onCloseHooks:Ljava/util/Queue;

    .line 166
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static removeUnusedKeys()V
    .locals 1

    :goto_0
    sget-object v0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 158
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {v0}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method
