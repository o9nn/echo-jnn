.class public final Lcom/auth0/android/authentication/ParameterBuilder$Companion;
.super Ljava/lang/Object;
.source "ParameterBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/authentication/ParameterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0007J\u001e\u0010\u0019\u001a\u00020\u00182\u0014\u0008\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/auth0/android/authentication/ParameterBuilder$Companion;",
        "",
        "()V",
        "AUDIENCE_KEY",
        "",
        "CLIENT_ID_KEY",
        "CONNECTION_KEY",
        "GRANT_TYPE_AUTHORIZATION_CODE",
        "GRANT_TYPE_KEY",
        "GRANT_TYPE_MFA_OOB",
        "GRANT_TYPE_MFA_OTP",
        "GRANT_TYPE_MFA_RECOVERY_CODE",
        "GRANT_TYPE_PASSWORD",
        "GRANT_TYPE_PASSWORDLESS_OTP",
        "GRANT_TYPE_PASSWORD_REALM",
        "GRANT_TYPE_REFRESH_TOKEN",
        "GRANT_TYPE_TOKEN_EXCHANGE",
        "REALM_KEY",
        "REFRESH_TOKEN_KEY",
        "SCOPE_KEY",
        "SCOPE_OFFLINE_ACCESS",
        "SCOPE_OPENID",
        "SEND_KEY",
        "newAuthenticationBuilder",
        "Lcom/auth0/android/authentication/ParameterBuilder;",
        "newBuilder",
        "parameters",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 192
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-static {p0, v0, v1, v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "openid profile email"

    .line 181
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setScope(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilder()Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilder(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/authentication/ParameterBuilder;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/auth0/android/authentication/ParameterBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/auth0/android/authentication/ParameterBuilder;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
