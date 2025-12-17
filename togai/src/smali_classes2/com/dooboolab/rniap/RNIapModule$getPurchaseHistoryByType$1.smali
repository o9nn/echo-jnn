.class final Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->getPurchaseHistoryByType(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/billingclient/api/BillingClient;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNIapModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,760:1\n1855#2:761\n1855#2,2:762\n1856#2:764\n*S KotlinDebug\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1\n*L\n433#1:761\n437#1:762,2\n433#1:764\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "billingClient",
        "Lcom/android/billingclient/api/BillingClient;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic $type:Ljava/lang/String;

.field final synthetic this$0:Lcom/dooboolab/rniap/RNIapModule;


# direct methods
.method public static synthetic $r8$lambda$awbqhSw1Vd59_r-K7nLdvIBQY5c(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->invoke$lambda$2(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->$type:Ljava/lang/String;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-static {p0, p2, p1}, Lcom/dooboolab/rniap/RNIapModule;->access$isValidResult(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "RNIapModule"

    .line 431
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    if-eqz p3, :cond_3

    .line 433
    check-cast p3, Ljava/lang/Iterable;

    .line 761
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 434
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 435
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getProducts()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "productId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 437
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getProducts()Ljava/util/List;

    move-result-object v2

    const-string v3, "getProducts(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 762
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 437
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "productIds"

    .line 438
    check-cast v1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 439
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-string/jumbo v3, "transactionDate"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "transactionReceipt"

    .line 440
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "purchaseToken"

    .line 441
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataAndroid"

    .line 442
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signatureAndroid"

    .line 443
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    const-string v1, "developerPayload"

    invoke-interface {v0, v1, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    .line 447
    :cond_3
    invoke-static {p1, p0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 4

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->$type:Ljava/lang/String;

    const-string v2, "subs"

    .line 425
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "inapp"

    .line 424
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v0

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 421
    new-instance v3, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1$$ExternalSyntheticLambda0;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method
