.class final Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->buyItemByType(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
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
    value = "SMAP\nRNIapModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$buyItemByType$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,760:1\n1549#2:761\n1620#2,3:762\n1559#2:765\n1590#2,4:766\n*S KotlinDebug\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule$buyItemByType$1\n*L\n488#1:761\n488#1:762,3\n488#1:765\n488#1:766,4\n*E\n"
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $isOfferPersonalized:Z

.field final synthetic $obfuscatedAccountId:Ljava/lang/String;

.field final synthetic $obfuscatedProfileId:Ljava/lang/String;

.field final synthetic $offerTokenArr:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic $purchaseToken:Ljava/lang/String;

.field final synthetic $replacementMode:I

.field final synthetic $skuArr:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic $type:Ljava/lang/String;

.field final synthetic this$0:Lcom/dooboolab/rniap/RNIapModule;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/dooboolab/rniap/RNIapModule;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$skuArr:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p4, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$offerTokenArr:Lcom/facebook/react/bridge/ReadableArray;

    iput-object p5, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-boolean p6, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$isOfferPersonalized:Z

    iput-object p7, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$purchaseToken:Ljava/lang/String;

    iput p8, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$replacementMode:I

    iput-object p9, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$obfuscatedAccountId:Ljava/lang/String;

    iput-object p10, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$obfuscatedProfileId:Ljava/lang/String;

    iput-object p11, p0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 469
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "billingClient"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    sget-object v2, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    iget-object v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const-string v4, "PROMISE_BUY_ITEM"

    invoke-virtual {v2, v4, v3}, Lcom/dooboolab/rniap/PromiseUtils;->addPromiseForKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$type:Ljava/lang/String;

    const-string v3, "subs"

    .line 476
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "purchase-error"

    const-string v6, "message"

    const-string v7, "code"

    const-string v8, "debugMessage"

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$skuArr:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    iget-object v9, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$offerTokenArr:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-eq v2, v9, :cond_0

    iget-object v1, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$skuArr:Lcom/facebook/react/bridge/ReadableArray;

    .line 478
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$offerTokenArr:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "The number of skus ("

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") must match: the number of offerTokens ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for Subscriptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 480
    invoke-interface {v2, v8, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-interface {v2, v7, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-interface {v2, v6, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    .line 483
    invoke-static {v3}, Lcom/dooboolab/rniap/RNIapModule;->access$getReactContext$p(Lcom/dooboolab/rniap/RNIapModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v3, v6, v5, v2}, Lcom/dooboolab/rniap/RNIapModule;->access$sendEvent(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 484
    invoke-static {v2, v4, v1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$skuArr:Lcom/facebook/react/bridge/ReadableArray;

    .line 488
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v9, "toArrayList(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 761
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 762
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 488
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 763
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 764
    :cond_1
    check-cast v9, Ljava/util/List;

    .line 761
    check-cast v9, Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v11, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v12, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$type:Ljava/lang/String;

    iget-object v13, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$offerTokenArr:Lcom/facebook/react/bridge/ReadableArray;

    .line 765
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 767
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    if-gez v15, :cond_2

    .line 768
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v9

    .line 489
    invoke-static {v2}, Lcom/dooboolab/rniap/RNIapModule;->access$getSkus$p(Lcom/dooboolab/rniap/RNIapModule;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/billingclient/api/ProductDetails;

    if-nez v9, :cond_3

    .line 493
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v3, "The sku was not found. Please fetch products first by calling getItems"

    .line 494
    invoke-interface {v1, v8, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-interface {v1, v7, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-interface {v1, v6, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "productId"

    .line 497
    invoke-interface {v1, v6, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {v2}, Lcom/dooboolab/rniap/RNIapModule;->access$getReactContext$p(Lcom/dooboolab/rniap/RNIapModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v2, v6, v5, v1}, Lcom/dooboolab/rniap/RNIapModule;->access$sendEvent(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 499
    invoke-static {v11, v4, v3}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 502
    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v9

    const-string v10, "setProductDetails(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 504
    invoke-interface {v13, v15}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 505
    invoke-virtual {v9, v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v9

    const-string v10, "setOfferToken(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    :cond_4
    invoke-virtual {v9}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v9

    .line 768
    invoke-interface {v14, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v16

    move/from16 v15, v17

    goto :goto_1

    .line 769
    :cond_5
    check-cast v14, Ljava/util/List;

    .line 510
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    const-string v4, "newBuilder(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v2, v14}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$isOfferPersonalized:Z

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 513
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$purchaseToken:Ljava/lang/String;

    const-string v6, "build(...)"

    if-eqz v4, :cond_8

    .line 515
    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    iget-object v4, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$type:Ljava/lang/String;

    .line 517
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$replacementMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move v10, v4

    .line 527
    :goto_2
    invoke-virtual {v5, v10}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setSubscriptionReplacementMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 529
    :cond_7
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    :cond_8
    iget-object v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$obfuscatedAccountId:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 533
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    :cond_9
    iget-object v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$obfuscatedProfileId:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 536
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 539
    :cond_a
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$activity:Landroid/app/Activity;

    .line 540
    invoke-virtual {v1, v3, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_b

    .line 542
    sget-object v2, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    invoke-virtual {v2, v1}, Lcom/dooboolab/rniap/PlayUtils;->getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;

    move-result-object v1

    iget-object v2, v0, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 543
    invoke-virtual {v1}, Lcom/dooboolab/rniap/BillingResponse;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dooboolab/rniap/BillingResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
