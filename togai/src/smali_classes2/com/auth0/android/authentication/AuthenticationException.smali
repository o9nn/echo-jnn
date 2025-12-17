.class public final Lcom/auth0/android/authentication/AuthenticationException;
.super Lcom/auth0/android/Auth0Exception;
.source "AuthenticationException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/authentication/AuthenticationException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008!\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 82\u00020\u0001:\u00018B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B!\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\nB#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0007\u001a\u00060\u0008j\u0002`\t\u00a2\u0006\u0002\u0010\u000bB\u0019\u0008\u0016\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fB%\u0008\u0017\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0013J\u0006\u00102\u001a\u00020\u0003J\u0006\u00103\u001a\u00020\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u00122\u0006\u00105\u001a\u00020\u0003J\u0008\u00106\u001a\u000207H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u00158FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u001a\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u001b\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0016R\u0011\u0010\u001c\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0016R\u0011\u0010\u001d\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0016R\u0011\u0010\u001e\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0016R\u0011\u0010\u001f\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0016R\u0011\u0010 \u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0016R\u0011\u0010!\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0016R\u0011\u0010\"\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0016R\u0011\u0010#\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0016R\u0011\u0010$\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0016R\u0011\u0010%\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0016R\u0011\u0010&\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0016R\u0011\u0010\'\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u0016R\u0011\u0010(\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0016R\u0011\u0010)\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0016R\u0011\u0010*\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0016R\u0011\u0010+\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0016R\u0011\u0010,\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0016R\u0011\u0010-\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u0016R\u0011\u0010.\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0016R\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "Lcom/auth0/android/Auth0Exception;",
        "code",
        "",
        "description",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "message",
        "cause",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Ljava/lang/String;Ljava/lang/Exception;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V",
        "payload",
        "statusCode",
        "",
        "(Ljava/lang/String;I)V",
        "values",
        "",
        "",
        "(Ljava/util/Map;I)V",
        "isAccessDenied",
        "",
        "()Z",
        "isAuthenticationCanceled",
        "isAuthenticationCanceled$annotations",
        "()V",
        "isBrowserAppNotAvailable",
        "isCanceled",
        "isIdTokenValidationError",
        "isInvalidAuthorizeURL",
        "isInvalidConfiguration",
        "isInvalidCredentials",
        "isInvalidRefreshToken",
        "isLoginRequired",
        "isMultifactorCodeInvalid",
        "isMultifactorEnrollRequired",
        "isMultifactorRequired",
        "isMultifactorTokenInvalid",
        "isNetworkError",
        "isPKCENotAvailable",
        "isPasswordAlreadyUsed",
        "isPasswordLeaked",
        "isPasswordNotStrongEnough",
        "isRefreshTokenDeleted",
        "isRuleError",
        "isTooManyAttempts",
        "isVerificationRequired",
        "<set-?>",
        "getStatusCode",
        "()I",
        "getCode",
        "getDescription",
        "getValue",
        "key",
        "warnIfOIDCError",
        "",
        "Companion",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final Companion:Lcom/auth0/android/authentication/AuthenticationException$Companion;

.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "An error occurred when trying to authenticate with the server."

.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final ERROR_DESCRIPTION_KEY:Ljava/lang/String; = "error_description"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_OIDC_ACCESS_TOKEN:Ljava/lang/String; = "OIDC conformant clients cannot use /oauth/access_token"

.field private static final ERROR_OIDC_RO:Ljava/lang/String; = "OIDC conformant clients cannot use /oauth/ro"

.field public static final ERROR_VALUE_AUTHENTICATION_CANCELED:Ljava/lang/String; = "a0.authentication_canceled"

.field private static final NAME_KEY:Ljava/lang/String; = "name"


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private statusCode:I

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/authentication/AuthenticationException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/authentication/AuthenticationException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/authentication/AuthenticationException;->Companion:Lcom/auth0/android/authentication/AuthenticationException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An error occurred when trying to authenticate with the server."

    .line 37
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    const-string v0, "a0.sdk.internal_error.plain"

    goto :goto_0

    :cond_0
    const-string v0, "a0.sdk.internal_error.empty"

    :goto_0
    iput-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "Empty response body"

    :cond_1
    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    iput p2, p0, Lcom/auth0/android/authentication/AuthenticationException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Lcom/auth0/android/Auth0Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An error occurred when trying to authenticate with the server."

    .line 25
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "An error occurred when trying to authenticate with the server."

    .line 32
    invoke-direct {p0, v0, p3}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An error occurred when trying to authenticate with the server."

    .line 44
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lcom/auth0/android/authentication/AuthenticationException;->statusCode:I

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->values:Ljava/util/Map;

    const-string p2, "error"

    .line 48
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "code"

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "a0.sdk.internal_error.unknown"

    :cond_1
    iput-object p2, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    const-string p2, "description"

    .line 50
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "error_description"

    .line 51
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/auth0/android/authentication/AuthenticationException;->warnIfOIDCError()V

    return-void

    .line 55
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 57
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_3
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->isPasswordNotStrongEnough()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 59
    new-instance p2, Lcom/auth0/android/authentication/PasswordStrengthErrorParser;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p2, p1}, Lcom/auth0/android/authentication/PasswordStrengthErrorParser;-><init>(Ljava/util/Map;)V

    .line 60
    invoke-virtual {p2}, Lcom/auth0/android/authentication/PasswordStrengthErrorParser;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/util/Map;I)V

    return-void
.end method

.method public static synthetic isAuthenticationCanceled$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This property can refer to both log in and log out actions."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isCanceled"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private final warnIfOIDCError()V
    .locals 2

    const-string v0, "invalid_request"

    .line 65
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OIDC conformant clients cannot use /oauth/access_token"

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OIDC conformant clients cannot use /oauth/ro"

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lcom/auth0/android/authentication/AuthenticationAPIClient;

    const-string v0, "AuthenticationAPIClient"

    const-string v1, "Your Auth0 Application is configured as \'OIDC Conformant\' but this instance it\'s not. To authenticate you will need to enable the flag by calling Auth0#setOIDCConformant(true) on the Auth0 instance you used in the setup."

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "a0.sdk.internal_error.unknown"

    :goto_0
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    .line 89
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v0, "a0.sdk.internal_error.unknown"

    .line 92
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCode()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Received error with code %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Failed with unknown error"

    :goto_0
    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->statusCode:I

    return v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final isAccessDenied()Z
    .locals 2

    const-string v0, "access_denied"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 191
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isAuthenticationCanceled()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public final isBrowserAppNotAvailable()Z
    .locals 2

    const-string v0, "a0.browser_not_available"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 122
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    const-string v0, "a0.authentication_canceled"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isIdTokenValidationError()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/auth0/android/provider/TokenValidationException;

    return v0
.end method

.method public final isInvalidAuthorizeURL()Z
    .locals 2

    const-string v0, "a0.invalid_authorize_url"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 132
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInvalidConfiguration()Z
    .locals 2

    const-string v0, "a0.invalid_configuration"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 136
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isInvalidCredentials()Z
    .locals 3

    const-string v0, "invalid_user_password"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 187
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    const-string v1, "invalid_grant"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Wrong email or password."

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Wrong phone number or verification code."

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Wrong email or verification code."

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isInvalidRefreshToken()Z
    .locals 2

    const-string v0, "invalid_grant"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 205
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unknown or invalid refresh token."

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    .line 206
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLoginRequired()Z
    .locals 2

    const-string v0, "login_required"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isMultifactorCodeInvalid()Z
    .locals 3

    const-string v0, "a0.mfa_invalid_code"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 165
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    const-string v1, "invalid_grant"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid otp_code."

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    const-string v2, "Invalid binding_code."

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 167
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    const-string v1, "MFA Authorization rejected."

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isMultifactorEnrollRequired()Z
    .locals 2

    const-string v0, "a0.mfa_registration_required"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 152
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unsupported_challenge_type"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isMultifactorRequired()Z
    .locals 2

    const-string v0, "mfa_required"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "a0.mfa_required"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isMultifactorTokenInvalid()Z
    .locals 2

    const-string v0, "expired_token"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mfa_token is expired"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "invalid_grant"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 161
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Malformed mfa_token"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNetworkError()Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/auth0/android/NetworkErrorException;

    if-nez v0, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    instance-of v0, v1, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0
.end method

.method public final isPKCENotAvailable()Z
    .locals 2

    const-string v0, "a0.pkce_not_available"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPasswordAlreadyUsed()Z
    .locals 2

    const-string v0, "invalid_password"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 175
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->values:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PasswordHistoryError"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPasswordLeaked()Z
    .locals 2

    const-string v0, "password_leaked"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 179
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPasswordNotStrongEnough()Z
    .locals 2

    const-string v0, "invalid_password"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 171
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationException;->values:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PasswordStrengthError"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRefreshTokenDeleted()Z
    .locals 2

    const-string v0, "invalid_grant"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 199
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x193

    iget v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->statusCode:I

    if-ne v0, v1, :cond_0

    const-string v0, "The refresh_token was generated for a user who doesn\'t exist anymore."

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->description:Ljava/lang/String;

    .line 201
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRuleError()Z
    .locals 2

    const-string/jumbo v0, "unauthorized"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 183
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isTooManyAttempts()Z
    .locals 2

    const-string/jumbo v0, "too_many_attempts"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 214
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isVerificationRequired()Z
    .locals 2

    const-string v0, "requires_verification"

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationException;->code:Ljava/lang/String;

    .line 156
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
