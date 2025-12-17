.class public Lnet/openid/appauth/AuthorizationServiceDiscovery;
.super Ljava/lang/Object;
.source "AuthorizationServiceDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
    }
.end annotation


# static fields
.field static final ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

.field static final JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field private static final MANDATORY_METADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field static final OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

.field static final REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

.field static final RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

.field static final SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

.field static final USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

.field static final USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;


# instance fields
.field public final docJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "issuer"

    .line 45
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    const-string v1, "authorization_endpoint"

    .line 48
    invoke-static {v1}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v1

    sput-object v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v2, "token_endpoint"

    .line 51
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v2

    sput-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v2, "end_session_endpoint"

    .line 54
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v2

    sput-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v2, "userinfo_endpoint"

    .line 57
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v2

    sput-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v2, "jwks_uri"

    .line 60
    invoke-static {v2}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v2

    sput-object v2, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v3, "registration_endpoint"

    .line 63
    invoke-static {v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v3

    sput-object v3, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v3, "scopes_supported"

    .line 66
    invoke-static {v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v3

    sput-object v3, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v3, "response_types_supported"

    .line 69
    invoke-static {v3}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v3

    sput-object v3, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v4, "response_modes_supported"

    .line 72
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v4

    sput-object v4, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v4, "authorization_code"

    const-string v5, "implicit"

    .line 75
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "grant_types_supported"

    invoke-static {v5, v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v4

    sput-object v4, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v4, "acr_values_supported"

    .line 79
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v4

    sput-object v4, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v4, "subject_types_supported"

    .line 82
    invoke-static {v4}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v4

    sput-object v4, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v5, "id_token_signing_alg_values_supported"

    .line 86
    invoke-static {v5}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v5

    sput-object v5, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "id_token_encryption_enc_values_supported"

    .line 90
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v7

    sput-object v7, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 94
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "userinfo_signing_alg_values_supported"

    .line 98
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "userinfo_encryption_alg_values_supported"

    .line 102
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "userinfo_encryption_enc_values_supported"

    .line 106
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "request_object_signing_alg_values_supported"

    .line 110
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "request_object_encryption_alg_values_supported"

    .line 114
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "request_object_encryption_enc_values_supported"

    .line 118
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "client_secret_basic"

    .line 123
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "token_endpoint_auth_methods_supported"

    .line 122
    invoke-static {v7, v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "token_endpoint_auth_signing_alg_values_supported"

    .line 127
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "display_values_supported"

    .line 130
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "normal"

    .line 134
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "claim_types_supported"

    invoke-static {v7, v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "claims_supported"

    .line 137
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "service_documentation"

    .line 140
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v6, "claims_locales_supported"

    .line 143
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "ui_locales_supported"

    .line 146
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    const-string v6, "claims_parameter_supported"

    const/4 v7, 0x0

    .line 150
    invoke-static {v6, v7}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v6, "request_parameter_supported"

    .line 154
    invoke-static {v6, v7}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v6, "request_uri_parameter_supported"

    const/4 v8, 0x1

    .line 158
    invoke-static {v6, v8}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v6, "require_request_uri_registration"

    .line 162
    invoke-static {v6, v7}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    const-string v6, "op_policy_uri"

    .line 165
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    const-string v6, "op_tos_uri"

    .line 168
    invoke-static {v6}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;

    move-result-object v6

    sput-object v6, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 173
    iget-object v7, v0, Lnet/openid/appauth/JsonUtil$StringField;->key:Ljava/lang/String;

    iget-object v8, v1, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    iget-object v9, v2, Lnet/openid/appauth/JsonUtil$UriField;->key:Ljava/lang/String;

    iget-object v10, v3, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    iget-object v11, v4, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    iget-object v12, v5, Lnet/openid/appauth/JsonUtil$StringListField;->key:Ljava/lang/String;

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoveryDoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {p1}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    sget-object p1, Lnet/openid/appauth/AuthorizationServiceDiscovery;->MANDATORY_METADATA:Ljava/util/List;

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 197
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;

    invoke-direct {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private static bool(Ljava/lang/String;Z)Lnet/openid/appauth/JsonUtil$BooleanField;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 618
    new-instance v0, Lnet/openid/appauth/JsonUtil$BooleanField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$BooleanField;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$Field<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 228
    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/openid/appauth/JsonUtil$ListField<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 237
    invoke-static {v0, p1}, Lnet/openid/appauth/JsonUtil;->get(Lorg/json/JSONObject;Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static str(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringField;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 590
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 604
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static strList(Ljava/lang/String;Ljava/util/List;)Lnet/openid/appauth/JsonUtil$StringListField;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/openid/appauth/JsonUtil$StringListField;"
        }
    .end annotation

    .line 611
    new-instance v0, Lnet/openid/appauth/JsonUtil$StringListField;

    invoke-direct {v0, p0, p1}, Lnet/openid/appauth/JsonUtil$StringListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static uri(Ljava/lang/String;)Lnet/openid/appauth/JsonUtil$UriField;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 597
    new-instance v0, Lnet/openid/appauth/JsonUtil$UriField;

    invoke-direct {v0, p0}, Lnet/openid/appauth/JsonUtil$UriField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAcrValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ACR_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 338
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationEndpoint()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 253
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getClaimTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIM_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 488
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 516
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClaimsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 496
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->DISPLAY_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 477
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndSessionEndpoint()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 268
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getGrantTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->GRANT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 331
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 366
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 376
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdTokenSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 356
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->ISSUER:Lnet/openid/appauth/JsonUtil$StringField;

    .line 245
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->JWKS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 286
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpPolicyUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_POLICY_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 575
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getOpTosUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->OP_TOS_URI:Lnet/openid/appauth/JsonUtil$UriField;

    .line 583
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRegistrationEndpoint()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 294
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestObjectEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 431
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 439
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObjectSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 423
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseModesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_MODES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 322
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->RESPONSE_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 312
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScopesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SCOPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 304
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceDocumentation()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SERVICE_DOCUMENTATION:Lnet/openid/appauth/JsonUtil$UriField;

    .line 505
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getSubjectTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->SUBJECT_TYPES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 346
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpoint()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 261
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTokenEndpointAuthMethodsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 454
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenEndpointAuthSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 466
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUiLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->UI_LOCALES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 527
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 402
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEncryptionEncodingValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 413
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserinfoEndpoint()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    .line 276
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getUserinfoSigningAlgorithmValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->USERINFO_SIGNING_ALG_VALUES_SUPPORTED:Lnet/openid/appauth/JsonUtil$StringListField;

    .line 389
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$ListField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isClaimsParameterSupported()Z
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->CLAIMS_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 537
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestParameterSupported()Z
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 547
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRequestUriParameterSupported()Z
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUEST_URI_PARAMETER_SUPPORTED:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 557
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public requireRequestUriRegistration()Z
    .locals 1

    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REQUIRE_REQUEST_URI_REGISTRATION:Lnet/openid/appauth/JsonUtil$BooleanField;

    .line 567
    invoke-direct {p0, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
