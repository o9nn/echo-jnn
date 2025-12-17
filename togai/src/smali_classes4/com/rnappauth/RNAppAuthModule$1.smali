.class Lcom/rnappauth/RNAppAuthModule$1;
.super Ljava/lang/Object;
.source "RNAppAuthModule.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationServiceConfiguration$RetrieveConfigurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->prefetchConfiguration(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;ZLcom/facebook/react/bridge/ReadableMap;Ljava/lang/Double;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$issuer:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$issuer:Ljava/lang/String;

    iput-object p4, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchConfigurationCompleted(Lnet/openid/appauth/AuthorizationServiceConfiguration;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "service_configuration_fetch_error"

    const-string v1, "Failed to fetch configuration"

    .line 133
    invoke-interface {p1, v0, v1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iget-object v0, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$issuer:Ljava/lang/String;

    .line 137
    invoke-static {p2, v0, p1}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$msetServiceConfiguration(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;Lnet/openid/appauth/AuthorizationServiceConfiguration;)V

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->this$0:Lcom/rnappauth/RNAppAuthModule;

    const/4 p2, 0x1

    .line 138
    invoke-static {p1, p2}, Lcom/rnappauth/RNAppAuthModule;->-$$Nest$fputisPrefetched(Lcom/rnappauth/RNAppAuthModule;Z)V

    iget-object p1, p0, Lcom/rnappauth/RNAppAuthModule$1;->val$fetchConfigurationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 139
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
