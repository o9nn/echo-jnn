.class final Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->getAvailableItemsByType(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
    value = "SMAP\nRNIapModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,760:1\n1855#2:761\n1855#2,2:762\n1856#2:764\n*S KotlinDebug\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1\n*L\n379#1:761\n383#1:762,2\n379#1:764\n*E\n"
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
.method public static synthetic $r8$lambda$FyFQYkUUcWEmmZ74y29PsgKZs2A(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->invoke$lambda$2(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$type:Ljava/lang/String;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-static {p0, p4, p1}, Lcom/dooboolab/rniap/RNIapModule;->access$isValidResult(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_5

    .line 379
    check-cast p5, Ljava/lang/Iterable;

    .line 761
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/billingclient/api/Purchase;

    .line 380
    new-instance p5, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p5}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 381
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "productId"

    invoke-virtual {p5, v1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 383
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    const-string v2, "getProducts(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 762
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "productIds"

    .line 384
    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p5, v1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string/jumbo v0, "transactionId"

    .line 385
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-string/jumbo v2, "transactionDate"

    invoke-virtual {p5, v2, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v0, "transactionReceipt"

    .line 387
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "orderId"

    .line 388
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    .line 389
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "developerPayloadAndroid"

    .line 390
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "signatureAndroid"

    .line 391
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "purchaseStateAndroid"

    .line 392
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    const-string v0, "isAcknowledgedAndroid"

    .line 393
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "packageNameAndroid"

    .line 394
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v2, "obfuscatedAccountIdAndroid"

    .line 395
    invoke-virtual {p5, v2, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v0, "obfuscatedProfileIdAndroid"

    .line 399
    invoke-virtual {p5, v0, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "subs"

    .line 403
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "autoRenewingAndroid"

    .line 404
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p4

    invoke-virtual {p5, v0, p4}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    :cond_4
    check-cast p5, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p2, p5}, Lcom/facebook/react/bridge/WritableNativeArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    .line 408
    :cond_5
    invoke-static {p1, p2}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 367
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 6

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 373
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$type:Ljava/lang/String;

    const-string v3, "subs"

    .line 375
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "inapp"

    .line 374
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v3, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v4, p0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;->$type:Ljava/lang/String;

    .line 371
    new-instance v5, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1$$ExternalSyntheticLambda0;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/WritableNativeArray;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v5}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method
