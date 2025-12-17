.class Lcom/rnappauth/RNAppAuthModule$3;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$additionalParametersMap:Ljava/util/HashMap;

.field final synthetic val$androidTrustedWebActivity:Z

.field final synthetic val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$issuer:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$redirectUrl:Ljava/lang/String;

.field final synthetic val$scopes:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$useNonce:Ljava/lang/Boolean;

.field final synthetic val$usePKCE:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$issuer:Ljava/lang/String;

    iput-object p4, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iput-object p5, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientId:Ljava/lang/String;

    iput-object p6, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p7, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$redirectUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$useNonce:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$usePKCE:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$additionalParametersMap:Ljava/util/HashMap;

    iput-boolean p11, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$androidTrustedWebActivity:Z

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 11

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "service_configuration_fetch_error"

    .line 295
    invoke-virtual {p2}, Lnet/openid/appauth/AuthorizationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$issuer:Ljava/lang/String;

    .line 299
    invoke-static {p2, v0, p1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$msetServiceConfiguration(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    :try_start_0
    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule$3;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v3, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v4, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$scopes:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v6, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$redirectUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$useNonce:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$usePKCE:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$additionalParametersMap:Ljava/util/HashMap;

    iget-boolean p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$androidTrustedWebActivity:Z

    .line 311
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, p1

    .line 302
    invoke-static/range {v1 .. v10}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$mauthorizeWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "authentication_failed"

    .line 315
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "browser_not_found"

    .line 313
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
