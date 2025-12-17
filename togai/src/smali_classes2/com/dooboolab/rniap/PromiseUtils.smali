.class public final Lcom/dooboolab/rniap/PromiseUtils;
.super Ljava/lang/Object;
.source "PromiseUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPromiseUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PromiseUtils.kt\ncom/dooboolab/rniap/PromiseUtils\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,63:1\n372#2,7:64\n1855#3,2:71\n1855#3,2:79\n1855#3,2:81\n76#4:73\n96#4,5:74\n*S KotlinDebug\n*F\n+ 1 PromiseUtils.kt\ncom/dooboolab/rniap/PromiseUtils\n*L\n14#1:64,7\n21#1:71,2\n28#1:79,2\n40#1:81,2\n28#1:73\n28#1:74,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u0019J*\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0018\u0010\"\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dooboolab/rniap/PromiseUtils;",
        "",
        "()V",
        "E_ALREADY_OWNED",
        "",
        "E_ALREADY_PREPARED",
        "E_BILLING_RESPONSE_JSON_PARSE_ERROR",
        "E_CONNECTION_CLOSED",
        "E_DEVELOPER_ERROR",
        "E_ITEM_UNAVAILABLE",
        "E_NETWORK_ERROR",
        "E_NOT_ENDED",
        "E_NOT_PREPARED",
        "E_PENDING",
        "E_REMOTE_ERROR",
        "E_SERVICE_ERROR",
        "E_UNKNOWN",
        "E_USER_CANCELLED",
        "E_USER_ERROR",
        "TAG",
        "promises",
        "Ljava/util/HashMap;",
        "",
        "Lcom/facebook/react/bridge/Promise;",
        "addPromiseForKey",
        "",
        "key",
        "promise",
        "rejectAllPendingPromises",
        "rejectPromisesForKey",
        "code",
        "message",
        "err",
        "Ljava/lang/Exception;",
        "resolvePromisesForKey",
        "value",
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
.field public static final E_ALREADY_OWNED:Ljava/lang/String; = "E_ALREADY_OWNED"

.field public static final E_ALREADY_PREPARED:Ljava/lang/String; = "E_ALREADY_PREPARED"

.field public static final E_BILLING_RESPONSE_JSON_PARSE_ERROR:Ljava/lang/String; = "E_BILLING_RESPONSE_JSON_PARSE_ERROR"

.field public static final E_CONNECTION_CLOSED:Ljava/lang/String; = "E_CONNECTION_CLOSED"

.field public static final E_DEVELOPER_ERROR:Ljava/lang/String; = "E_DEVELOPER_ERROR"

.field public static final E_ITEM_UNAVAILABLE:Ljava/lang/String; = "E_ITEM_UNAVAILABLE"

.field public static final E_NETWORK_ERROR:Ljava/lang/String; = "E_NETWORK_ERROR"

.field public static final E_NOT_ENDED:Ljava/lang/String; = "E_NOT_ENDED"

.field public static final E_NOT_PREPARED:Ljava/lang/String; = "E_NOT_PREPARED"

.field public static final E_PENDING:Ljava/lang/String; = "E_PENDING"

.field public static final E_REMOTE_ERROR:Ljava/lang/String; = "E_REMOTE_ERROR"

.field public static final E_SERVICE_ERROR:Ljava/lang/String; = "E_SERVICE_ERROR"

.field public static final E_UNKNOWN:Ljava/lang/String; = "E_UNKNOWN"

.field public static final E_USER_CANCELLED:Ljava/lang/String; = "E_USER_CANCELLED"

.field public static final E_USER_ERROR:Ljava/lang/String; = "E_USER_ERROR"

.field public static final INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

.field private static final TAG:Ljava/lang/String; = "PromiseUtils"

.field private static final promises:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/Promise;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dooboolab/rniap/PromiseUtils;

    invoke-direct {v0}, Lcom/dooboolab/rniap/PromiseUtils;-><init>()V

    sput-object v0, Lcom/dooboolab/rniap/PromiseUtils;->INSTANCE:Lcom/dooboolab/rniap/PromiseUtils;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPromiseForKey(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 14
    check-cast v0, Ljava/util/Map;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 67
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 14
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final rejectAllPendingPromises()V
    .locals 5

    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 28
    check-cast v0, Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 75
    check-cast v2, Ljava/lang/Iterable;

    .line 76
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 78
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 73
    check-cast v1, Ljava/lang/Iterable;

    .line 79
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Promise;

    const-string v2, "Connection has been closed"

    const/4 v3, 0x0

    const-string v4, "E_CONNECTION_CLOSED"

    .line 29
    invoke-static {v1, v4, v2, v3}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final rejectPromisesForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 81
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Promise;

    .line 41
    move-object v2, p4

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, p2, p3, v2}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeReject(Lcom/facebook/react/bridge/Promise;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resolvePromisesForKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/Promise;

    .line 22
    invoke-static {v1, p2}, Lcom/dooboolab/rniap/PromiseUtlisKt;->safeResolve(Lcom/facebook/react/bridge/Promise;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/dooboolab/rniap/PromiseUtils;->promises:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
