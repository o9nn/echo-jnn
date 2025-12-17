.class public final Lcom/auth0/android/authentication/ParameterBuilder;
.super Ljava/lang/Object;
.source "ParameterBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/authentication/ParameterBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameterBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParameterBuilder.kt\ncom/auth0/android/authentication/ParameterBuilder\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,197:1\n494#2,7:198\n125#3:205\n152#3,3:206\n*S KotlinDebug\n*F\n+ 1 ParameterBuilder.kt\ncom/auth0/android/authentication/ParameterBuilder\n*L\n125#1:198,7\n125#1:205\n125#1:206,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u001b\u0008\u0002\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0007\u001a\u00020\u00002\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003J\u0006\u0010\t\u001a\u00020\u0000J\u001b\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0086\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001dR\u001a\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/auth0/android/authentication/ParameterBuilder;",
        "",
        "parameters",
        "",
        "",
        "(Ljava/util/Map;)V",
        "",
        "addAll",
        "asDictionary",
        "clearAll",
        "set",
        "key",
        "value",
        "setAudience",
        "audience",
        "setClientId",
        "clientId",
        "setConnection",
        "connection",
        "setGrantType",
        "grantType",
        "setRealm",
        "realm",
        "setRefreshToken",
        "refreshToken",
        "setScope",
        "scope",
        "setSend",
        "passwordlessType",
        "Lcom/auth0/android/authentication/PasswordlessType;",
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
.field public static final AUDIENCE_KEY:Ljava/lang/String; = "audience"

.field public static final CLIENT_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final CONNECTION_KEY:Ljava/lang/String; = "connection"

.field public static final Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

.field public static final GRANT_TYPE_AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final GRANT_TYPE_KEY:Ljava/lang/String; = "grant_type"

.field public static final GRANT_TYPE_MFA_OOB:Ljava/lang/String; = "http://auth0.com/oauth/grant-type/mfa-oob"

.field public static final GRANT_TYPE_MFA_OTP:Ljava/lang/String; = "http://auth0.com/oauth/grant-type/mfa-otp"

.field public static final GRANT_TYPE_MFA_RECOVERY_CODE:Ljava/lang/String; = "http://auth0.com/oauth/grant-type/mfa-recovery-code"

.field public static final GRANT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field public static final GRANT_TYPE_PASSWORDLESS_OTP:Ljava/lang/String; = "http://auth0.com/oauth/grant-type/passwordless/otp"

.field public static final GRANT_TYPE_PASSWORD_REALM:Ljava/lang/String; = "http://auth0.com/oauth/grant-type/password-realm"

.field public static final GRANT_TYPE_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final GRANT_TYPE_TOKEN_EXCHANGE:Ljava/lang/String; = "urn:ietf:params:oauth:grant-type:token-exchange"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "refresh_token"

.field public static final SCOPE_KEY:Ljava/lang/String; = "scope"

.field public static final SCOPE_OFFLINE_ACCESS:Ljava/lang/String; = "openid offline_access"

.field public static final SCOPE_OPENID:Ljava/lang/String; = "openid"

.field public static final SEND_KEY:Ljava/lang/String; = "send"


# instance fields
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static final newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static final newBuilder()Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static final newBuilder(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/authentication/ParameterBuilder;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0, p0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAll(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/authentication/ParameterBuilder;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_1
    check-cast v0, Ljava/util/Map;

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_2
    check-cast p1, Ljava/util/List;

    return-object p0
.end method

.method public final asDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    .line 145
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final clearAll()Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    .line 135
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    .line 111
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/authentication/ParameterBuilder;->parameters:Ljava/util/Map;

    .line 113
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final setAudience(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "audience"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_id"

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setConnection(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "grantType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grant_type"

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setRealm(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "realm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setRefreshToken(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh_token"

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setScope(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v1, Lcom/auth0/android/request/internal/OidcUtils;->INSTANCE:Lcom/auth0/android/request/internal/OidcUtils;

    invoke-virtual {v1, p1}, Lcom/auth0/android/request/internal/OidcUtils;->includeRequiredScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setSend(Lcom/auth0/android/authentication/PasswordlessType;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 1

    const-string v0, "passwordlessType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "send"

    .line 99
    invoke-virtual {p1}, Lcom/auth0/android/authentication/PasswordlessType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    return-object p1
.end method
