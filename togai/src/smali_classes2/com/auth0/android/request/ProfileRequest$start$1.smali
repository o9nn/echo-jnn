.class public final Lcom/auth0/android/request/ProfileRequest$start$1;
.super Ljava/lang/Object;
.source "ProfileRequest.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/request/ProfileRequest;->start(Lcom/auth0/android/callback/Callback;)V
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
        "com/auth0/android/request/ProfileRequest$start$1",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "onFailure",
        "",
        "error",
        "onSuccess",
        "credentials",
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
            "Lcom/auth0/android/result/Authentication;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/auth0/android/request/ProfileRequest;


# direct methods
.method constructor <init>(Lcom/auth0/android/request/ProfileRequest;Lcom/auth0/android/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/ProfileRequest;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Authentication;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/request/ProfileRequest$start$1;->this$0:Lcom/auth0/android/request/ProfileRequest;

    iput-object p2, p0, Lcom/auth0/android/request/ProfileRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/request/ProfileRequest$start$1;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    .line 96
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 3

    const-string v0, "credentials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/ProfileRequest$start$1;->this$0:Lcom/auth0/android/request/ProfileRequest;

    .line 82
    invoke-static {v0}, Lcom/auth0/android/request/ProfileRequest;->access$getUserInfoRequest$p(Lcom/auth0/android/request/ProfileRequest;)Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/auth0/android/request/ProfileRequest$start$1$onSuccess$1;

    iget-object v2, p0, Lcom/auth0/android/request/ProfileRequest$start$1;->$callback:Lcom/auth0/android/callback/Callback;

    invoke-direct {v1, v2, p1}, Lcom/auth0/android/request/ProfileRequest$start$1$onSuccess$1;-><init>(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/result/Credentials;)V

    check-cast v1, Lcom/auth0/android/callback/Callback;

    invoke-interface {v0, v1}, Lcom/auth0/android/request/Request;->start(Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/android/request/ProfileRequest$start$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
