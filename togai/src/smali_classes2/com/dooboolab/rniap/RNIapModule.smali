.class public final Lcom/dooboolab/rniap/RNIapModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNIapModule.kt"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNIapModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dooboolab/rniap/RNIapModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNIapModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,760:1\n1855#2:761\n1855#2,2:762\n1856#2:764\n*S KotlinDebug\n*F\n+ 1 RNIapModule.kt\ncom/dooboolab/rniap/RNIapModule\n*L\n624#1:761\n628#1:762,2\n624#1:764\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 H2\u00020\u00012\u00020\u0002:\u0001HB!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000eH\u0007JV\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010 \u001a\u0004\u0018\u00010\u000e2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J(\u0010$\u001a\u00020\u00112\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010(\u001a\u00020\u001eH\u0002J\"\u0010)\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J1\u0010+\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152!\u0010,\u001a\u001d\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u00020\u00110-J\u0010\u00101\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u00102\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J \u00103\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0008\u00104\u001a\u00020\u000eH\u0016J\u0010\u00105\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u00106\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u00107\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u00108\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010;\u001a\u00020#2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J \u0010>\u001a\u00020\u00112\u0006\u0010<\u001a\u00020=2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&H\u0016J\u0010\u0010?\u001a\u00020\u00112\u0006\u0010@\u001a\u00020AH\u0007J\"\u0010B\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020C2\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0002J\u0010\u0010F\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010G\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/dooboolab/rniap/RNIapModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "builder",
        "Lcom/android/billingclient/api/BillingClient$Builder;",
        "googleApiAvailability",
        "Lcom/google/android/gms/common/GoogleApiAvailability;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/android/billingclient/api/BillingClient$Builder;Lcom/google/android/gms/common/GoogleApiAvailability;)V",
        "billingClientCache",
        "Lcom/android/billingclient/api/BillingClient;",
        "skus",
        "",
        "",
        "Lcom/android/billingclient/api/ProductDetails;",
        "acknowledgePurchase",
        "",
        "token",
        "developerPayLoad",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "addListener",
        "eventName",
        "buyItemByType",
        "type",
        "skuArr",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "purchaseToken",
        "replacementMode",
        "",
        "obfuscatedAccountId",
        "obfuscatedProfileId",
        "offerTokenArr",
        "isOfferPersonalized",
        "",
        "consumeItems",
        "purchases",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "expectedResponseCode",
        "consumeProduct",
        "endConnection",
        "ensureConnection",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "billingClient",
        "flushFailedPurchasesCachedAsPending",
        "getAvailableItemsByType",
        "getItemsByType",
        "getName",
        "getPackageName",
        "getPurchaseHistoryByType",
        "getStorefront",
        "initConnection",
        "isFeatureSupported",
        "feature",
        "isValidResult",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "onPurchasesUpdated",
        "removeListeners",
        "count",
        "",
        "sendEvent",
        "Lcom/facebook/react/bridge/ReactContext;",
        "params",
        "Lcom/facebook/react/bridge/WritableMap;",
        "sendUnconsumedPurchases",
        "startListening",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/dooboolab/rniap/RNIapModule$Companion;

.field private static final PROMISE_BUY_ITEM:Ljava/lang/String; = "PROMISE_BUY_ITEM"

.field public static final TAG:Ljava/lang/String; = "RNIapModule"


# instance fields
.field private billingClientCache:Lcom/android/billingclient/api/BillingClient;

.field private final builder:Lcom/android/billingclient/api/BillingClient$Builder;

.field private final googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final skus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4b0T32j9CJfoXiEK5zEVNaIk1Us(Lcom/dooboolab/rniap/RNIapModule;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection$lambda$0(Lcom/dooboolab/rniap/RNIapModule;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWYDIoi_OiYVgixgLl_lZEiyXLw(Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection$lambda$1(Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dooboolab/rniap/RNIapModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dooboolab/rniap/RNIapModule;->Companion:Lcom/dooboolab/rniap/RNIapModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/android/billingclient/api/BillingClient$Builder;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleApiAvailability"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule;->builder:Lcom/android/billingclient/api/BillingClient$Builder;

    iput-object p3, p0, Lcom/dooboolab/rniap/RNIapModule;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 50
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/dooboolab/rniap/RNIapModule;->skus:Ljava/util/Map;

    .line 747
    new-instance p2, Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;

    invoke-direct {p2, p0}, Lcom/dooboolab/rniap/RNIapModule$lifecycleEventListener$1;-><init>(Lcom/dooboolab/rniap/RNIapModule;)V

    check-cast p2, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 757
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/android/billingclient/api/BillingClient$Builder;Lcom/google/android/gms/common/GoogleApiAvailability;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 45
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p2

    const-string p5, "enablePendingPurchases(...)"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 46
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p3

    const-string p4, "getInstance(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/android/billingclient/api/BillingClient$Builder;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method public static final synthetic access$consumeItems(Lcom/dooboolab/rniap/RNIapModule;Ljava/util/List;Lcom/facebook/react/bridge/Promise;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule;->consumeItems(Ljava/util/List;Lcom/facebook/react/bridge/Promise;I)V

    return-void
.end method

.method public static final synthetic access$getBillingClientCache$p(Lcom/dooboolab/rniap/RNIapModule;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static final synthetic access$getReactContext$p(Lcom/dooboolab/rniap/RNIapModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method public static final synthetic access$getSkus$p(Lcom/dooboolab/rniap/RNIapModule;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/dooboolab/rniap/RNIapModule;->skus:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isValidResult(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dooboolab/rniap/RNIapModule;->isValidResult(Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sendEvent(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public static final synthetic access$setBillingClientCache$p(Lcom/dooboolab/rniap/RNIapModule;Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method private final consumeItems(Ljava/util/List;Lcom/facebook/react/bridge/Promise;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lcom/facebook/react/bridge/Promise;",
            "I)V"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 185
    new-instance v1, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;

    invoke-direct {v1, v0, p3, p2}, Lcom/dooboolab/rniap/RNIapModule$consumeItems$1;-><init>(Lcom/android/billingclient/api/Purchase;ILcom/facebook/react/bridge/Promise;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p2, v1}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic consumeItems$default(Lcom/dooboolab/rniap/RNIapModule;Ljava/util/List;Lcom/facebook/react/bridge/Promise;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dooboolab/rniap/RNIapModule;->consumeItems(Ljava/util/List;Lcom/facebook/react/bridge/Promise;I)V

    return-void
.end method

.method private static final ensureConnection$lambda$0(Lcom/dooboolab/rniap/RNIapModule;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    aget-object p3, p3, v1

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 67
    iget-object p0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p3

    if-ne p3, v2, :cond_1

    .line 69
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "E_NOT_PREPARED"

    const-string p1, "Unable to auto-initialize connection"

    .line 71
    invoke-static {p2, p0, p1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "E_UNKNOWN"

    const-string p1, "ensureConnection - incorrect parameter in resolve"

    .line 74
    invoke-static {p2, p0, p1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "RNIapModule"

    const-string p1, "Incorrect parameter in resolve"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static final ensureConnection$lambda$1(Lcom/facebook/react/bridge/Promise;[Ljava/lang/Object;)V
    .locals 4

    const-string v0, "$promise"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget-object v0, p1, v1

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 83
    aget-object p1, p1, v2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 84
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    aget-object p1, p1, v1

    instance-of v0, p1, Lcom/facebook/react/bridge/WritableNativeMap;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type com.facebook.react.bridge.WritableNativeMap"

    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/WritableNativeMap;

    const-string v0, "code"

    .line 86
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 87
    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object p1, v0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 91
    invoke-static {p0, v0, p1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "E_UNKNOWN"

    const-string v0, "ensureConnection - incorrect parameter in reject"

    .line 96
    invoke-static {p0, p1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "RNIapModule"

    const-string p1, "Incorrect parameters in reject"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private final isValidResult(Lcom/android/billingclient/api/BillingResult;Lcom/facebook/react/bridge/Promise;)Z
    .locals 3

    .line 354
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNIapModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/dooboolab/rniap/PlayUtils;->rejectPromiseWithBillingError(Lcom/facebook/react/bridge/Promise;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private final sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 735
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 736
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 737
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final sendUnconsumedPurchases(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 671
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$sendUnconsumedPurchases$1;

    invoke-direct {v0, p1, p0}, Lcom/dooboolab/rniap/RNIapModule$sendUnconsumedPurchases$1;-><init>(Lcom/facebook/react/bridge/Promise;Lcom/dooboolab/rniap/RNIapModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo p2, "token"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "promise"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    new-instance p2, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1;

    invoke-direct {p2, p1, p0, p3}, Lcom/dooboolab/rniap/RNIapModule$acknowledgePurchase$1;-><init>(Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p3, p2}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final buyItemByType(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 14
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v12, p9

    const-string/jumbo v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuArr"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerTokenArr"

    move-object/from16 v4, p7

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/dooboolab/rniap/RNIapModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v0, "E_UNKNOWN"

    const-string v1, "getCurrentActivity returned null"

    .line 466
    invoke-static {v12, v0, v1}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 469
    :cond_0
    new-instance v13, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;

    move-object v0, v13

    move-object/from16 v1, p9

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object v5, p0

    move/from16 v6, p8

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/dooboolab/rniap/RNIapModule$buyItemByType$1;-><init>(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/dooboolab/rniap/RNIapModule;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    move-object v0, p0

    invoke-virtual {p0, v12, v13}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final consumeProduct(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo p2, "token"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "promise"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    new-instance p2, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;

    invoke-direct {p2, p1, p0, p3}, Lcom/dooboolab/rniap/RNIapModule$consumeProduct$1;-><init>(Lcom/android/billingclient/api/ConsumeParams;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p3, p2}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final endConnection(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->skus:Ljava/util/Map;

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    invoke-virtual {v0}, Lcom/dooboolab/rniap/PromiseUtils;->rejectAllPendingPromises()V

    const/4 v0, 0x1

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void
.end method

.method public final ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/Promise;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/BillingClient;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 60
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/PromiseImpl;

    .line 63
    new-instance v1, Lcom/dooboolab/rniap/RNIapModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/dooboolab/rniap/RNIapModule$$ExternalSyntheticLambda0;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/bridge/Promise;)V

    new-instance p2, Lcom/dooboolab/rniap/RNIapModule$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/dooboolab/rniap/RNIapModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    .line 64
    invoke-direct {v0, v1, p2}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    .line 101
    check-cast v0, Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p0, v0}, Lcom/dooboolab/rniap/RNIapModule;->initConnection(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public final flushFailedPurchasesCachedAsPending(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$flushFailedPurchasesCachedAsPending$1;

    invoke-direct {v0, p0, p1}, Lcom/dooboolab/rniap/RNIapModule$flushFailedPurchasesCachedAsPending$1;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getAvailableItemsByType(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/dooboolab/rniap/RNIapModule$getAvailableItemsByType$1;-><init>(Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p2, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getItemsByType(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuArr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$getItemsByType$1;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/dooboolab/rniap/RNIapModule$getItemsByType$1;-><init>(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p3, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNIapModule"

    return-object v0
.end method

.method public final getPackageName(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/dooboolab/rniap/RNIapModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public final getPurchaseHistoryByType(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/dooboolab/rniap/RNIapModule$getPurchaseHistoryByType$1;-><init>(Ljava/lang/String;Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p2, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getStorefront(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$getStorefront$1;

    invoke-direct {v0, p1}, Lcom/dooboolab/rniap/RNIapModule$getStorefront$1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final initConnection(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 136
    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const-string v1, "RNIapModule"

    if-eqz v0, :cond_0

    const-string v0, "Google Play Services are not available on this device"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "E_NOT_PREPARED"

    .line 140
    invoke-static {p1, v1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Already initialized, you should only call initConnection() once when your app starts"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->builder:Lcom/android/billingclient/api/BillingClient$Builder;

    .line 152
    move-object v1, p0

    check-cast v1, Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dooboolab/rniap/RNIapModule;->billingClientCache:Lcom/android/billingclient/api/BillingClient;

    .line 155
    new-instance v1, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;

    invoke-direct {v1, p0, p1}, Lcom/dooboolab/rniap/RNIapModule$initConnection$1$1;-><init>(Lcom/dooboolab/rniap/RNIapModule;Lcom/facebook/react/bridge/Promise;)V

    check-cast v1, Lcom/android/billingclient/api/BillingClientStateListener;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public final isFeatureSupported(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;

    invoke-direct {v0, p1, p2}, Lcom/dooboolab/rniap/RNIapModule$isFeatureSupported$1;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p2, v0}, Lcom/dooboolab/rniap/RNIapModule;->ensureConnection(Lcom/facebook/react/bridge/Promise;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "debugMessage"

    const-string v2, "responseCode"

    const-string v3, "PROMISE_BUY_ITEM"

    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 613
    invoke-interface {p2, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 614
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object p1, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    invoke-virtual {p1, v0}, Lcom/dooboolab/rniap/PlayUtils;->getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;

    move-result-object p1

    const-string v1, "code"

    .line 616
    invoke-virtual {p1}, Lcom/dooboolab/rniap/BillingResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    .line 617
    invoke-virtual {p1}, Lcom/dooboolab/rniap/BillingResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 618
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "purchase-error"

    invoke-direct {p0, p1, v1, p2}, Lcom/dooboolab/rniap/RNIapModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 619
    sget-object p1, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    invoke-virtual {p1, v3, v0}, Lcom/dooboolab/rniap/PlayUtils;->rejectPromisesWithBillingError(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "purchase-updated"

    if-eqz p2, :cond_4

    .line 623
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    const-string v1, "createArray(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    check-cast p2, Ljava/lang/Iterable;

    .line 761
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 625
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 626
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "productId"

    invoke-interface {v2, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 628
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    const-string v6, "getProducts(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    .line 762
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 628
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "productIds"

    .line 629
    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string/jumbo v4, "transactionId"

    .line 630
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v4

    long-to-double v4, v4

    const-string/jumbo v6, "transactionDate"

    invoke-interface {v2, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v4, "transactionReceipt"

    .line 632
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "purchaseToken"

    .line 633
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dataAndroid"

    .line 634
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "signatureAndroid"

    .line 635
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "autoRenewingAndroid"

    .line 636
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "isAcknowledgedAndroid"

    .line 637
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "purchaseStateAndroid"

    .line 638
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "packageNameAndroid"

    .line 639
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "developerPayloadAndroid"

    .line 640
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "obfuscatedAccountIdAndroid"

    .line 645
    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v5

    .line 643
    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "obfuscatedProfileIdAndroid"

    .line 649
    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-interface {v2, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_2
    invoke-interface {v2}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v1, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 653
    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0, v1, v0, v2}, Lcom/dooboolab/rniap/RNIapModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_0

    .line 655
    :cond_3
    sget-object p2, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    invoke-virtual {p2, v3, p1}, Lcom/dooboolab/rniap/PromiseUtils;->resolvePromisesForKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 657
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 658
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-interface {p2, v2, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 659
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extraMessage"

    const-string v1, "The purchases are null. This is a normal behavior if you have requested DEFERRED proration. If not please report an issue."

    .line 660
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dooboolab/rniap/RNIapModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 665
    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0, p1, v0, p2}, Lcom/dooboolab/rniap/RNIapModule;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 666
    sget-object p1, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    const/4 p2, 0x0

    invoke-virtual {p1, v3, p2}, Lcom/dooboolab/rniap/PromiseUtils;->resolvePromisesForKey(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final removeListeners(D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public final startListening(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/dooboolab/rniap/RNIapModule;->sendUnconsumedPurchases(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
