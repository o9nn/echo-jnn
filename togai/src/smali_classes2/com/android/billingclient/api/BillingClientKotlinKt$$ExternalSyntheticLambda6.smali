.class public final synthetic Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing-ktx@@7.0.0"

# interfaces
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# instance fields
.field public synthetic f$0:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda6;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda6;->f$0:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v0, p1, p2}, Lcom/android/billingclient/api/BillingClientKotlinKt;->$r8$lambda$Jmx2bDJUe-jQbQfqNR-Rv-qVuz0(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
