.class Lcom/auth0/react/A0Auth0Module$2;
.super Ljava/lang/Object;
.source "A0Auth0Module.java"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/react/A0Auth0Module;->webAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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
        "Lcom/auth0/android/authentication/AuthenticationException;",
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

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module$2;->this$0:Lcom/auth0/react/A0Auth0Module;

    iput-object p2, p0, Lcom/auth0/react/A0Auth0Module$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 186
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

    .line 186
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$2;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 2

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module$2;->this$0:Lcom/auth0/react/A0Auth0Module;

    iget-object v1, p0, Lcom/auth0/react/A0Auth0Module$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 196
    invoke-static {v0, p1, v1}, Lcom/auth0/react/A0Auth0Module;->-$$Nest$mhandleError(Lcom/auth0/react/A0Auth0Module;Lcom/auth0/android/authentication/AuthenticationException;Lcom/facebook/react/bridge/Promise;)V

    iget-object p1, p0, Lcom/auth0/react/A0Auth0Module$2;->this$0:Lcom/auth0/react/A0Auth0Module;

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, v0}, Lcom/auth0/react/A0Auth0Module;->-$$Nest$fputwebAuthPromise(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public onSuccess(Lcom/auth0/android/result/Credentials;)V
    .locals 1

    .line 189
    invoke-static {p1}, Lcom/auth0/react/CredentialsParser;->toMap(Lcom/auth0/android/result/Credentials;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 190
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/react/A0Auth0Module$2;->this$0:Lcom/auth0/react/A0Auth0Module;

    const/4 v0, 0x0

    .line 191
    invoke-static {p1, v0}, Lcom/auth0/react/A0Auth0Module;->-$$Nest$fputwebAuthPromise(Lcom/auth0/react/A0Auth0Module;Lcom/facebook/react/bridge/Promise;)V

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

    .line 186
    check-cast p1, Lcom/auth0/android/result/Credentials;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$2;->onSuccess(Lcom/auth0/android/result/Credentials;)V

    return-void
.end method
