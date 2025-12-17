.class public Lnet/openid/appauth/IdToken;
.super Ljava/lang/Object;
.source "IdToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/IdToken$IdTokenException;
    }
.end annotation


# static fields
.field private static final BUILT_IN_CLAIMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_AUDIENCE:Ljava/lang/String; = "aud"

.field private static final KEY_AUTHORIZED_PARTY:Ljava/lang/String; = "azp"

.field private static final KEY_EXPIRATION:Ljava/lang/String; = "exp"

.field private static final KEY_ISSUED_AT:Ljava/lang/String; = "iat"

.field private static final KEY_ISSUER:Ljava/lang/String; = "iss"

.field private static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field private static final KEY_SUBJECT:Ljava/lang/String; = "sub"

.field private static final MILLIS_PER_SECOND:Ljava/lang/Long;

.field private static final TEN_MINUTES_IN_SECONDS:Ljava/lang/Long;


# instance fields
.field public final additionalClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final audience:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final authorizedParty:Ljava/lang/String;

.field public final expiration:Ljava/lang/Long;

.field public final issuedAt:Ljava/lang/Long;

.field public final issuer:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;

.field public final subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/IdToken;->MILLIS_PER_SECOND:Ljava/lang/Long;

    const-wide/16 v0, 0x258

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/IdToken;->TEN_MINUTES_IN_SECONDS:Ljava/lang/Long;

    const-string v1, "iss"

    const-string v2, "sub"

    const-string v3, "aud"

    const-string v4, "exp"

    const-string v5, "iat"

    const-string v6, "nonce"

    const-string v7, "azp"

    .line 58
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/IdToken;->BUILT_IN_CLAIMS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "subject",
            "audience",
            "expiration",
            "issuedAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lnet/openid/appauth/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "subject",
            "audience",
            "expiration",
            "issuedAt",
            "nonce",
            "authorizedParty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 135
    invoke-direct/range {v0 .. v8}, Lnet/openid/appauth/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "subject",
            "audience",
            "expiration",
            "issuedAt",
            "nonce",
            "authorizedParty",
            "additionalClaims"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/IdToken;->issuer:Ljava/lang/String;

    iput-object p2, p0, Lnet/openid/appauth/IdToken;->subject:Ljava/lang/String;

    iput-object p3, p0, Lnet/openid/appauth/IdToken;->audience:Ljava/util/List;

    iput-object p4, p0, Lnet/openid/appauth/IdToken;->expiration:Ljava/lang/Long;

    iput-object p5, p0, Lnet/openid/appauth/IdToken;->issuedAt:Ljava/lang/Long;

    iput-object p6, p0, Lnet/openid/appauth/IdToken;->nonce:Ljava/lang/String;

    iput-object p7, p0, Lnet/openid/appauth/IdToken;->authorizedParty:Ljava/lang/String;

    iput-object p8, p0, Lnet/openid/appauth/IdToken;->additionalClaims:Ljava/util/Map;

    return-void
.end method

.method static from(Ljava/lang/String;)Lnet/openid/appauth/IdToken;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/IdToken$IdTokenException;
        }
    .end annotation

    const-string v0, "aud"

    const-string v1, "\\."

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 166
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 171
    aget-object v1, p0, v1

    invoke-static {v1}, Lnet/openid/appauth/IdToken;->parseJwtSection(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 172
    aget-object p0, p0, v2

    invoke-static {p0}, Lnet/openid/appauth/IdToken;->parseJwtSection(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "iss"

    .line 174
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "sub"

    .line 175
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    :try_start_0
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    .line 180
    :catch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    :goto_0
    const-string v0, "exp"

    .line 183
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v0, "iat"

    .line 184
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v0, "nonce"

    .line 185
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "azp"

    .line 186
    invoke-static {p0, v0}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lnet/openid/appauth/IdToken;->BUILT_IN_CLAIMS:Ljava/util/Set;

    .line 188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_0
    invoke-static {p0}, Lnet/openid/appauth/JsonUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 193
    new-instance p0, Lnet/openid/appauth/IdToken;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lnet/openid/appauth/IdToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p0

    .line 167
    :cond_1
    new-instance p0, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string v0, "ID token must have both header and claims section"

    invoke-direct {p0, v0}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseJwtSection(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "section"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 158
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 160
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/Clock;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRequest",
            "clock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/openid/appauth/AuthorizationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, p2, v0}, Lnet/openid/appauth/IdToken;->validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/Clock;Z)V

    return-void
.end method

.method validate(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/Clock;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRequest",
            "clock",
            "skipIssuerHttpsCheck"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/openid/appauth/AuthorizationException;
        }
    .end annotation

    .line 218
    iget-object v0, p1, Lnet/openid/appauth/TokenRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v0, v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->discoveryDoc:Lnet/openid/appauth/AuthorizationServiceDiscovery;

    if-eqz v0, :cond_5

    .line 220
    invoke-virtual {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/IdToken;->issuer:Ljava/lang/String;

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/openid/appauth/IdToken;->issuer:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez p3, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v1, "https"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Issuer must be an https URL"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-gtz p3, :cond_2

    goto :goto_1

    .line 243
    :cond_2
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Issuer URL should not containt query parameters or fragment components"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 238
    :cond_3
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Issuer host can not be empty"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 222
    :cond_4
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Issuer mismatch"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 253
    :cond_5
    :goto_1
    iget-object p3, p1, Lnet/openid/appauth/TokenRequest;->clientId:Ljava/lang/String;

    iget-object v0, p0, Lnet/openid/appauth/IdToken;->audience:Ljava/util/List;

    .line 254
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/openid/appauth/IdToken;->authorizedParty:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 255
    :cond_6
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Audience mismatch"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 273
    :cond_7
    :goto_2
    invoke-interface {p2}, Lnet/openid/appauth/Clock;->getCurrentTimeMillis()J

    move-result-wide p2

    sget-object v0, Lnet/openid/appauth/IdToken;->MILLIS_PER_SECOND:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 274
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p3, p0, Lnet/openid/appauth/IdToken;->expiration:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-gtz p3, :cond_b

    .line 282
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-object v0, p0, Lnet/openid/appauth/IdToken;->issuedAt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sget-object v0, Lnet/openid/appauth/IdToken;->TEN_MINUTES_IN_SECONDS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gtz p2, :cond_a

    const-string p2, "authorization_code"

    .line 289
    iget-object p3, p1, Lnet/openid/appauth/TokenRequest;->grantType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 292
    iget-object p1, p1, Lnet/openid/appauth/TokenRequest;->nonce:Ljava/lang/String;

    iget-object p2, p0, Lnet/openid/appauth/IdToken;->nonce:Ljava/lang/String;

    .line 293
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 294
    :cond_8
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Nonce mismatch"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_3
    return-void

    .line 283
    :cond_a
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "Issued at time is more than 10 minutes before or after the current time"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1

    .line 275
    :cond_b
    sget-object p1, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    new-instance p2, Lnet/openid/appauth/IdToken$IdTokenException;

    const-string p3, "ID Token expired"

    invoke-direct {p2, p3}, Lnet/openid/appauth/IdToken$IdTokenException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/openid/appauth/AuthorizationException;->fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p1

    throw p1
.end method
