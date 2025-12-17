.class public final Lcom/dooboolab/rniap/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dooboolab/rniap/PlayUtils;",
        "",
        "()V",
        "getBillingResponseData",
        "Lcom/dooboolab/rniap/BillingResponse;",
        "responseCode",
        "",
        "rejectPromiseWithBillingError",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "rejectPromisesWithBillingError",
        "key",
        "",
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
.field public static final INSTANCE:Lcom/dooboolab/rniap/PlayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dooboolab/rniap/PlayUtils;

    invoke-direct {v0}, Lcom/dooboolab/rniap/PlayUtils;-><init>()V

    sput-object v0, Lcom/dooboolab/rniap/PlayUtils;->INSTANCE:Lcom/dooboolab/rniap/PlayUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;
    .locals 4

    const/16 v0, 0xc

    const-string v1, "E_NETWORK_ERROR"

    if-eq p1, v0, :cond_0

    const-string v0, "E_UNKNOWN"

    const-string v2, "E_SERVICE_ERROR"

    packed-switch p1, :pswitch_data_0

    .line 91
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :pswitch_0
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "E_ALREADY_OWNED"

    const-string v2, "You already own this item."

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_1
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v2, "An unknown or unexpected error has occurred. Please try again later."

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_2
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "E_DEVELOPER_ERROR"

    const-string v2, "Google is indicating that we have some issue connecting to payment."

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :pswitch_3
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "E_ITEM_UNAVAILABLE"

    const-string v2, "That item is unavailable."

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_4
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "Billing is unavailable. This may be a problem with your device, or the Play Store may be down."

    invoke-direct {v1, v2, v0}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_5
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "The service is unreachable. This may be your internet connection, or the Play Store may be down."

    invoke-direct {v1, v2, v0}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :pswitch_6
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "E_USER_CANCELLED"

    const-string v2, "Payment is Cancelled."

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_7
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "OK"

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :pswitch_8
    new-instance v0, Lcom/dooboolab/rniap/BillingResponse;

    const-string v2, "The service is disconnected (check your internet connection.)"

    invoke-direct {v0, v1, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 25
    :pswitch_9
    new-instance v1, Lcom/dooboolab/rniap/BillingResponse;

    const-string v0, "This feature is not available on your device."

    invoke-direct {v1, v2, v0}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Lcom/dooboolab/rniap/BillingResponse;

    const-string v2, "You have problem with network connection."

    invoke-direct {v0, v1, v2}, Lcom/dooboolab/rniap/BillingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error Code : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IapPromises"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final rejectPromiseWithBillingError(Lcom/facebook/react/bridge/Promise;I)V
    .locals 1

    const-string v0, "promise"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/dooboolab/rniap/PlayUtils;->getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final rejectPromisesWithBillingError(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/dooboolab/rniap/PlayUtils;->getBillingResponseData(I)Lcom/dooboolab/rniap/BillingResponse;

    move-result-object p2

    .line 106
    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dooboolab/rniap/BillingResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/dooboolab/rniap/PromiseUtils;->rejectPromisesForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
