.class public final Lnet/openid/appauth/AuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationRequest;
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

.field private mClaims:Lorg/json/JSONObject;

.field private mClaimsLocales:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mCodeVerifier:Ljava/lang/String;

.field private mCodeVerifierChallenge:Ljava/lang/String;

.field private mCodeVerifierChallengeMethod:Ljava/lang/String;

.field private mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field private mDisplay:Ljava/lang/String;

.field private mLoginHint:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mPrompt:Ljava/lang/String;

.field private mRedirectUri:Landroid/net/Uri;

.field private mResponseMode:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mUiLocales:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "clientId",
            "responseType",
            "redirectUri"
        }
    .end annotation

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    .line 642
    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 643
    invoke-virtual {p0, p2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 644
    invoke-virtual {p0, p3}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 645
    invoke-virtual {p0, p4}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 646
    invoke-static {}, Lnet/openid/appauth/AuthorizationManagementUtil;->generateRandomState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 647
    invoke-static {}, Lnet/openid/appauth/AuthorizationManagementUtil;->generateRandomState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setNonce(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 648
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->generateRandomCodeVerifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    return-void
.end method


# virtual methods
.method public build()Lnet/openid/appauth/AuthorizationRequest;
    .locals 24

    move-object/from16 v0, p0

    .line 1066
    new-instance v21, Lnet/openid/appauth/AuthorizationRequest;

    move-object/from16 v1, v21

    iget-object v2, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iget-object v3, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    iget-object v4, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    iget-object v5, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    iget-object v6, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    iget-object v7, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    iget-object v8, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    iget-object v9, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mUiLocales:Ljava/lang/String;

    iget-object v10, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    iget-object v11, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    iget-object v12, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/String;

    iget-object v13, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iget-object v14, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    iget-object v15, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaims:Lorg/json/JSONObject;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaimsLocales:Ljava/lang/String;

    move-object/from16 v18, v1

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v23, v2

    iget-object v2, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1084
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v20}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V

    return-object v21
.end method

.method public setAdditionalParameters(Ljava/util/Map;)Lnet/openid/appauth/AuthorizationRequest$Builder;
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
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 1050
    invoke-static {}, Lnet/openid/appauth/AuthorizationRequest;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mAdditionalParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setAuthorizationServiceConfiguration(Lnet/openid/appauth/AuthorizationServiceConfiguration;)Lnet/openid/appauth/AuthorizationRequest$Builder;
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

    .line 656
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/openid/appauth/AuthorizationServiceConfiguration;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    return-object p0
.end method

.method public setClaims(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "claims"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaims:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setClaimsLocales(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "claimsLocales"
        }
    .end annotation

    const-string v0, "claimsLocales must be null or not empty"

    .line 1005
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaimsLocales:Ljava/lang/String;

    return-object p0
.end method

.method public setClaimsLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "claimsLocalesValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 1037
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaimsLocales:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setClaimsLocalesValues([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "claimsLocalesValues"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClaimsLocales:Ljava/lang/String;

    return-object p0

    .line 1025
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setClaimsLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClientId(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientId"
        }
    .end annotation

    const-string v0, "client ID cannot be null or empty"

    .line 671
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codeVerifier"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 918
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    .line 920
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->deriveCodeVerifierChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    .line 921
    invoke-static {}, Lnet/openid/appauth/CodeVerifierUtil;->getCodeVerifierChallengeMethod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setCodeVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codeVerifier",
            "codeVerifierChallenge",
            "codeVerifierChallengeMethod"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 948
    invoke-static {p1}, Lnet/openid/appauth/CodeVerifierUtil;->checkCodeVerifier(Ljava/lang/String;)V

    const-string v0, "code verifier challenge cannot be null or empty if verifier is set"

    .line 949
    invoke-static {p2, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "code verifier challenge method cannot be null or empty if verifier is set"

    .line 951
    invoke-static {p3, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "code verifier challenge must be null if verifier is null"

    .line 955
    invoke-static {v2, v3}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string v1, "code verifier challenge method must be null if verifier is null"

    .line 957
    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :goto_2
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/String;

    iput-object p2, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/String;

    iput-object p3, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "display"
        }
    .end annotation

    const-string v0, "display must be null or not empty"

    .line 683
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mDisplay:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginHint(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginHint"
        }
    .end annotation

    const-string v0, "login hint must be null or not empty"

    .line 694
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    const-string v0, "nonce cannot be empty if defined"

    .line 901
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prompt"
        }
    .end annotation

    const-string v0, "prompt must be null or non-empty"

    .line 709
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promptValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 743
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setPromptValues([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promptValues"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0

    .line 729
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setPromptValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRedirectUri(Landroid/net/Uri;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectUri"
        }
    .end annotation

    const-string v0, "redirect URI cannot be null or empty"

    .line 818
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setResponseMode(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseMode"
        }
    .end annotation

    const-string v0, "responseMode must not be empty"

    .line 979
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseMode:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseType(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseType"
        }
    .end annotation

    const-string v0, "expected response type cannot be null or empty"

    .line 805
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public setScope(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " +"

    .line 834
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    :goto_0
    return-object p0
.end method

.method public setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 866
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scopes"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 852
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setScopes(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "state cannot be empty if defined"

    .line 885
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setUiLocales(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
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

    .line 757
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNullOrNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0
.end method

.method public setUiLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;
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
            "Lnet/openid/appauth/AuthorizationRequest$Builder;"
        }
    .end annotation

    .line 791
    invoke-static {p1}, Lnet/openid/appauth/AsciiStringListUtil;->iterableToString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setUiLocalesValues([Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest$Builder;
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

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mUiLocales:Ljava/lang/String;

    return-object p0

    .line 777
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/openid/appauth/AuthorizationRequest$Builder;->setUiLocalesValues(Ljava/lang/Iterable;)Lnet/openid/appauth/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method
