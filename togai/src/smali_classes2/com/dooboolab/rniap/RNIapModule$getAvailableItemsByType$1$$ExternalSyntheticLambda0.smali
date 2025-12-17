.class public final synthetic Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/dooboolab/rniap/RNIapModule;

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;

.field public final synthetic f$2:Lcom/facebook/react/bridge/WritableNativeArray;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/bridge/WritableNativeArray;

    iput-object p4, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$2:Lcom/facebook/react/bridge/WritableNativeArray;

    iget-object v3, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$r8$lambda$FyFQYkUUcWEmmZ74y29PsgKZs2A(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
