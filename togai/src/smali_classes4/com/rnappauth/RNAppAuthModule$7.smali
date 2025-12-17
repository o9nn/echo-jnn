.class Lcom/rnappauth/RNAppAuthModule$7;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationService$RegistrationResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->registerWithConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V
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

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$7;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationRequestCompleted(Lnet/openid/appauth/RegistrationResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 638
    invoke-static {p1}, Lcom/rnappauth/utils/RegistrationResponseFactory;->registrationResponseToMap(Lnet/openid/appauth/RegistrationResponse;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 639
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$7;->this$0:Lcom/rnappauth/RNAppAuthModule;

    const-string v0, "registration_failed"

    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule$7;->val$promise:Lcom/facebook/react/bridge/Promise;

    .line 641
    invoke-static {p1, v0, p2, v1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$mhandleAuthorizationException(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationException;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method
