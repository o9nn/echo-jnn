.class Lcom/rnappauth/RNAppAuthModule$8;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->refreshWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;)V
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

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$8;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 794
    invoke-static {p1}, Lcom/rnappauth/utils/TokenResponseFactory;->tokenResponseToMap(Lnet/openid/appauth/TokenResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 795
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$8;->this$0:Lcom/rnappauth/RNAppAuthModule;

    const-string v0, "token_refresh_failed"

    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule$8;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 797
    invoke-static {p1, v0, p2, v1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$mhandleAuthorizationException(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method
