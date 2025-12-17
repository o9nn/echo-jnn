.class public Lcom/auth0/android/result/Credentials;
.super Ljava/lang/Object;
.source "Credentials.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\nJ\u0008\u0010 \u001a\u00020\u0003H\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8QX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR*\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006@@X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000cR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000cR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000cR\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/auth0/android/result/Credentials;",
        "",
        "idToken",
        "",
        "accessToken",
        "type",
        "refreshToken",
        "expiresAt",
        "Ljava/util/Date;",
        "scope",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V",
        "getAccessToken",
        "()Ljava/lang/String;",
        "currentTimeInMillis",
        "",
        "getCurrentTimeInMillis$auth0_release",
        "()J",
        "getExpiresAt",
        "()Ljava/util/Date;",
        "getIdToken",
        "<set-?>",
        "recoveryCode",
        "getRecoveryCode",
        "setRecoveryCode$auth0_release",
        "(Ljava/lang/String;)V",
        "getRefreshToken",
        "getScope",
        "getType",
        "user",
        "Lcom/auth0/android/result/UserProfile;",
        "getUser",
        "()Lcom/auth0/android/result/UserProfile;",
        "toString",
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


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private final expiresAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_at"
    .end annotation
.end field

.field private final idToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_token"
    .end annotation
.end field

.field private recoveryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recovery_code"
    .end annotation
.end field

.field private final refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private final scope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiresAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/Credentials;->idToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/Credentials;->accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/auth0/android/result/Credentials;->refreshToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    iput-object p6, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTimeInMillis$auth0_release()J
    .locals 2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getExpiresAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecoveryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->recoveryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/auth0/android/result/UserProfile;
    .locals 3

    .line 83
    sget-object v0, Lcom/auth0/android/request/internal/Jwt;->Companion:Lcom/auth0/android/request/internal/Jwt$Companion;

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->idToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/auth0/android/request/internal/Jwt$Companion;->splitToken(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 84
    sget-object v1, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v1}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v1

    .line 85
    sget-object v2, Lcom/auth0/android/request/internal/Jwt;->Companion:Lcom/auth0/android/request/internal/Jwt$Companion;

    invoke-virtual {v2, v0}, Lcom/auth0/android/request/internal/Jwt$Companion;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/auth0/android/result/UserProfile;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(Jwt.decode\u2026 UserProfile::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/auth0/android/result/UserProfile;

    return-object v0
.end method

.method public final setRecoveryCode$auth0_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/result/Credentials;->recoveryCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials(idToken=\'xxxxx\', accessToken=\'xxxxx\', type=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', refreshToken=\'xxxxx\', expiresAt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
