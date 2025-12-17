.class final Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RNIapModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->isFeatureSupported(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
.field final synthetic $feature:Ljava/lang/String;

.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->$feature:Ljava/lang/String;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0, p1}, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->invoke(Lcom/android/billingclient/api/BillingClient;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/BillingClient;)V
    .locals 2

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->$feature:Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "SUBSCRIPTIONS_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "subscriptionsUpdate"

    goto :goto_0

    :sswitch_1
    const-string v1, "PRICE_CHANGE_CONFIRMATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "priceChangeConfirmation"

    goto :goto_0

    :sswitch_2
    const-string v1, "SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "subscriptions"

    goto :goto_0

    :sswitch_3
    const-string v1, "PRODUCT_DETAILS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "fff"

    goto :goto_0

    :sswitch_4
    const-string v1, "IN_APP_MESSAGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "bbb"

    :goto_0
    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void

    :goto_1
    iget-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "Invalid Feature name"

    .line 126
    invoke-static {p1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57b1774 -> :sswitch_4
        0x2d0b3eb2 -> :sswitch_3
        0x3032e2d6 -> :sswitch_2
        0x67b5ec4e -> :sswitch_1
        0x6a698a52 -> :sswitch_0
    .end sparse-switch
.end method
