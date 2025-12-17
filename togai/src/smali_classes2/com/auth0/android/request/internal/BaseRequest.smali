.class public Lcom/auth0/android/request/internal/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.kt"

# interfaces
.implements Lcom/auth0/android/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/auth0/android/Auth0Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/auth0/android/request/Request<",
        "TT;TU;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004BC\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0016J)\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019J$\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0016J(\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001cH\u0016J\u0011\u0010\u001d\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\r\u0010\u001f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u001c\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010$H\u0016J)\u0010%\u001a\u00028\u00002\u0006\u0010&\u001a\u00020\'2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000)H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/BaseRequest;",
        "T",
        "U",
        "Lcom/auth0/android/Auth0Exception;",
        "Lcom/auth0/android/request/Request;",
        "method",
        "Lcom/auth0/android/request/HttpMethod;",
        "url",
        "",
        "client",
        "Lcom/auth0/android/request/NetworkingClient;",
        "resultAdapter",
        "Lcom/auth0/android/request/JsonAdapter;",
        "errorAdapter",
        "Lcom/auth0/android/request/ErrorAdapter;",
        "threadSwitcher",
        "Lcom/auth0/android/request/internal/ThreadSwitcher;",
        "(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)V",
        "options",
        "Lcom/auth0/android/request/RequestOptions;",
        "addHeader",
        "name",
        "value",
        "addParameter",
        "",
        "addParameter$auth0_release",
        "addParameters",
        "parameters",
        "",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "()Ljava/lang/Object;",
        "start",
        "",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "switchRequestContext",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "runnable",
        "Lkotlin/Function0;",
        "switchRequestContext$auth0_release",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final client:Lcom/auth0/android/request/NetworkingClient;

.field private final errorAdapter:Lcom/auth0/android/request/ErrorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/auth0/android/request/RequestOptions;

.field private final resultAdapter:Lcom/auth0/android/request/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

.field private final url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$fMxCsrZ-q6i8TNcHG18QHcVUTJM(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/Auth0Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/auth0/android/request/internal/BaseRequest;->start$lambda$2$lambda$1(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSBnh8An82tV7WlgZO_i73nAM64(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/auth0/android/request/internal/BaseRequest;->start$lambda$2(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kFPDhOzGXd4RYJLm5SVritOp5Hk(Lcom/auth0/android/callback/Callback;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/auth0/android/request/internal/BaseRequest;->start$lambda$2$lambda$0(Lcom/auth0/android/callback/Callback;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/NetworkingClient;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;",
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;",
            "Lcom/auth0/android/request/internal/ThreadSwitcher;",
            ")V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadSwitcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/auth0/android/request/internal/BaseRequest;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/request/internal/BaseRequest;->client:Lcom/auth0/android/request/NetworkingClient;

    iput-object p4, p0, Lcom/auth0/android/request/internal/BaseRequest;->resultAdapter:Lcom/auth0/android/request/JsonAdapter;

    iput-object p5, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    iput-object p6, p0, Lcom/auth0/android/request/internal/BaseRequest;->threadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    .line 31
    new-instance p2, Lcom/auth0/android/request/RequestOptions;

    invoke-direct {p2, p1}, Lcom/auth0/android/request/RequestOptions;-><init>(Lcom/auth0/android/request/HttpMethod;)V

    iput-object p2, p0, Lcom/auth0/android/request/internal/BaseRequest;->options:Lcom/auth0/android/request/RequestOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 28
    sget-object p6, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    invoke-virtual {p6}, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;->getInstance()Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    move-result-object p6

    check-cast p6, Lcom/auth0/android/request/internal/ThreadSwitcher;

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/auth0/android/request/internal/BaseRequest;-><init>(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)V

    return-void
.end method

.method static synthetic await$suspendImpl(Lcom/auth0/android/request/internal/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Lcom/auth0/android/Auth0Exception;",
            ">(",
            "Lcom/auth0/android/request/internal/BaseRequest<",
            "TT;TU;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    .line 94
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/auth0/android/request/internal/BaseRequest$await$2;

    invoke-direct {v1, p0}, Lcom/auth0/android/request/internal/BaseRequest$await$2;-><init>(Lcom/auth0/android/request/internal/BaseRequest;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0, v1, p1}, Lcom/auth0/android/request/internal/BaseRequest;->switchRequestContext$auth0_release(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final start$lambda$2(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/auth0/android/request/internal/BaseRequest;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseRequest;->threadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    new-instance v2, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0}, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda1;-><init>(Lcom/auth0/android/callback/Callback;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/auth0/android/request/internal/ThreadSwitcher;->mainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/auth0/android/Auth0Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 78
    instance-of v1, v0, Lcom/auth0/android/Auth0Exception;

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/auth0/android/request/ErrorAdapter;->fromException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/auth0/android/Auth0Exception;

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/auth0/android/request/internal/BaseRequest;->threadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    new-instance v0, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, v1}, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda2;-><init>(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/Auth0Exception;)V

    invoke-interface {p0, v0}, Lcom/auth0/android/request/internal/ThreadSwitcher;->mainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final start$lambda$2$lambda$0(Lcom/auth0/android/callback/Callback;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p0, p1}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static final start$lambda$2$lambda$1(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/Auth0Exception;)V
    .locals 1

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest;->options:Lcom/auth0/android/request/RequestOptions;

    .line 34
    invoke-virtual {v0}, Lcom/auth0/android/request/RequestOptions;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/auth0/android/request/internal/OidcUtils;->INSTANCE:Lcom/auth0/android/request/internal/OidcUtils;

    invoke-virtual {v0, p2}, Lcom/auth0/android/request/internal/OidcUtils;->includeRequiredScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/internal/BaseRequest;->addParameter$auth0_release(Ljava/lang/String;Ljava/lang/Object;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final addParameter$auth0_release(Ljava/lang/String;Ljava/lang/Object;)Lcom/auth0/android/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest;->options:Lcom/auth0/android/request/RequestOptions;

    .line 59
    invoke-virtual {v0}, Lcom/auth0/android/request/RequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "scope"

    .line 40
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    sget-object v2, Lcom/auth0/android/request/internal/OidcUtils;->INSTANCE:Lcom/auth0/android/request/internal/OidcUtils;

    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/auth0/android/request/internal/OidcUtils;->includeRequiredScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/auth0/android/request/internal/BaseRequest;->options:Lcom/auth0/android/request/RequestOptions;

    .line 45
    invoke-virtual {p1}, Lcom/auth0/android/request/RequestOptions;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    move-object p1, p0

    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public synthetic await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/android/request/internal/BaseRequest;->await$suspendImpl(Lcom/auth0/android/request/internal/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/Auth0Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest;->client:Lcom/auth0/android/request/NetworkingClient;

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/auth0/android/request/internal/BaseRequest;->options:Lcom/auth0/android/request/RequestOptions;

    .line 121
    invoke-interface {v0, v1, v2}, Lcom/auth0/android/request/NetworkingClient;->load(Ljava/lang/String;Lcom/auth0/android/request/RequestOptions;)Lcom/auth0/android/request/ServerResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStreamReader;

    .line 129
    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->isSuccess()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest;->resultAdapter:Lcom/auth0/android/request/JsonAdapter;

    .line 132
    check-cast v2, Ljava/io/Reader;

    invoke-interface {v0, v2}, Lcom/auth0/android/request/JsonAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 131
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    .line 136
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lcom/auth0/android/request/ErrorAdapter;->fromException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    .line 137
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->isJson()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    .line 144
    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->getStatusCode()I

    move-result v0

    check-cast v2, Ljava/io/Reader;

    invoke-interface {v3, v0, v2}, Lcom/auth0/android/request/ErrorAdapter;->fromJsonResponse(ILjava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    .line 147
    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->getStatusCode()I

    move-result v4

    .line 148
    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v0}, Lcom/auth0/android/request/ServerResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 146
    invoke-interface {v3, v4, v2, v0}, Lcom/auth0/android/request/ErrorAdapter;->fromRawResponse(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/Auth0Exception;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    .line 155
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lcom/auth0/android/request/ErrorAdapter;->fromException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    .line 157
    :goto_0
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/auth0/android/request/internal/BaseRequest;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    .line 124
    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/auth0/android/request/ErrorAdapter;->fromException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    .line 125
    throw v0
.end method

.method public start(Lcom/auth0/android/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/callback/Callback<",
            "TT;TU;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseRequest;->threadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    .line 70
    new-instance v1, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/auth0/android/request/internal/BaseRequest$$ExternalSyntheticLambda0;-><init>(Lcom/auth0/android/request/internal/BaseRequest;Lcom/auth0/android/callback/Callback;)V

    invoke-interface {v0, v1}, Lcom/auth0/android/request/internal/ThreadSwitcher;->backgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final switchRequestContext$auth0_release(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/auth0/android/request/internal/BaseRequest$switchRequestContext$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/auth0/android/request/internal/BaseRequest$switchRequestContext$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
