.class public final Lnet/openid/appauth/EndSessionRequest$Builder;
.super Ljava/lang/Object;
.source "EndSessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/EndSessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdditionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field private mIdTokenHint:Ljava/lang/String;

.field private mPostLogoutRedirectUri:Landroid/net/Uri;

.field private mState:Ljava/lang/String;

.field private mUiLocales:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 166
    invoke-virtual {p0, p1}, Lnet/openid/appauth/EndSessionRequest$Builder;->setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/EndSessionRequest$Builder;

    .line 167
    invoke-static {}, Lnet/openid/appauth/AuthorizationManagementUtil;->generateRandomState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/EndSessionRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/EndSessionRequest;
    .locals 9

    .line 238
    new-instance v8, Lnet/openid/appauth/EndSessionRequest;

    iget-object v1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v2, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mIdTokenHint:Ljava/lang/String;

    iget-object v3, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mPostLogoutRedirectUri:Landroid/net/Uri;

    iget-object v4, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mState:Ljava/lang/String;

    iget-object v5, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mUiLocales:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    iget-object v6, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/openid/appauth/EndSessionRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/EndSessionRequest$1;)V

    return-object v8
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/EndSessionRequest$Builder;"
        }
    .end annotation

    .line 228
    invoke-static {}, Lnet/openid/appauth/EndSessionRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    const-string v0, "configuration cannot be null"

    .line 174
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p0
.end method

.method public setIdTokenHint(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idTokenHint"
        }
    .end annotation

    const-string v0, "idTokenHint must not be empty"

    .line 181
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mIdTokenHint:Ljava/lang/String;

    return-object p0
.end method

.method public setPostLogoutRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postLogoutRedirectUri"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mPostLogoutRedirectUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "state must not be empty"

    .line 195
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setUiLocales(Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiLocales"
        }
    .end annotation

    const-string v0, "uiLocales must be null or not empty"

    .line 202
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0
.end method

.method public setUiLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiLocalesValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/EndSessionRequest$Builder;"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setUiLocalesValues([Ljava/lang/String;)Lnet/openid/appauth/EndSessionRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiLocalesValues"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/EndSessionRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0

    .line 214
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/EndSessionRequest$Builder;->setUiLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/EndSessionRequest$Builder;

    move-result-object p1

    return-object p1
.end method
