.class final Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->consumeProduct(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
.field final synthetic $params:Lcom/android/billingclient/api/ConsumeParams;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic this$0:Lcom/dooboolab/rniap/RNIapModule;


# direct methods
.method public static synthetic $r8$lambda$sXirHWzjZ91AmP_F9nwvLCClYfY(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->invoke$lambda$0(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/billingclient/api/ConsumeParams;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->$params:Lcom/android/billingclient/api/ConsumeParams;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-static {p0, p2, p1}, Lcom/dooboolab/rniap/RNIapModule;->access$isValidResult(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string v0, "responseCode"

    .line 595
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v0, "debugMessage"

    .line 596
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v0, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/dooboolab/rniap/PlayUtils;->getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;

    move-result-object p2

    const-string v0, "code"

    .line 598
    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message"

    .line 599
    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "purchaseToken"

    .line 600
    invoke-interface {p0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {p1, p0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 586
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 4

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->$params:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 589
    new-instance v3, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1$$ExternalSyntheticLambda0;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {p1, v0, v3}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method
