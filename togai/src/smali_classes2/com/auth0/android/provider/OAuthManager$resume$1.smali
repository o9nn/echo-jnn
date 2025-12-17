.class public final Lcom/auth0/android/provider/OAuthManager$resume$1;
.super Ljava/lang/Object;
.source "OAuthManager.kt"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/provider/OAuthManager;->resume(Lcom/auth0/android/provider/AuthorizeResult;)Z
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
        "com/auth0/android/provider/OAuthManager$resume$1",
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
.field final synthetic this$0:Lcom/auth0/android/provider/OAuthManager;


# direct methods
.method constructor <init>(Lcom/auth0/android/provider/OAuthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager$resume$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/OAuthManager$resume$1;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Unauthorized"

    .line 124
    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/auth0/android/provider/PKCE;->TAG:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to complete authentication with PKCE. PKCE support can be enabled by setting Application Type to \'Native\' and Token Endpoint Authentication Method to \'None\' for this app at \'https://manage.auth0.com/#/applications/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/auth0/android/provider/OAuthManager$resume$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    invoke-static {v2}, Lcom/auth0/android/provider/OAuthManager;->access$getApiClient$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/authentication/AuthenticationAPIClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/settings\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager$resume$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    .line 130
    invoke-static {v0}, Lcom/auth0/android/provider/OAuthManager;->access$getCallback$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/callback/Callback;

    move-result-object v0

    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 4

    const-string v0, "credentials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager$resume$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    .line 108
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;

    iget-object v3, p0, Lcom/auth0/android/provider/OAuthManager$resume$1;->this$0:Lcom/auth0/android/provider/OAuthManager;

    invoke-direct {v2, v3, p1}, Lcom/auth0/android/provider/OAuthManager$resume$1$onSuccess$1;-><init>(Lcom/auth0/android/provider/OAuthManager;Lcom/auth0/android/result/Credentials;)V

    check-cast v2, Lcom/auth0/android/callback/Callback;

    .line 107
    invoke-static {v0, v1, v2}, Lcom/auth0/android/provider/OAuthManager;->access$assertValidIdToken(Lcom/auth0/android/provider/OAuthManager;Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/OAuthManager$resume$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
