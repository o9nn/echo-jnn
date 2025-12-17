.class public final Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;
.super Ljava/lang/Object;
.source "SimpleResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007J\u001a\u0010\u0008\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;",
        "",
        "()V",
        "get",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;",
        "R",
        "block",
        "Lkotlin/Function0;",
        "run",
        "",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lkotlin/jvm/functions/Function0;)Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultError;

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultError;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;

    :goto_0
    return-object v0
.end method

.method public final run(Lkotlin/jvm/functions/Function0;)Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;

    invoke-direct {p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;-><init>()V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultError;

    invoke-direct {v0, p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultError;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;

    :goto_0
    return-object p1
.end method
