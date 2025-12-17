.class public final Lnet/openid/appauth/AuthorizationException;
.super Ljava/lang/Exception;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationException$RegistrationRequestErrors;,
        Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;,
        Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;,
        Lnet/openid/appauth/AuthorizationException$GeneralErrors;
    }
.end annotation


# static fields
.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = "net.openid.appauth.AuthorizationException"

.field private static final HASH_MULTIPLIER:I = 0x1f

.field static final KEY_CODE:Ljava/lang/String; = "code"

.field static final KEY_ERROR:Ljava/lang/String; = "error"

.field static final KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "errorDescription"

.field static final KEY_ERROR_URI:Ljava/lang/String; = "errorUri"

.field static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_ERROR:Ljava/lang/String; = "error"

.field public static final PARAM_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final PARAM_ERROR_URI:Ljava/lang/String; = "error_uri"

.field public static final TYPE_GENERAL_ERROR:I = 0x0

.field public static final TYPE_OAUTH_AUTHORIZATION_ERROR:I = 0x1

.field public static final TYPE_OAUTH_REGISTRATION_ERROR:I = 0x4

.field public static final TYPE_OAUTH_TOKEN_ERROR:I = 0x2

.field public static final TYPE_RESOURCE_SERVER_AUTHORIZATION_ERROR:I = 0x3


# instance fields
.field public final code:I

.field public final error:Ljava/lang/String;

.field public final errorDescription:Ljava/lang/String;

.field public final errorUri:Landroid/net/Uri;

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "error",
            "errorDescription",
            "errorUri",
            "rootCause"
        }
    .end annotation

    .line 644
    invoke-direct {p0, p4, p6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iput p2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iput-object p3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    iput-object p4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    iput-object p5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 0

    .line 47
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationException;->exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lnet/openid/appauth/AuthorizationException;->registrationEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0

    return-object p0
.end method

.method private static authEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "error"
        }
    .end annotation

    .line 471
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method private static varargs exceptionMapByString([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/openid/appauth/AuthorizationException;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/openid/appauth/AuthorizationException;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 588
    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    if-eqz p0, :cond_2

    .line 591
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 592
    iget-object v4, v3, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 593
    invoke-virtual {v0, v4, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 598
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 572
    invoke-static {p0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net.openid.appauth.AuthorizationException"

    .line 574
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/AuthorizationException;->fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent contains malformed exception data"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromJson(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonStr cannot be null or empty"

    .line 545
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 546
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "json cannot be null"

    .line 555
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v0, Lnet/openid/appauth/AuthorizationException;

    const-string v1, "type"

    .line 557
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "code"

    .line 558
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error"

    .line 559
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "errorDescription"

    .line 560
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "errorUri"

    .line 561
    invoke-static {p0, v1}, Lnet/openid/appauth/JsonUtil;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromOAuthRedirect(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectUri"
        }
    .end annotation

    const-string v0, "error"

    .line 526
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "error_description"

    .line 527
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_uri"

    .line 528
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 529
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->byString(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v1

    .line 530
    new-instance v8, Lnet/openid/appauth/AuthorizationException;

    iget v2, v1, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v3, v1, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, v1, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    if-eqz p0, :cond_1

    .line 535
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, v1, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    :goto_1
    move-object v6, p0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public static fromOAuthTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ex",
            "errorOverride",
            "errorDescriptionOverride",
            "errorUriOverride"
        }
    .end annotation

    .line 512
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    iget-object p1, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    :goto_0
    move-object v3, p1

    if-eqz p2, :cond_1

    goto :goto_1

    .line 516
    :cond_1
    iget-object p2, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    :goto_1
    move-object v4, p2

    if-eqz p3, :cond_2

    goto :goto_2

    .line 517
    :cond_2
    iget-object p3, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    :goto_2
    move-object v5, p3

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method public static fromTemplate(Lnet/openid/appauth/AuthorizationException;Ljava/lang/Throwable;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ex",
            "rootCause"
        }
    .end annotation

    .line 493
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    iget-object v4, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method private static generalEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "errorDescription"
        }
    .end annotation

    .line 466
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method private static registrationEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "error"
        }
    .end annotation

    .line 481
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method

.method private static tokenEx(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "error"
        }
    .end annotation

    .line 476
    new-instance v7, Lnet/openid/appauth/AuthorizationException;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lnet/openid/appauth/AuthorizationException;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 697
    instance-of v2, p1, Lnet/openid/appauth/AuthorizationException;

    if-nez v2, :cond_1

    goto :goto_1

    .line 701
    :cond_1
    check-cast p1, Lnet/openid/appauth/AuthorizationException;

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 702
    iget v3, p1, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    iget p1, p1, Lnet/openid/appauth/AuthorizationException;->code:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "net.openid.appauth.AuthorizationException"

    .line 683
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 658
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->type:I

    .line 659
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "code"

    iget v2, p0, Lnet/openid/appauth/AuthorizationException;->code:I

    .line 660
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string v1, "error"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 661
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorDescription"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 662
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorUri"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationException;->errorUri:Landroid/net/Uri;

    .line 663
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthorizationException: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationException;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
