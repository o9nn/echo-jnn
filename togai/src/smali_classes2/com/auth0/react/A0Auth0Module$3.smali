.class Lcom/auth0/react/A0Auth0Module$3;
.super Ljava/lang/Object;
.source "A0Auth0Module.java"

# interfaces
.implements Lcom/auth0/android/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/auth0/react/A0Auth0Module;->webAuthLogout(Ljava/lang/String;ZLjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/auth0/android/callback/Callback<",
        "Ljava/lang/Void;",
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

    iput-object p1, p0, Lcom/auth0/react/A0Auth0Module$3;->this$0:Lcom/auth0/react/A0Auth0Module;

    iput-object p2, p0, Lcom/auth0/react/A0Auth0Module$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 212
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

    .line 212
    check-cast p1, Lcom/auth0/android/authentication/AuthenticationException;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$3;->onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method

.method public onFailure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 2

    iget-object v0, p0, Lcom/auth0/react/A0Auth0Module$3;->this$0:Lcom/auth0/react/A0Auth0Module;

    iget-object v1, p0, Lcom/auth0/react/A0Auth0Module$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 220
    invoke-static {v0, p1, v1}, Lcom/auth0/react/A0Auth0Module;->-$$Nest$mhandleError(Lcom/auth0/react/A0Auth0Module;Lcom/auth0/android/authentication/AuthenticationException;Lcom/facebook/react/bridge/Promise;)V

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

    .line 212
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/auth0/react/A0Auth0Module$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/auth0/react/A0Auth0Module$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
