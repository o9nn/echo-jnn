.class public Lcom/auth0/android/Auth0;
.super Ljava/lang/Object;
.source "Auth0.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/Auth0$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuth0.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Auth0.kt\ncom/auth0/android/Auth0\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 #2\u00020\u0001:\u0001#B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B#\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\tJ\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00152\u0008\u0010 \u001a\u0004\u0018\u00010\u0006H\u0002J\u0006\u0010!\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0006R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/auth0/android/Auth0;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "clientId",
        "",
        "domain",
        "configurationDomain",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "auth0UserAgent",
        "Lcom/auth0/android/util/Auth0UserAgent;",
        "getAuth0UserAgent",
        "()Lcom/auth0/android/util/Auth0UserAgent;",
        "setAuth0UserAgent",
        "(Lcom/auth0/android/util/Auth0UserAgent;)V",
        "authorizeUrl",
        "getAuthorizeUrl",
        "()Ljava/lang/String;",
        "getClientId",
        "configurationUrl",
        "Lokhttp3/HttpUrl;",
        "domainUrl",
        "logoutUrl",
        "getLogoutUrl",
        "networkingClient",
        "Lcom/auth0/android/request/NetworkingClient;",
        "getNetworkingClient",
        "()Lcom/auth0/android/request/NetworkingClient;",
        "setNetworkingClient",
        "(Lcom/auth0/android/request/NetworkingClient;)V",
        "ensureValidUrl",
        "url",
        "getConfigurationUrl",
        "getDomainUrl",
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
.field private static final Companion:Lcom/auth0/android/Auth0$Companion;


# instance fields
.field private auth0UserAgent:Lcom/auth0/android/util/Auth0UserAgent;

.field private final clientId:Ljava/lang/String;

.field private final configurationUrl:Lokhttp3/HttpUrl;

.field private final domainUrl:Lokhttp3/HttpUrl;

.field private networkingClient:Lcom/auth0/android/request/NetworkingClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/Auth0$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/Auth0$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/Auth0;->Companion:Lcom/auth0/android/Auth0$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/auth0/android/Auth0;->Companion:Lcom/auth0/android/Auth0$Companion;

    const-string v1, "com_auth0_client_id"

    .line 53
    invoke-static {v0, p1, v1}, Lcom/auth0/android/Auth0$Companion;->access$getResourceFromContext(Lcom/auth0/android/Auth0$Companion;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "com_auth0_domain"

    .line 54
    invoke-static {v0, p1, v1}, Lcom/auth0/android/Auth0$Companion;->access$getResourceFromContext(Lcom/auth0/android/Auth0$Companion;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/auth0/android/Auth0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/auth0/android/Auth0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/Auth0;->clientId:Ljava/lang/String;

    .line 43
    new-instance p1, Lcom/auth0/android/request/DefaultClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/request/DefaultClient;-><init>(IILjava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/auth0/android/request/NetworkingClient;

    iput-object p1, p0, Lcom/auth0/android/Auth0;->networkingClient:Lcom/auth0/android/request/NetworkingClient;

    .line 119
    invoke-direct {p0, p2}, Lcom/auth0/android/Auth0;->ensureValidUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/Auth0;->domainUrl:Lokhttp3/HttpUrl;

    if-eqz p1, :cond_1

    .line 121
    invoke-direct {p0, p3}, Lcom/auth0/android/Auth0;->ensureValidUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/auth0/android/Auth0;->configurationUrl:Lokhttp3/HttpUrl;

    .line 122
    new-instance p1, Lcom/auth0/android/util/Auth0UserAgent;

    invoke-direct {p1}, Lcom/auth0/android/util/Auth0UserAgent;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/Auth0;->auth0UserAgent:Lcom/auth0/android/util/Auth0UserAgent;

    return-void

    .line 120
    :cond_1
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p1, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid domain url: \'%s\'"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/auth0/android/Auth0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final ensureValidUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 98
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 99
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string p1, "https://"

    .line 101
    invoke-static {v1, p1, v3, v4, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    sget-object p1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid domain url: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'. Only HTTPS domain URLs are supported. If no scheme is passed, HTTPS will be used."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAuth0UserAgent()Lcom/auth0/android/util/Auth0UserAgent;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/Auth0;->auth0UserAgent:Lcom/auth0/android/util/Auth0UserAgent;

    return-object v0
.end method

.method public getAuthorizeUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/Auth0;->domainUrl:Lokhttp3/HttpUrl;

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "authorize"

    .line 78
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/Auth0;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfigurationUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/Auth0;->configurationUrl:Lokhttp3/HttpUrl;

    .line 68
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDomainUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/Auth0;->domainUrl:Lokhttp3/HttpUrl;

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogoutUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/Auth0;->domainUrl:Lokhttp3/HttpUrl;

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "v2"

    .line 89
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "logout"

    .line 90
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkingClient()Lcom/auth0/android/request/NetworkingClient;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/Auth0;->networkingClient:Lcom/auth0/android/request/NetworkingClient;

    return-object v0
.end method

.method public final setAuth0UserAgent(Lcom/auth0/android/util/Auth0UserAgent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/Auth0;->auth0UserAgent:Lcom/auth0/android/util/Auth0UserAgent;

    return-void
.end method

.method public final setNetworkingClient(Lcom/auth0/android/request/NetworkingClient;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/Auth0;->networkingClient:Lcom/auth0/android/request/NetworkingClient;

    return-void
.end method
