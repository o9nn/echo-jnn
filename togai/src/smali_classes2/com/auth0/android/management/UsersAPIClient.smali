.class public final Lcom/auth0/android/management/UsersAPIClient;
.super Ljava/lang/Object;
.source "UsersAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/management/UsersAPIClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B%\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\t0\u00132\u0006\u0010\u0015\u001a\u00020\u0005J(\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0004\u0012\u00020\t0\u00132\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J0\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0004\u0012\u00020\t0\u00132\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005J0\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\t0\u00132\u0006\u0010\u0015\u001a\u00020\u00052\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/auth0/android/management/UsersAPIClient;",
        "",
        "auth0",
        "Lcom/auth0/android/Auth0;",
        "token",
        "",
        "(Lcom/auth0/android/Auth0;Ljava/lang/String;)V",
        "factory",
        "Lcom/auth0/android/request/internal/RequestFactory;",
        "Lcom/auth0/android/management/ManagementException;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V",
        "baseURL",
        "getBaseURL",
        "()Ljava/lang/String;",
        "clientId",
        "getClientId",
        "getProfile",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/UserProfile;",
        "userId",
        "link",
        "",
        "Lcom/auth0/android/result/UserIdentity;",
        "primaryUserId",
        "secondaryToken",
        "unlink",
        "secondaryUserId",
        "secondaryProvider",
        "updateMetadata",
        "userMetadata",
        "",
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
.field private static final API_PATH:Ljava/lang/String; = "api"

.field private static final Companion:Lcom/auth0/android/management/UsersAPIClient$Companion;

.field private static final IDENTITIES_PATH:Ljava/lang/String; = "identities"

.field private static final LINK_WITH_KEY:Ljava/lang/String; = "link_with"

.field private static final USERS_PATH:Ljava/lang/String; = "users"

.field private static final USER_METADATA_KEY:Ljava/lang/String; = "user_metadata"

.field private static final V2_PATH:Ljava/lang/String; = "v2"


# instance fields
.field private final auth0:Lcom/auth0/android/Auth0;

.field private final factory:Lcom/auth0/android/request/internal/RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/internal/RequestFactory<",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/management/UsersAPIClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/management/UsersAPIClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/management/UsersAPIClient;->Companion:Lcom/auth0/android/management/UsersAPIClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/Auth0;",
            "Lcom/auth0/android/request/internal/RequestFactory<",
            "Lcom/auth0/android/management/ManagementException;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    const-string v0, "auth0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    iput-object p2, p0, Lcom/auth0/android/management/UsersAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    iput-object p3, p0, Lcom/auth0/android/management/UsersAPIClient;->gson:Lcom/google/gson/Gson;

    .line 241
    invoke-virtual {p1}, Lcom/auth0/android/Auth0;->getAuth0UserAgent()Lcom/auth0/android/util/Auth0UserAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/auth0/android/util/Auth0UserAgent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/auth0/android/request/internal/RequestFactory;->setAuth0ClientInfo(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;Ljava/lang/String;)V
    .locals 2

    const-string v0, "auth0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/auth0/android/management/UsersAPIClient;->Companion:Lcom/auth0/android/management/UsersAPIClient$Companion;

    .line 49
    invoke-virtual {p1}, Lcom/auth0/android/Auth0;->getNetworkingClient()Lcom/auth0/android/request/NetworkingClient;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/auth0/android/management/UsersAPIClient$Companion;->access$factoryForToken(Lcom/auth0/android/management/UsersAPIClient$Companion;Ljava/lang/String;Lcom/auth0/android/request/NetworkingClient;)Lcom/auth0/android/request/internal/RequestFactory;

    move-result-object p2

    .line 50
    sget-object v0, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/auth0/android/management/UsersAPIClient;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public final getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    .line 56
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    .line 54
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProfile(Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 182
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "v2"

    .line 183
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "users"

    .line 184
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 187
    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v1, Lcom/auth0/android/result/UserProfile;

    iget-object v2, p0, Lcom/auth0/android/management/UsersAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast v0, Lcom/auth0/android/request/JsonAdapter;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 190
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/auth0/android/request/internal/RequestFactory;->get(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final link(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/util/List<",
            "Lcom/auth0/android/result/UserIdentity;",
            ">;",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    const-string v0, "primaryUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "v2"

    .line 79
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "users"

    .line 80
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string v0, "identities"

    .line 82
    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 84
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "link_with"

    .line 85
    invoke-virtual {v0, v1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p2

    .line 87
    sget-object v0, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    const-class v1, Lcom/auth0/android/result/UserIdentity;

    iget-object v2, p0, Lcom/auth0/android/management/UsersAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, v2}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forListOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object v0

    check-cast v0, Lcom/auth0/android/request/JsonAdapter;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 90
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    .line 91
    invoke-interface {p1, p2}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final unlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/util/List<",
            "Lcom/auth0/android/result/UserIdentity;",
            ">;",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    const-string v0, "primaryUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 116
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "v2"

    .line 117
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "users"

    .line 118
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string v0, "identities"

    .line 120
    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 124
    sget-object p2, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    const-class p3, Lcom/auth0/android/result/UserIdentity;

    iget-object v0, p0, Lcom/auth0/android/management/UsersAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p3, v0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forListOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object p2

    check-cast p2, Lcom/auth0/android/request/JsonAdapter;

    iget-object p3, p0, Lcom/auth0/android/management/UsersAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 127
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/auth0/android/request/internal/RequestFactory;->delete(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final updateMetadata(Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/management/ManagementException;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userMetadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 150
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "v2"

    .line 151
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "users"

    .line 152
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 155
    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v1, Lcom/auth0/android/result/UserProfile;

    iget-object v2, p0, Lcom/auth0/android/management/UsersAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast v0, Lcom/auth0/android/request/JsonAdapter;

    iget-object v1, p0, Lcom/auth0/android/management/UsersAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 159
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {v1, p1, v0}, Lcom/auth0/android/request/internal/RequestFactory;->patch(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.auth0.android.request.internal.BaseRequest<com.auth0.android.result.UserProfile, com.auth0.android.management.ManagementException>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/auth0/android/request/internal/BaseRequest;

    const-string/jumbo v0, "user_metadata"

    .line 162
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/request/internal/BaseRequest;->addParameter$auth0_release(Ljava/lang/String;Ljava/lang/Object;)Lcom/auth0/android/request/Request;

    .line 163
    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method
