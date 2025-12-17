.class Lnet/openid/appauth/AuthorizationManagementUtil;
.super Ljava/lang/Object;
.source "AuthorizationManagementUtil.java"


# static fields
.field public static final REQUEST_TYPE_AUTHORIZATION:Ljava/lang/String; = "authorization"

.field public static final REQUEST_TYPE_END_SESSION:Ljava/lang/String; = "end_session"

.field private static final STATE_LENGTH:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateRandomState()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 39
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xb

    .line 40
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static requestFrom(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationManagementRequest;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonStr",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonStr can not be null"

    .line 61
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "authorization"

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "end_session"

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-static {v0}, Lnet/openid/appauth/EndSessionRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionRequest;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No AuthorizationManagementRequest found matching to this json schema"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static requestTypeFor(Lnet/openid/appauth/AuthorizationManagementRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 45
    instance-of v0, p0, Lnet/openid/appauth/AuthorizationRequest;

    if-eqz v0, :cond_0

    const-string p0, "authorization"

    return-object p0

    .line 48
    :cond_0
    instance-of p0, p0, Lnet/openid/appauth/EndSessionRequest;

    if-eqz p0, :cond_1

    const-string p0, "end_session"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static responseFrom(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataIntent"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lnet/openid/appauth/EndSessionResponse;->containsEndSessionResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Lnet/openid/appauth/EndSessionResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/EndSessionResponse;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationResponse;->containsAuthorizationResponse(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-static {p0}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p0

    return-object p0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed intent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static responseWith(Lnet/openid/appauth/AuthorizationManagementRequest;Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "uri"
        }
    .end annotation

    .line 83
    instance-of v0, p0, Lnet/openid/appauth/AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lnet/openid/appauth/AuthorizationResponse$Builder;

    check-cast p0, Lnet/openid/appauth/AuthorizationRequest;

    invoke-direct {v0, p0}, Lnet/openid/appauth/AuthorizationResponse$Builder;-><init>(Lnet/openid/appauth/AuthorizationRequest;)V

    .line 85
    invoke-virtual {v0, p1}, Lnet/openid/appauth/AuthorizationResponse$Builder;->fromUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationResponse$Builder;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationResponse$Builder;->build()Lnet/openid/appauth/AuthorizationResponse;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    instance-of v0, p0, Lnet/openid/appauth/EndSessionRequest;

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lnet/openid/appauth/EndSessionResponse$Builder;

    check-cast p0, Lnet/openid/appauth/EndSessionRequest;

    invoke-direct {v0, p0}, Lnet/openid/appauth/EndSessionResponse$Builder;-><init>(Lnet/openid/appauth/EndSessionRequest;)V

    .line 90
    invoke-virtual {v0, p1}, Lnet/openid/appauth/EndSessionResponse$Builder;->fromUri(Landroid/net/Uri;)Lnet/openid/appauth/EndSessionResponse$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lnet/openid/appauth/EndSessionResponse$Builder;->build()Lnet/openid/appauth/EndSessionResponse;

    move-result-object p0

    return-object p0

    .line 93
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed request or uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
