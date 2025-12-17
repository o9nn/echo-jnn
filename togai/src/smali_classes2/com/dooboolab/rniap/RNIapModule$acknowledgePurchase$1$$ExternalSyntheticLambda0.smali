.class public final synthetic Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/dooboolab/rniap/RNIapModule;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1$$ExternalSyntheticLambda0;->f$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1$$ExternalSyntheticLambda0;->f$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1;->$r8$lambda$C5H6Jud4mycjvx87RKAz2q3ku4g(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
