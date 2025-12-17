.class public final Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;
.super Ljava/lang/Object;
.source "RNIapModule.kt"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dooboolab/rniap/RNIapModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/android/billingclient/api/BillingClient$Builder;Lcom/google/android/gms/common/GoogleApiAvailability;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dooboolab/rniap/RNIapModule$lifecycleEventListener$1",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "onHostDestroy",
        "",
        "onHostPause",
        "onHostResume",
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
.field final synthetic this$0:Lcom/dooboolab/rniap/RNIapModule;


# direct methods
.method constructor <init>(Lcom/dooboolab/rniap/RNIapModule;)V
    .locals 0

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    .line 753
    invoke-static {v0}, Lcom/dooboolab/rniap/RNIapModule;->access$getBillingClientCache$p(Lcom/dooboolab/rniap/RNIapModule;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;->this$0:Lcom/dooboolab/rniap/RNIapModule;

    const/4 v1, 0x0

    .line 754
    invoke-static {v0, v1}, Lcom/dooboolab/rniap/RNIapModule;->access$setBillingClientCache$p(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingClient;)V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method
