.class public final Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;
.super Ljava/lang/Object;
.source "SecureCredentialsManager.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->awaitCredentials(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/Callback<",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        "onFailure",
        "",
        "error",
        "onSuccess",
        "result",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/auth0/android/result/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/auth0/android/result/Credentials;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 0

    .line 291
    check-cast p1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;->onFailure(Lcom/auth0/android/authentication/storage/CredentialsManagerException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/storage/CredentialsManagerException;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 297
    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 293
    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 291
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
