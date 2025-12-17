.class public final synthetic Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;


# direct methods
.method public synthetic constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2$$ExternalSyntheticLambda0;->f$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2$$ExternalSyntheticLambda0;->f$0:Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;

    invoke-static {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel$executor$2;->$r8$lambda$OlkW0vXm49fgmDVFll-Uf5lrZHU(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
