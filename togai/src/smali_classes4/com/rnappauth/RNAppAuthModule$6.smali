.class Lcom/rnappauth/RNAppAuthModule$6;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$authorizePromise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$response:Lnet/openid/appauth/AuthorizationResponse;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationResponse;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$6;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$6;->val$response:Lnet/openid/appauth/AuthorizationResponse;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$6;->val$authorizePromise:Lcom/facebook/react/bridge/Promise;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$6;->val$response:Lnet/openid/appauth/AuthorizationResponse;

    .line 543
    invoke-static {p1, p2}, Lcom/rnappauth/utils/TokenResponseFactory;->tokenResponseToMap(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$6;->val$authorizePromise:Lcom/facebook/react/bridge/Promise;

    if-eqz p2, :cond_1

    .line 545
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$6;->this$0:Lcom/rnappauth/RNAppAuthModule;

    .line 548
    invoke-static {p1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$fgetpromise(Lcom/rnappauth/RNAppAuthModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$6;->this$0:Lcom/rnappauth/RNAppAuthModule;

    const-string v0, "token_exchange_failed"

    .line 549
    invoke-static {p1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$fgetpromise(Lcom/rnappauth/RNAppAuthModule;)Lcom/facebook/react/bridge/Promise;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$mhandleAuthorizationException(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    :cond_1
    :goto_0
    return-void
.end method
