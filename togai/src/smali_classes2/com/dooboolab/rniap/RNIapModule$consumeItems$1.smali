.class final Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->consumeItems(Ljava/util/List;Lcom/facebook/react/bridge/Promise;I)V
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
.field final synthetic $expectedResponseCode:I

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic $purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public static synthetic $r8$lambda$RTWsazrNnwChS8Vvda4Guqpwj4s(ILcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->invoke$lambda$0(ILcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/billingclient/api/Purchase;ILcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$purchase:Lcom/android/billingclient/api/Purchase;

    iput p2, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$expectedResponseCode:I

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(ILcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    const-string p3, "$promise"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "billingResult"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    if-eq p3, p0, :cond_0

    .line 196
    sget-object p0, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    .line 198
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/dooboolab/rniap/PlayUtils;->rejectPromiseWithBillingError(Lcom/facebook/react/bridge/Promise;I)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 203
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 4

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$purchase:Lcom/android/billingclient/api/Purchase;

    .line 191
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$expectedResponseCode:I

    iget-object v2, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 193
    new-instance v3, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;-><init>(ILcom/facebook/react/bridge/Promise;)V

    .line 205
    invoke-virtual {p1, v0, v3}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method
