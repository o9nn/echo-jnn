.class Lcom/rnappauth/RNAppAuthModule$2;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->register(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;ZLcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$additionalParametersMap:Ljava/util/HashMap;

.field final synthetic val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field final synthetic val$grantTypes:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$issuer:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$redirectUris:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$responseTypes:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$subjectType:Ljava/lang/String;

.field final synthetic val$tokenEndpointAuthMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$issuer:Ljava/lang/String;

    iput-object p4, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iput-object p5, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$redirectUris:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p6, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$responseTypes:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p7, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$grantTypes:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p8, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$subjectType:Ljava/lang/String;

    iput-object p9, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$tokenEndpointAuthMethod:Ljava/lang/String;

    iput-object p10, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$additionalParametersMap:Ljava/util/HashMap;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 11

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "service_configuration_fetch_error"

    .line 206
    invoke-virtual {p2}, Lnet/openid/appauth/AuthorizationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$issuer:Ljava/lang/String;

    .line 210
    invoke-static {p2, v0, p1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$msetServiceConfiguration(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    iget-object v1, p0, Lcom/rnappauth/RNAppAuthModule$2;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v3, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$appAuthConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    iget-object v4, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$redirectUris:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v5, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$responseTypes:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v6, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$grantTypes:Lcom/facebook/react/bridge/ReadableArray;

    iget-object v7, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$subjectType:Ljava/lang/String;

    iget-object v8, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$tokenEndpointAuthMethod:Ljava/lang/String;

    iget-object v9, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$additionalParametersMap:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/rnappauth/RNAppAuthModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    move-object v2, p1

    .line 212
    invoke-static/range {v1 .. v10}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$mregisterWithConfiguration(Lcom/rnappauth/RNAppAuthModule;Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AppAuthConfiguration;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
