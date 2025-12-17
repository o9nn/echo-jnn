.class public final Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;
.super Ljava/lang/Object;
.source "BaseAuthenticationRequest.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->start(Lcom/auth0/android/callback/Callback;)V
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
        "Lcom/auth0/android/authentication/AuthenticationException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/auth0/android/request/internal/BaseAuthenticationRequest$start$1",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
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
.field final synthetic $callback:Lcom/auth0/android/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/auth0/android/request/internal/BaseAuthenticationRequest;


# direct methods
.method constructor <init>(Lcom/auth0/android/request/internal/BaseAuthenticationRequest;Lcom/auth0/android/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/internal/BaseAuthenticationRequest;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->this$0:Lcom/auth0/android/request/internal/BaseAuthenticationRequest;

    iput-object p2, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 145
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->this$0:Lcom/auth0/android/request/internal/BaseAuthenticationRequest;

    .line 133
    invoke-virtual {v0}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->getValidateClaims$auth0_release()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->this$0:Lcom/auth0/android/request/internal/BaseAuthenticationRequest;

    .line 135
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->verifyClaims$auth0_release(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 137
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 141
    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest$start$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
