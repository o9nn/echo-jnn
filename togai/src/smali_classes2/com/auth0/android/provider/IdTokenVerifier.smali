.class public final Lcom/auth0/android/provider/IdTokenVerifier;
.super Ljava/lang/Object;
.source "IdTokenVerifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/IdTokenVerifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/auth0/android/provider/IdTokenVerifier;",
        "",
        "()V",
        "verify",
        "",
        "token",
        "Lcom/auth0/android/request/internal/Jwt;",
        "verifyOptions",
        "Lcom/auth0/android/provider/IdTokenVerificationOptions;",
        "verifySignature",
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
.field public static final Companion:Lcom/auth0/android/provider/IdTokenVerifier$Companion;

.field private static final DEFAULT_CLOCK_SKEW:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/provider/IdTokenVerifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/IdTokenVerifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/IdTokenVerifier;->Companion:Lcom/auth0/android/provider/IdTokenVerifier$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Lcom/auth0/android/request/internal/Jwt;Lcom/auth0/android/provider/IdTokenVerificationOptions;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/provider/TokenValidationException;
        }
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifyOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getSignatureVerifier()Lcom/auth0/android/provider/SignatureVerifier;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Lcom/auth0/android/provider/SignatureVerifier;->verify(Lcom/auth0/android/request/internal/Jwt;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/auth0/android/provider/SignatureVerifierMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/SignatureVerifierMissingException;-><init>()V

    throw p1

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getIssuer()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 24
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getIssuer()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getIssuer()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 27
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getSubject()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_19

    .line 30
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getAudience()Ljava/util/List;

    move-result-object p3

    .line 31
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 34
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getAudience()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getClock()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getClock()Ljava/util/Date;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 40
    :goto_2
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getClockSkew()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getClockSkew()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    const/16 v3, 0x3c

    .line 41
    :goto_3
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getExpiresAt()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 44
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getExpiresAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v4, 0xd

    .line 45
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 46
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    const/16 v7, 0x3e8

    if-nez v6, :cond_15

    .line 50
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getIssuedAt()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 53
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getNonce()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 54
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 55
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 58
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    .line 59
    :cond_5
    new-instance p1, Lcom/auth0/android/provider/NonceClaimMismatchException;

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getNonce()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v5}, Lcom/auth0/android/provider/NonceClaimMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_6
    new-instance p1, Lcom/auth0/android/provider/NonceClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/NonceClaimMissingException;-><init>()V

    throw p1

    .line 62
    :cond_7
    :goto_4
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getOrganization()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    const/4 v6, 0x0

    const/4 v8, 0x2

    const-string v9, "org_"

    .line 63
    invoke-static {v5, v9, v6, v8, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 64
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getOrganizationId()Ljava/lang/String;

    move-result-object v0

    .line 65
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 68
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    .line 69
    :cond_8
    new-instance p1, Lcom/auth0/android/provider/OrgClaimMismatchException;

    invoke-direct {p1, v5, v0}, Lcom/auth0/android/provider/OrgClaimMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_9
    new-instance p1, Lcom/auth0/android/provider/OrgClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/OrgClaimMissingException;-><init>()V

    throw p1

    .line 72
    :cond_a
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getOrganizationName()Ljava/lang/String;

    move-result-object v0

    .line 73
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 76
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    .line 77
    :cond_b
    new-instance p1, Lcom/auth0/android/provider/OrgNameClaimMismatchException;

    invoke-direct {p1, v5, v0}, Lcom/auth0/android/provider/OrgNameClaimMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_c
    new-instance p1, Lcom/auth0/android/provider/OrgNameClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/OrgNameClaimMissingException;-><init>()V

    throw p1

    .line 81
    :cond_d
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_10

    .line 82
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getAuthorizedParty()Ljava/lang/String;

    move-result-object p3

    .line 83
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 86
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getAudience()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    .line 87
    :cond_e
    new-instance p1, Lcom/auth0/android/provider/AzpClaimMismatchException;

    .line 88
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getAudience()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-direct {p1, p2, p3}, Lcom/auth0/android/provider/AzpClaimMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_f
    new-instance p1, Lcom/auth0/android/provider/AzpClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/AzpClaimMissingException;-><init>()V

    throw p1

    .line 93
    :cond_10
    :goto_6
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getMaxAge()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 94
    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getAuthenticationTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 96
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getMaxAge()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 98
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 99
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 100
    invoke-virtual {v2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_7

    .line 101
    :cond_11
    new-instance p2, Lcom/auth0/android/provider/AuthTimeClaimMismatchException;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    int-to-long v2, v7

    div-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/auth0/android/provider/AuthTimeClaimMismatchException;-><init>(JLjava/lang/Long;)V

    throw p2

    .line 95
    :cond_12
    new-instance p1, Lcom/auth0/android/provider/AuthTimeClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/AuthTimeClaimMissingException;-><init>()V

    throw p1

    :cond_13
    :goto_7
    return-void

    .line 51
    :cond_14
    new-instance p1, Lcom/auth0/android/provider/IatClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/IatClaimMissingException;-><init>()V

    throw p1

    .line 48
    :cond_15
    new-instance p1, Lcom/auth0/android/provider/IdTokenExpiredException;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    int-to-long v0, v7

    div-long/2addr p2, v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/auth0/android/provider/IdTokenExpiredException;-><init>(JLjava/lang/Long;)V

    throw p1

    .line 42
    :cond_16
    new-instance p1, Lcom/auth0/android/provider/ExpClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/ExpClaimMissingException;-><init>()V

    throw p1

    .line 35
    :cond_17
    new-instance p3, Lcom/auth0/android/provider/AudClaimMismatchException;

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getAudience()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getAudience()Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/auth0/android/provider/AudClaimMismatchException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p3

    .line 32
    :cond_18
    new-instance p1, Lcom/auth0/android/provider/AudClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/AudClaimMissingException;-><init>()V

    throw p1

    .line 28
    :cond_19
    new-instance p1, Lcom/auth0/android/provider/SubClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/SubClaimMissingException;-><init>()V

    throw p1

    .line 25
    :cond_1a
    new-instance p3, Lcom/auth0/android/provider/IssClaimMismatchException;

    invoke-virtual {p2}, Lcom/auth0/android/provider/IdTokenVerificationOptions;->getIssuer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/auth0/android/request/internal/Jwt;->getIssuer()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/auth0/android/provider/IssClaimMismatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 22
    :cond_1b
    new-instance p1, Lcom/auth0/android/provider/IssClaimMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/IssClaimMissingException;-><init>()V

    throw p1
.end method
