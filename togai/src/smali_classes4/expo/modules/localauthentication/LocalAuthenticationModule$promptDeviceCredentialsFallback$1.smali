.class final Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalAuthenticationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/localauthentication/LocalAuthenticationModule;->promptDeviceCredentialsFallback(Lexpo/modules/localauthentication/AuthOptions;Lexpo/modules/kotlin/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    c = "expo.modules.localauthentication.LocalAuthenticationModule$promptDeviceCredentialsFallback$1"
    f = "LocalAuthenticationModule.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $promptMessage:Ljava/lang/String;

.field final synthetic $requireConfirmation:Z

.field label:I

.field final synthetic this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;


# direct methods
.method constructor <init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/kotlin/Promise;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lexpo/modules/kotlin/Promise;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iput-object p2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    iput-boolean p5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iget-object v3, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v4, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-boolean v5, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;-><init>(Lexpo/modules/localauthentication/LocalAuthenticationModule;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lexpo/modules/kotlin/Promise;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->label:I

    if-nez v0, :cond_1

    .line 258
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 261
    invoke-static {p1}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getKeyguardManager(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroid/app/KeyguardManager;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x6

    .line 262
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 266
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 267
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    invoke-static {v2}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$getAuthenticationCallback$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iget-object p1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->this$0:Lexpo/modules/localauthentication/LocalAuthenticationModule;

    .line 269
    invoke-static {p1, v0}, Lexpo/modules/localauthentication/LocalAuthenticationModule;->access$setBiometricPrompt$p(Lexpo/modules/localauthentication/LocalAuthenticationModule;Landroidx/biometric/BiometricPrompt;)V

    .line 271
    new-instance p1, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    iget-object v1, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promptMessage:Ljava/lang/String;

    iget-boolean v2, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$requireConfirmation:Z

    .line 272
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    const v1, 0x8000

    .line 273
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 274
    invoke-virtual {p1, v2}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    .line 277
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object p1

    const-string v1, "build(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lexpo/modules/localauthentication/LocalAuthenticationModule$promptDeviceCredentialsFallback$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 281
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    const-string v2, "Canceled authentication due to an internal error"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 283
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 258
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
