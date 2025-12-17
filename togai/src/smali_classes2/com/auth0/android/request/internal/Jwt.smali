.class public final Lcom/auth0/android/request/internal/Jwt;
.super Ljava/lang/Object;
.source "Jwt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/internal/Jwt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJwt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Jwt.kt\ncom/auth0/android/request/internal/Jwt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0010\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0007R\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0007R\u0013\u0010!\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0007R\u0019\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00030$\u00a2\u0006\n\n\u0002\u0010\'\u001a\u0004\u0008%\u0010&R\u0013\u0010(\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0007\u00a8\u0006+"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/Jwt;",
        "",
        "rawToken",
        "",
        "(Ljava/lang/String;)V",
        "algorithm",
        "getAlgorithm",
        "()Ljava/lang/String;",
        "audience",
        "",
        "getAudience",
        "()Ljava/util/List;",
        "authenticationTime",
        "Ljava/util/Date;",
        "getAuthenticationTime",
        "()Ljava/util/Date;",
        "authorizedParty",
        "getAuthorizedParty",
        "decodedHeader",
        "",
        "decodedPayload",
        "expiresAt",
        "getExpiresAt",
        "issuedAt",
        "getIssuedAt",
        "issuer",
        "getIssuer",
        "keyId",
        "getKeyId",
        "nonce",
        "getNonce",
        "organizationId",
        "getOrganizationId",
        "organizationName",
        "getOrganizationName",
        "parts",
        "",
        "getParts",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "subject",
        "getSubject",
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
.field public static final Companion:Lcom/auth0/android/request/internal/Jwt$Companion;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final audience:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticationTime:Ljava/util/Date;

.field private final authorizedParty:Ljava/lang/String;

.field private final decodedHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final decodedPayload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final expiresAt:Ljava/util/Date;

.field private final issuedAt:Ljava/util/Date;

.field private final issuer:Ljava/lang/String;

.field private final keyId:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final organizationId:Ljava/lang/String;

.field private final organizationName:Ljava/lang/String;

.field private final parts:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/internal/Jwt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/internal/Jwt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/internal/Jwt;->Companion:Lcom/auth0/android/request/internal/Jwt$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "rawToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/auth0/android/request/internal/Jwt;->Companion:Lcom/auth0/android/request/internal/Jwt$Companion;

    .line 34
    invoke-virtual {v0, p1}, Lcom/auth0/android/request/internal/Jwt$Companion;->splitToken(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/request/internal/Jwt;->parts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/request/internal/Jwt$Companion;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 36
    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/auth0/android/request/internal/Jwt$Companion;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    sget-object v0, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/auth0/android/request/internal/Jwt$mapAdapter$1;

    invoke-direct {v2}, Lcom/auth0/android/request/internal/Jwt$mapAdapter$1;-><init>()V

    check-cast v2, Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mapAdapter.fromJson(jsonHeader)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/auth0/android/request/internal/Jwt;->decodedHeader:Ljava/util/Map;

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mapAdapter.fromJson(jsonPayload)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/auth0/android/request/internal/Jwt;->decodedPayload:Ljava/util/Map;

    const-string v0, "alg"

    .line 42
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->algorithm:Ljava/lang/String;

    const-string v0, "kid"

    .line 43
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->keyId:Ljava/lang/String;

    const-string v0, "sub"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->subject:Ljava/lang/String;

    const-string v0, "iss"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->issuer:Ljava/lang/String;

    const-string v0, "nonce"

    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->nonce:Ljava/lang/String;

    const-string v0, "org_id"

    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->organizationId:Ljava/lang/String;

    const-string v0, "org_name"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->organizationName:Ljava/lang/String;

    const-string v0, "iat"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/16 v1, 0x3e8

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v0, Ljava/util/Date;

    double-to-long v3, v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->issuedAt:Ljava/util/Date;

    const-string v0, "exp"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Double;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v0, Ljava/util/Date;

    double-to-long v3, v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->expiresAt:Ljava/util/Date;

    const-string v0, "azp"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->authorizedParty:Ljava/lang/String;

    const-string v0, "auth_time"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Double;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    double-to-long v2, v2

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v2, v0

    :cond_5
    iput-object v2, p0, Lcom/auth0/android/request/internal/Jwt;->authenticationTime:Ljava/util/Date;

    const-string v0, "aud"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 58
    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/List;

    goto :goto_5

    .line 59
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/auth0/android/request/internal/Jwt;->audience:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getAudience()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->audience:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthenticationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->authenticationTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getAuthorizedParty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->authorizedParty:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getIssuedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->issuedAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrganizationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->organizationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrganizationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->organizationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParts()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->parts:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/Jwt;->subject:Ljava/lang/String;

    return-object v0
.end method
