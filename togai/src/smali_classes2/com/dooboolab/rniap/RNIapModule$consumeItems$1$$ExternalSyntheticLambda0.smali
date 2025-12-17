.class public final synthetic Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(ILcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1, p2}, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;->$r8$lambda$RTWsazrNnwChS8Vvda4Guqpwj4s(ILcom/facebook/react/bridge/Promise;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
