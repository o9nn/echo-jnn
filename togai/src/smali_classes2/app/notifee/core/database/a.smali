.class public Lapp/notifee/core/database/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lapp/notifee/core/database/a;


# instance fields
.field public a:Ln/o/t/i/f/e/e/s;


# direct methods
.method public static synthetic $r8$lambda$6XRinSlFJzHXLRZ2Rfk8fG1M2QA(Lapp/notifee/core/database/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KOUu-7bCMFK6D9ZylfhwZWXcMys(Lapp/notifee/core/database/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UgzfVLdXhLpRGr6ZD-bcrnQxvPA(Lapp/notifee/core/database/a;Ljava/lang/String;)Ln/o/t/i/f/e/e/u;
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->d(Ljava/lang/String;)Ln/o/t/i/f/e/e/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WcGoLBzHajVMUqZMNJKonWUWI7s(Lapp/notifee/core/database/a;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->b(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qMF4vhhrnHJiCpMNUSyBQdCyYYM(Lapp/notifee/core/database/a;Ln/o/t/i/f/e/e/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->c(Ln/o/t/i/f/e/e/u;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTvsy2UlJgFNeKQDPgztn1Y8OR0(Lapp/notifee/core/database/a;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lapp/notifee/core/database/a;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uSvmDLspa3JyvsY4xOi_8t6igE0(Lapp/notifee/core/database/a;)V
    .locals 0

    invoke-direct {p0}, Lapp/notifee/core/database/a;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$z1GhmSWfwhaHaETZJbru2zfwXYM(Lapp/notifee/core/database/a;Ln/o/t/i/f/e/e/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/notifee/core/database/a;->b(Ln/o/t/i/f/e/e/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lapp/notifee/core/database/NotifeeCoreDatabase;->a(Landroid/content/Context;)Lapp/notifee/core/database/NotifeeCoreDatabase;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lapp/notifee/core/database/NotifeeCoreDatabase;->a()Ln/o/t/i/f/e/e/s;

    move-result-object p1

    iput-object p1, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lapp/notifee/core/database/a;
    .locals 2

    const-class v0, Lapp/notifee/core/database/a;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lapp/notifee/core/database/a;->b:Lapp/notifee/core/database/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lapp/notifee/core/database/a;

    invoke-direct {v1, p0}, Lapp/notifee/core/database/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lapp/notifee/core/database/a;->b:Lapp/notifee/core/database/a;

    :cond_0
    sget-object p0, Lapp/notifee/core/database/a;->b:Lapp/notifee/core/database/a;

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic b(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 3
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->a(Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 5
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->a(Ljava/util/List;)V

    return-void
.end method

.method private synthetic b(Ln/o/t/i/f/e/e/u;)V
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 1
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->a(Ln/o/t/i/f/e/e/u;)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 2
    invoke-interface {v0}, Ln/o/t/i/f/e/e/s;->b()V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 1
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Ln/o/t/i/f/e/e/u;)V
    .locals 1

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 3
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->b(Ln/o/t/i/f/e/e/u;)V

    return-void
.end method

.method private synthetic d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 2
    invoke-interface {v0}, Ln/o/t/i/f/e/e/s;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic d(Ljava/lang/String;)Ln/o/t/i/f/e/e/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lapp/notifee/core/database/a;->a:Ln/o/t/i/f/e/e/s;

    .line 1
    invoke-interface {v0, p1}, Ln/o/t/i/f/e/e/s;->b(Ljava/lang/String;)Ln/o/t/i/f/e/e/u;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Ln/o/t/i/f/e/e/u;",
            ">;>;"
        }
    .end annotation

    .line 9
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda5;-><init>(Lapp/notifee/core/database/a;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 12
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda1;-><init>(Lapp/notifee/core/database/a;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 10
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda7;-><init>(Lapp/notifee/core/database/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda2;-><init>(Lapp/notifee/core/database/a;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ln/o/t/i/f/e/e/u;)V
    .locals 2

    .line 8
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda0;-><init>(Lapp/notifee/core/database/a;Ln/o/t/i/f/e/e/u;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Ln/o/t/i/f/e/e/u;",
            ">;>;"
        }
    .end annotation

    .line 4
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda6;-><init>(Lapp/notifee/core/database/a;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ln/o/t/i/f/e/e/u;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda3;-><init>(Lapp/notifee/core/database/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public d(Ln/o/t/i/f/e/e/u;)V
    .locals 2

    .line 3
    sget-object v0, Lapp/notifee/core/database/NotifeeCoreDatabase;->b:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lapp/notifee/core/database/a$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lapp/notifee/core/database/a$$ExternalSyntheticLambda4;-><init>(Lapp/notifee/core/database/a;Ln/o/t/i/f/e/e/u;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
