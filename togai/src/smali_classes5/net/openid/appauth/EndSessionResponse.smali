.class public Lnet/openid/appauth/EndSessionResponse;
.super Lnet/openid/appauth/AuthorizationManagementResponse;
.source "EndSessionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/EndSessionResponse$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "net.openid.appauth.EndSessionResponse"

.field static final KEY_REQUEST:Ljava/lang/String; = "request"

.field static final KEY_STATE:Ljava/lang/String; = "state"


# instance fields
.field public final request:Lnet/openid/appauth/EndSessionRequest;

.field public final state:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "state"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lnet/openid/appauth/AuthorizationManagementResponse;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    iput-object p2, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;Lnet/openid/appauth/EndSessionResponse$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/EndSessionResponse;-><init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;)V

    return-void
.end method

.method static containsEndSessionResponse(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "net.openid.appauth.EndSessionResponse"

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/EndSessionResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataIntent"
        }
    .end annotation

    const-string v0, "dataIntent must not be null"

    .line 182
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "net.openid.appauth.EndSessionResponse"

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/openid/appauth/EndSessionResponse;->jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/EndSessionResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent contains malformed auth response"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/EndSessionResponse;
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

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/EndSessionResponse;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionResponse;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionResponse;
    .locals 3
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

    const-string v0, "request"

    .line 140
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lnet/openid/appauth/EndSessionResponse;

    .line 146
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/EndSessionRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/EndSessionRequest;

    move-result-object v0

    const-string v2, "state"

    .line 147
    invoke-static {p0, v2}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lnet/openid/appauth/EndSessionResponse;-><init>(Lnet/openid/appauth/EndSessionRequest;Ljava/lang/String;)V

    return-object v1

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "authorization request not provided and not found in JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/EndSessionResponse;->request:Lnet/openid/appauth/EndSessionRequest;

    .line 126
    invoke-virtual {v1}, Lnet/openid/appauth/EndSessionRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/EndSessionResponse;->state:Ljava/lang/String;

    .line 127
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "net.openid.appauth.EndSessionResponse"

    .line 171
    invoke-virtual {p0}, Lnet/openid/appauth/EndSessionResponse;->jsonSerializeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
