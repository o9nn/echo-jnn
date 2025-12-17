.class final Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IntentServiceParallel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;


# direct methods
.method public static synthetic $r8$lambda$OlkW0vXm49fgmDVFll-Uf5lrZHU(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;->invoke$lambda$0(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V
    .locals 0

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;->this$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntentServiceParallel"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;->invoke()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/ExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;->this$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    .line 46
    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2$$ExternalSyntheticLambda0;-><init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
