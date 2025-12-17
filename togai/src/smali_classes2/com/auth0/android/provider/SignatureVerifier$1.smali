.class final Lcom/auth0/android/provider/SignatureVerifier$1;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"

# interfaces
.implements Lcom/auth0/android/callback/AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/android/provider/SignatureVerifier;->forAsymmetricAlgorithm(Ljava/lang/String;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/AuthenticationCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/security/PublicKey;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/auth0/android/callback/Callback;

.field final synthetic val$keyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$callback",
            "val$keyId"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$keyId:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$callback:Lcom/auth0/android/callback/Callback;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/auth0/android/Auth0Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/SignatureVerifier$1;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object p1, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$callback:Lcom/auth0/android/callback/Callback;

    .line 69
    new-instance v0, Lcom/auth0/android/provider/PublicKeyNotFoundException;

    iget-object v1, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$keyId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/PublicKeyNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 56
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/SignatureVerifier$1;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$keyId:Ljava/lang/String;

    .line 59
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/PublicKey;

    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$callback:Lcom/auth0/android/callback/Callback;

    .line 61
    new-instance v1, Lcom/auth0/android/provider/AsymmetricSignatureVerifier;

    invoke-direct {v1, p1}, Lcom/auth0/android/provider/AsymmetricSignatureVerifier;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v0, v1}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$callback:Lcom/auth0/android/callback/Callback;

    .line 63
    new-instance v0, Lcom/auth0/android/provider/PublicKeyNotFoundException;

    iget-object v1, p0, Lcom/auth0/android/provider/SignatureVerifier$1;->val$keyId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/PublicKeyNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    :goto_0
    return-void
.end method
