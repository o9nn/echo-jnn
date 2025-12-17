.class public final Lcom/auth0/android/util/Auth0UserAgent;
.super Ljava/lang/Object;
.source "Auth0UserAgent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/util/Auth0UserAgent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u000b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u001b\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0008R*\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/auth0/android/util/Auth0UserAgent;",
        "",
        "()V",
        "name",
        "",
        "version",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "libraryVersion",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "environment",
        "",
        "getEnvironment$annotations",
        "getEnvironment",
        "()Ljava/util/Map;",
        "getLibraryVersion",
        "()Ljava/lang/String;",
        "getName",
        "value",
        "getValue",
        "getVersion",
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
.field private static final ANDROID_KEY:Ljava/lang/String; = "android"

.field public static final Companion:Lcom/auth0/android/util/Auth0UserAgent$Companion;

.field private static final ENV_KEY:Ljava/lang/String; = "env"

.field public static final HEADER_NAME:Ljava/lang/String; = "Auth0-Client"

.field private static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "auth0.android"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private final environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/util/Auth0UserAgent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/util/Auth0UserAgent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/util/Auth0UserAgent;->Companion:Lcom/auth0/android/util/Auth0UserAgent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Auth0.Android"

    const-string v1, "2.10.2"

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/auth0/android/util/Auth0UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/auth0/android/util/Auth0UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, "Auth0.Android"

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, "2.10.2"

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/util/Auth0UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Auth0.Android"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iput-object v2, p0, Lcom/auth0/android/util/Auth0UserAgent;->name:Ljava/lang/String;

    .line 28
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "2.10.2"

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    iput-object v2, p0, Lcom/auth0/android/util/Auth0UserAgent;->version:Ljava/lang/String;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-object v3, p3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "auth0.android"

    .line 50
    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    const-string/jumbo v2, "unmodifiableMap(tmpEnv)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/auth0/android/util/Auth0UserAgent;->environment:Ljava/util/Map;

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 54
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "env"

    .line 56
    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object p1, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {p1}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "json"

    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p3, "UTF_8"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 60
    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    const-string p2, "encode(bytes, Base64.URL_SAFE or Base64.NO_WRAP)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p3, p0, Lcom/auth0/android/util/Auth0UserAgent;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, "Auth0.Android"

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-string p2, "2.10.2"

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/auth0/android/util/Auth0UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getEnvironment$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/util/Auth0UserAgent;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public final getLibraryVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/util/Auth0UserAgent;->environment:Ljava/util/Map;

    const-string v1, "auth0.android"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/util/Auth0UserAgent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/util/Auth0UserAgent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/util/Auth0UserAgent;->version:Ljava/lang/String;

    return-object v0
.end method
