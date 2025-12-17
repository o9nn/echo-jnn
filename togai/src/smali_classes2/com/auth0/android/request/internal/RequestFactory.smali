.class public final Lcom/auth0/android/request/internal/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/internal/RequestFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/auth0/android/Auth0Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestFactory.kt\ncom/auth0/android/request/internal/RequestFactory\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,94:1\n125#2:95\n152#2,3:96\n*S KotlinDebug\n*F\n+ 1 RequestFactory.kt\ncom/auth0/android/request/internal/RequestFactory\n*L\n90#1:95\n90#1:96,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \"*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\"B\u001d\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008JV\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00132\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0013J.\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0013J.\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0013J\u001c\u0010\u0019\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0011\u001a\u00020\u000bJ.\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0013J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u0016\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bJF\u0010!\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00132\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0002R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/RequestFactory;",
        "U",
        "Lcom/auth0/android/Auth0Exception;",
        "",
        "client",
        "Lcom/auth0/android/request/NetworkingClient;",
        "errorAdapter",
        "Lcom/auth0/android/request/ErrorAdapter;",
        "(Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/ErrorAdapter;)V",
        "baseHeaders",
        "",
        "",
        "createRequest",
        "Lcom/auth0/android/request/Request;",
        "T",
        "method",
        "Lcom/auth0/android/request/HttpMethod;",
        "url",
        "resultAdapter",
        "Lcom/auth0/android/request/JsonAdapter;",
        "threadSwitcher",
        "Lcom/auth0/android/request/internal/ThreadSwitcher;",
        "delete",
        "get",
        "patch",
        "post",
        "Ljava/lang/Void;",
        "setAuth0ClientInfo",
        "",
        "clientInfo",
        "setHeader",
        "name",
        "value",
        "setupRequest",
        "Companion",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final AUTH0_CLIENT_INFO_HEADER:Ljava/lang/String; = "Auth0-Client"

.field private static final Companion:Lcom/auth0/android/request/internal/RequestFactory$Companion;

.field private static final DEFAULT_LOCALE_IF_MISSING:Ljava/lang/String; = "en_US"


# instance fields
.field private final baseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final client:Lcom/auth0/android/request/NetworkingClient;

.field private final errorAdapter:Lcom/auth0/android/request/ErrorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/internal/RequestFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/internal/RequestFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/internal/RequestFactory;->Companion:Lcom/auth0/android/request/internal/RequestFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/ErrorAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/request/NetworkingClient;",
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;)V"
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/RequestFactory;->client:Lcom/auth0/android/request/NetworkingClient;

    iput-object p2, p0, Lcom/auth0/android/request/internal/RequestFactory;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    const/4 p1, 0x1

    new-array p1, p1, [Lkotlin/Pair;

    .line 27
    new-instance p2, Lkotlin/Pair;

    sget-object v0, Lcom/auth0/android/request/internal/RequestFactory;->Companion:Lcom/auth0/android/request/internal/RequestFactory$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/RequestFactory$Companion;->getDefaultLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-direct {p2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/request/internal/RequestFactory;->baseHeaders:Ljava/util/Map;

    return-void
.end method

.method private final setupRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;)Lcom/auth0/android/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/auth0/android/request/HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;",
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/auth0/android/request/internal/RequestFactory;->client:Lcom/auth0/android/request/NetworkingClient;

    .line 88
    sget-object v0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;->getInstance()Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/auth0/android/request/internal/ThreadSwitcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/auth0/android/request/internal/RequestFactory;->createRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)Lcom/auth0/android/request/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/auth0/android/request/internal/RequestFactory;->baseHeaders:Ljava/util/Map;

    .line 95
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p1, v0, p4}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p4

    .line 97
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    check-cast p3, Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final createRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)Lcom/auth0/android/request/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/auth0/android/request/HttpMethod;",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/NetworkingClient;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;",
            "Lcom/auth0/android/request/ErrorAdapter<",
            "TU;>;",
            "Lcom/auth0/android/request/internal/ThreadSwitcher;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadSwitcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/auth0/android/request/internal/BaseRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/request/internal/BaseRequest;-><init>(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;Lcom/auth0/android/request/internal/ThreadSwitcher;)V

    check-cast v0, Lcom/auth0/android/request/Request;

    return-object v0
.end method

.method public final delete(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/auth0/android/request/HttpMethod$DELETE;->INSTANCE:Lcom/auth0/android/request/HttpMethod$DELETE;

    check-cast v0, Lcom/auth0/android/request/HttpMethod;

    iget-object v1, p0, Lcom/auth0/android/request/internal/RequestFactory;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/auth0/android/request/internal/RequestFactory;->setupRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/auth0/android/request/HttpMethod$GET;->INSTANCE:Lcom/auth0/android/request/HttpMethod$GET;

    check-cast v0, Lcom/auth0/android/request/HttpMethod;

    iget-object v1, p0, Lcom/auth0/android/request/internal/RequestFactory;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/auth0/android/request/internal/RequestFactory;->setupRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final patch(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/auth0/android/request/HttpMethod$PATCH;->INSTANCE:Lcom/auth0/android/request/HttpMethod$PATCH;

    check-cast v0, Lcom/auth0/android/request/HttpMethod;

    iget-object v1, p0, Lcom/auth0/android/request/internal/RequestFactory;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/auth0/android/request/internal/RequestFactory;->setupRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "TU;>;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/auth0/android/request/internal/RequestFactory$post$1;

    invoke-direct {v0}, Lcom/auth0/android/request/internal/RequestFactory$post$1;-><init>()V

    check-cast v0, Lcom/auth0/android/request/JsonAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/request/JsonAdapter<",
            "TT;>;)",
            "Lcom/auth0/android/request/Request<",
            "TT;TU;>;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/auth0/android/request/HttpMethod$POST;->INSTANCE:Lcom/auth0/android/request/HttpMethod$POST;

    check-cast v0, Lcom/auth0/android/request/HttpMethod;

    iget-object v1, p0, Lcom/auth0/android/request/internal/RequestFactory;->errorAdapter:Lcom/auth0/android/request/ErrorAdapter;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/auth0/android/request/internal/RequestFactory;->setupRequest(Lcom/auth0/android/request/HttpMethod;Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;Lcom/auth0/android/request/ErrorAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final setAuth0ClientInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clientInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/RequestFactory;->baseHeaders:Ljava/util/Map;

    const-string v1, "Auth0-Client"

    .line 61
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/RequestFactory;->baseHeaders:Ljava/util/Map;

    .line 57
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
