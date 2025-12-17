.class public abstract Lnet/openid/appauth/AuthorizationManagementResponse;
.super Ljava/lang/Object;
.source "AuthorizationManagementResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract jsonSerialize()Lorg/json/JSONObject;
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationManagementResponse;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toIntent()Landroid/content/Intent;
.end method
