.class public final Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;
.super Ljava/lang/Object;
.source "RNIapModule.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;->initConnection(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dooboolab/rniap/RNIapModule$initConnection$1$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingServiceDisconnected",
        "",
        "onBillingSetupFinished",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "react-native-iap_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic this$0:Lcom/dooboolab/rniap/RNIapModule;


# direct methods
.method constructor <init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "RNIapModule"

    const-string v1, "Billing service disconnected"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    .line 157
    invoke-static {v0, p1, v1}, Lcom/dooboolab/rniap/RNIapModule;->access$isValidResult(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;->$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x1

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method
