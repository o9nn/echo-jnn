.class public final Lnet/openid/appauth/AuthorizationException$GeneralErrors;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/AuthorizationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralErrors"
.end annotation


# static fields
.field public static final ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_DISCOVERY_DOCUMENT:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REGISTRATION_RESPONSE:Lnet/openid/appauth/AuthorizationException;

.field public static final JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

.field public static final SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final TOKEN_RESPONSE_CONSTRUCTION_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Invalid discovery document"

    .line 159
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_DISCOVERY_DOCUMENT:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x1

    const-string v1, "User cancelled flow"

    .line 165
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x2

    const-string v1, "Flow cancelled programmatically"

    .line 171
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x3

    const-string v1, "Network error"

    .line 177
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x4

    const-string v1, "Server error"

    .line 183
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x5

    const-string v1, "JSON deserialization error"

    .line 189
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x6

    const-string v1, "Token response construction error"

    .line 196
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->TOKEN_RESPONSE_CONSTRUCTION_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/4 v0, 0x7

    const-string v1, "Invalid registration response"

    .line 202
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->INVALID_REGISTRATION_RESPONSE:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x8

    const-string v1, "Unable to parse ID Token"

    .line 208
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

    const/16 v0, 0x9

    const-string v1, "Invalid ID Token"

    .line 214
    invoke-static {v0, v1}, Lnet/openid/appauth/AuthorizationException;->access$000(ILjava/lang/String;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v0

    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
