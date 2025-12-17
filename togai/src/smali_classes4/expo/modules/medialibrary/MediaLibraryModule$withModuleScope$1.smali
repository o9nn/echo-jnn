.class public final Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaLibraryModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;->withModuleScope(Lexpo/modules/kotlin/Promise;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLibraryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1\n*L\n1#1,505:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.medialibrary.MediaLibraryModule$withModuleScope$1"
    f = "MediaLibraryModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lexpo/modules/kotlin/Promise;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$block:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$block:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;-><init>(Lkotlin/jvm/functions/Function0;Lexpo/modules/kotlin/Promise;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->label:I

    if-nez v0, :cond_0

    .line 328
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$block:Lkotlin/jvm/functions/Function0;

    .line 330
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lexpo/modules/core/errors/ModuleDestroyedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 334
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryModule;->Companion:Lexpo/modules/medialibrary/MediaLibraryModule$Companion;

    invoke-virtual {v1}, Lexpo/modules/medialibrary/MediaLibraryModule$Companion;->getTAG$expo_media_library_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "MediaLibrary module destroyed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, p1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 332
    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 336
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$block:Lkotlin/jvm/functions/Function0;

    .line 330
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lexpo/modules/core/errors/ModuleDestroyedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 334
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryModule;->Companion:Lexpo/modules/medialibrary/MediaLibraryModule$Companion;

    invoke-virtual {v1}, Lexpo/modules/medialibrary/MediaLibraryModule$Companion;->getTAG$expo_media_library_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v2, "MediaLibrary module destroyed"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, p1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$withModuleScope$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 332
    invoke-interface {v0, p1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 336
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
