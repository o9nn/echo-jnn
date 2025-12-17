.class public final Lcom/auth0/android/request/internal/Jwt$Companion;
.super Ljava/lang/Object;
.source "Jwt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/request/internal/Jwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJwt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Jwt.kt\ncom/auth0/android/request/internal/Jwt$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,88:1\n37#2,2:89\n*S KotlinDebug\n*F\n+ 1 Jwt.kt\ncom/auth0/android/request/internal/Jwt$Companion\n*L\n65#1:89,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0019\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/Jwt$Companion;",
        "",
        "()V",
        "decodeBase64",
        "",
        "encoded",
        "splitToken",
        "",
        "token",
        "(Ljava/lang/String;)[Ljava/lang/String;",
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/auth0/android/request/internal/Jwt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "encoded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 83
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decode(encoded, Base64.U\u2026RAP or Base64.NO_PADDING)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/String;

    .line 84
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final splitToken(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 90
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 65
    check-cast v1, [Ljava/lang/String;

    .line 66
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    aget-object p1, v1, v2

    aget-object v0, v1, v4

    const-string v1, ""

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_0
    array-length p1, v1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-object v1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 74
    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The token was expected to have 3 parts, but got %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
