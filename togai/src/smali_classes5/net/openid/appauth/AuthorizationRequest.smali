.class public Lnet/openid/appauth/AuthorizationRequest;
.super Ljava/lang/Object;
.source "AuthorizationRequest.java"

# interfaces
.implements Lnet/openid/appauth/AuthorizationManagementRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationRequest$Builder;,
        Lnet/openid/appauth/AuthorizationRequest$ResponseMode;,
        Lnet/openid/appauth/AuthorizationRequest$Scope;,
        Lnet/openid/appauth/AuthorizationRequest$Prompt;,
        Lnet/openid/appauth/AuthorizationRequest$Display;
    }
.end annotation


# static fields
.field private static final BUILT_IN_PARAMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_CHALLENGE_METHOD_PLAIN:Ljava/lang/String; = "plain"

.field public static final CODE_CHALLENGE_METHOD_S256:Ljava/lang/String; = "S256"

.field private static final KEY_ADDITIONAL_PARAMETERS:Ljava/lang/String; = "additionalParameters"

.field private static final KEY_CLAIMS:Ljava/lang/String; = "claims"

.field private static final KEY_CLAIMS_LOCALES:Ljava/lang/String; = "claimsLocales"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final KEY_CODE_VERIFIER:Ljava/lang/String; = "codeVerifier"

.field private static final KEY_CODE_VERIFIER_CHALLENGE:Ljava/lang/String; = "codeVerifierChallenge"

.field private static final KEY_CODE_VERIFIER_CHALLENGE_METHOD:Ljava/lang/String; = "codeVerifierChallengeMethod"

.field private static final KEY_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final KEY_LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field private static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field private static final KEY_PROMPT:Ljava/lang/String; = "prompt"

.field private static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"

.field private static final KEY_RESPONSE_MODE:Ljava/lang/String; = "responseMode"

.field private static final KEY_RESPONSE_TYPE:Ljava/lang/String; = "responseType"

.field private static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_UI_LOCALES:Ljava/lang/String; = "ui_locales"

.field static final PARAM_CLAIMS:Ljava/lang/String; = "claims"

.field static final PARAM_CLAIMS_LOCALES:Ljava/lang/String; = "claims_locales"

.field static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field static final PARAM_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field static final PARAM_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field static final PARAM_DISPLAY:Ljava/lang/String; = "display"

.field static final PARAM_LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field static final PARAM_NONCE:Ljava/lang/String; = "nonce"

.field static final PARAM_PROMPT:Ljava/lang/String; = "prompt"

.field static final PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field static final PARAM_RESPONSE_MODE:Ljava/lang/String; = "response_mode"

.field static final PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field static final PARAM_SCOPE:Ljava/lang/String; = "scope"

.field static final PARAM_STATE:Ljava/lang/String; = "state"

.field static final PARAM_UI_LOCALES:Ljava/lang/String; = "ui_locales"


# instance fields
.field public final additionalParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final claims:Lorg/json/JSONObject;

.field public final claimsLocales:Ljava/lang/String;

.field public final clientId:Ljava/lang/String;

.field public final codeVerifier:Ljava/lang/String;

.field public final codeVerifierChallenge:Ljava/lang/String;

.field public final codeVerifierChallengeMethod:Ljava/lang/String;

.field public final configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

.field public final display:Ljava/lang/String;

.field public final loginHint:Ljava/lang/String;

.field public final nonce:Ljava/lang/String;

.field public final prompt:Ljava/lang/String;

.field public final redirectUri:Landroid/net/Uri;

.field public final responseMode:Ljava/lang/String;

.field public final responseType:Ljava/lang/String;

.field public final scope:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final uiLocales:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "client_id"

    const-string v1, "code_challenge"

    const-string v2, "code_challenge_method"

    const-string v3, "display"

    const-string v4, "login_hint"

    const-string v5, "prompt"

    const-string v6, "ui_locales"

    const-string v7, "redirect_uri"

    const-string v8, "response_mode"

    const-string v9, "response_type"

    const-string v10, "scope"

    const-string v11, "state"

    const-string v12, "claims"

    const-string v13, "claims_locales"

    .line 314
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/openid/appauth/AdditionalParamsProcessor;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "configuration",
            "clientId",
            "responseType",
            "redirectUri",
            "display",
            "loginHint",
            "prompt",
            "uiLocales",
            "scope",
            "state",
            "nonce",
            "codeVerifier",
            "codeVerifierChallenge",
            "codeVerifierChallengeMethod",
            "responseMode",
            "claims",
            "claimsLocales",
            "additionalParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/openid/appauth/AuthorizationServiceConfiguration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-object v1, p2

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    move-object/from16 v1, p18

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    move-object v1, p5

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Lnet/openid/appauth/AuthorizationRequest$1;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p18}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationRequest;->BUILT_IN_PARAMS:Ljava/util/Set;

    return-object v0
.end method

.method public static jsonDeserialize(Ljava/lang/String;)Lnet/openid/appauth/AuthorizationRequest;
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

    const-string v0, "json string cannot be null"

    .line 1288
    invoke-static {p0, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;
    .locals 22
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

    move-object/from16 v0, p0

    const-string v1, "json cannot be null"

    .line 1257
    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v1, Lnet/openid/appauth/AuthorizationRequest;

    move-object v2, v1

    const-string v3, "configuration"

    .line 1259
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationServiceConfiguration;

    move-result-object v3

    const-string v4, "clientId"

    .line 1260
    invoke-static {v0, v4}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "responseType"

    .line 1261
    invoke-static {v0, v5}, Lnet/openid/appauth/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "redirectUri"

    .line 1262
    invoke-static {v0, v6}, Lnet/openid/appauth/JsonUtil;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "display"

    .line 1263
    invoke-static {v0, v7}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "login_hint"

    .line 1264
    invoke-static {v0, v8}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "prompt"

    .line 1265
    invoke-static {v0, v9}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ui_locales"

    .line 1266
    invoke-static {v0, v10}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "scope"

    .line 1267
    invoke-static {v0, v11}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "state"

    .line 1268
    invoke-static {v0, v12}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "nonce"

    .line 1269
    invoke-static {v0, v13}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "codeVerifier"

    .line 1270
    invoke-static {v0, v14}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "codeVerifierChallenge"

    .line 1271
    invoke-static {v0, v15}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v1

    const-string v1, "codeVerifierChallengeMethod"

    .line 1272
    invoke-static {v0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "responseMode"

    .line 1273
    invoke-static {v0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "claims"

    .line 1274
    invoke-static {v0, v1}, Lnet/openid/appauth/JsonUtil;->getJsonObjectIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v1, "claimsLocales"

    .line 1275
    invoke-static {v0, v1}, Lnet/openid/appauth/JsonUtil;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "additionalParameters"

    .line 1276
    invoke-static {v0, v1}, Lnet/openid/appauth/JsonUtil;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Lnet/openid/appauth/AuthorizationRequest;-><init>(Lnet/openid/appauth/AuthorizationServiceConfiguration;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-object v21
.end method


# virtual methods
.method public getClaimsLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 1170
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPromptValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 1146
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getScopeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 1137
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 1155
    invoke-static {v0}, Lnet/openid/appauth/AsciiStringListUtil;->stringToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public jsonSerialize()Lorg/json/JSONObject;
    .locals 3

    .line 1215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 1216
    invoke-virtual {v1}, Lnet/openid/appauth/AuthorizationServiceConfiguration;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "clientId"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 1217
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "responseType"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 1218
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 1219
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirectUri"

    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 1220
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "login_hint"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 1221
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 1222
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prompt"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 1223
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ui_locales"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 1224
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 1225
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nonce"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 1226
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "codeVerifier"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    .line 1227
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "codeVerifierChallenge"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 1228
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "codeVerifierChallengeMethod"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 1229
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "responseMode"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 1231
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "claims"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    .line 1232
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "claimsLocales"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 1233
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/JsonUtil;->putIfNotNull(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 1235
    invoke-static {v1}, Lnet/openid/appauth/JsonUtil;->mapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "additionalParameters"

    .line 1234
    invoke-static {v0, v2, v1}, Lnet/openid/appauth/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsonSerializeString()Ljava/lang/String;
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lnet/openid/appauth/AuthorizationRequest;->jsonSerialize()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationRequest;->configuration:Lnet/openid/appauth/AuthorizationServiceConfiguration;

    .line 1179
    iget-object v0, v0, Lnet/openid/appauth/AuthorizationServiceConfiguration;->authorizationEndpoint:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->redirectUri:Landroid/net/Uri;

    .line 1180
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "client_id"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 1181
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "response_type"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseType:Ljava/lang/String;

    .line 1182
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "display"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->display:Ljava/lang/String;

    .line 1184
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "login_hint"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->loginHint:Ljava/lang/String;

    .line 1185
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "prompt"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->prompt:Ljava/lang/String;

    .line 1186
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ui_locales"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->uiLocales:Ljava/lang/String;

    .line 1187
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "state"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->state:Ljava/lang/String;

    .line 1188
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nonce"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->nonce:Ljava/lang/String;

    .line 1189
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "scope"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->scope:Ljava/lang/String;

    .line 1190
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "response_mode"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->responseMode:Ljava/lang/String;

    .line 1191
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "code_challenge"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallenge:Ljava/lang/String;

    .line 1194
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "code_challenge_method"

    iget-object v3, p0, Lnet/openid/appauth/AuthorizationRequest;->codeVerifierChallengeMethod:Ljava/lang/String;

    .line 1195
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string v1, "claims"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claims:Lorg/json/JSONObject;

    .line 1198
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "claims_locales"

    iget-object v2, p0, Lnet/openid/appauth/AuthorizationRequest;->claimsLocales:Ljava/lang/String;

    .line 1199
    invoke-static {v0, v1, v2}, Lnet/openid/appauth/internal/UriUtil;->appendQueryParameterIfNotNull(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationRequest;->additionalParameters:Ljava/util/Map;

    .line 1201
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
