.class Lcom/auth0/react/A0Auth0Module$1;
.super Ljava/lang/Object;
.source "A0Auth0Module.java"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/react/A0Auth0Module;->getCredentials(Ljava/lang/String;DLcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/auth0/react/A0Auth0Module;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module$1;->this$0:Lcom/auth0/react/A0Auth0Module;

    iput-object p2, p0, Lcom/auth0/react/A0Auth0Module$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 79
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
            null
        }
    .end annotation

    .line 79
    check-cast p1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$1;->onFailure(Lcom/auth0/android/authentication/storage/CredentialsManagerException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/storage/CredentialsManagerException;)V
    .locals 3

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "a0.invalid_state.credential_manager_exception"

    .line 88
    invoke-virtual {p1}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 1

    .line 82
    invoke-static {p1}, Lcom/auth0/react/CredentialsParser;->toMap(Lcom/auth0/android/result/Credentials;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 83
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 79
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$1;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
