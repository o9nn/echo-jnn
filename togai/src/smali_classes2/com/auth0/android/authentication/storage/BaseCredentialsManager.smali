.class public abstract Lcom/auth0/android/authentication/storage/BaseCredentialsManager;
.super Ljava/lang/Object;
.source "BaseCredentialsManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCredentialsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCredentialsManager.kt\ncom/auth0/android/authentication/storage/BaseCredentialsManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,93:1\n37#2,2:94\n37#2,2:96\n*S KotlinDebug\n*F\n+ 1 BaseCredentialsManager.kt\ncom/auth0/android/authentication/storage/BaseCredentialsManager\n*L\n61#1:94,2\n63#1:96,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u001f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u001c\u0010\u0015\u001a\u00020\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017H&J.\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017H&J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000eH\u0004J\u001c\u0010!\u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001b2\u0008\u0010#\u001a\u0004\u0018\u00010\u001bH\u0004J\u0008\u0010$\u001a\u00020\u001fH&J\u0010\u0010$\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u000eH&J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u0018H&J\u000e\u0010\'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\nJ\u0018\u0010)\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0004R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006*"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/BaseCredentialsManager;",
        "",
        "authenticationClient",
        "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "storage",
        "Lcom/auth0/android/authentication/storage/Storage;",
        "jwtDecoder",
        "Lcom/auth0/android/authentication/storage/JWTDecoder;",
        "(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;)V",
        "_clock",
        "Lcom/auth0/android/util/Clock;",
        "getAuthenticationClient",
        "()Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "currentTimeInMillis",
        "",
        "getCurrentTimeInMillis$auth0_release",
        "()J",
        "getStorage",
        "()Lcom/auth0/android/authentication/storage/Storage;",
        "clearCredentials",
        "",
        "getCredentials",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        "scope",
        "",
        "minTtl",
        "",
        "hasExpired",
        "",
        "expiresAt",
        "hasScopeChanged",
        "storedScope",
        "requiredScope",
        "hasValidCredentials",
        "saveCredentials",
        "credentials",
        "setClock",
        "clock",
        "willExpire",
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
.field private _clock:Lcom/auth0/android/util/Clock;

.field private final authenticationClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

.field private final jwtDecoder:Lcom/auth0/android/authentication/storage/JWTDecoder;

.field private final storage:Lcom/auth0/android/authentication/storage/Storage;


# direct methods
.method public constructor <init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;)V
    .locals 1

    const-string v0, "authenticationClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwtDecoder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->authenticationClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    iput-object p2, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iput-object p3, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->jwtDecoder:Lcom/auth0/android/authentication/storage/JWTDecoder;

    .line 22
    new-instance p1, Lcom/auth0/android/authentication/storage/ClockImpl;

    invoke-direct {p1}, Lcom/auth0/android/authentication/storage/ClockImpl;-><init>()V

    check-cast p1, Lcom/auth0/android/util/Clock;

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->_clock:Lcom/auth0/android/util/Clock;

    return-void
.end method


# virtual methods
.method public abstract clearCredentials()V
.end method

.method protected final getAuthenticationClient()Lcom/auth0/android/authentication/AuthenticationAPIClient;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->authenticationClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    return-object v0
.end method

.method public abstract getCredentials(Lcom/auth0/android/callback/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCredentials(Ljava/lang/String;ILcom/auth0/android/callback/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getCurrentTimeInMillis$auth0_release()J
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->_clock:Lcom/auth0/android/util/Clock;

    .line 48
    invoke-interface {v0}, Lcom/auth0/android/util/Clock;->getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getStorage()Lcom/auth0/android/authentication/storage/Storage;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->storage:Lcom/auth0/android/authentication/storage/Storage;

    return-object v0
.end method

.method protected final hasExpired(J)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->getCurrentTimeInMillis$auth0_release()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final hasScopeChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 61
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, " "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v0, [Ljava/lang/String;

    .line 95
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, [Ljava/lang/String;

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 63
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array p2, v0, [Ljava/lang/String;

    .line 97
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 63
    check-cast p1, [Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 65
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract hasValidCredentials()Z
.end method

.method public abstract hasValidCredentials(J)Z
.end method

.method public abstract saveCredentials(Lcom/auth0/android/result/Credentials;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation
.end method

.method public final setClock(Lcom/auth0/android/util/Clock;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->_clock:Lcom/auth0/android/util/Clock;

    return-void
.end method

.method protected final willExpire(JJ)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;->getCurrentTimeInMillis$auth0_release()J

    move-result-wide v2

    const/16 v0, 0x3e8

    int-to-long v4, v0

    mul-long/2addr p3, v4

    add-long/2addr v2, p3

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
