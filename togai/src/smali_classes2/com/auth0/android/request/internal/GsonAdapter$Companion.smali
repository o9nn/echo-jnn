.class public final Lcom/auth0/android/request/internal/GsonAdapter$Companion;
.super Ljava/lang/Object;
.source "GsonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/request/internal/GsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00050\u0004\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\"\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u000c0\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ6\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002H\u00060\u000c0\u0004\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0008\u0010\u000f\u001a\u00020\nH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/GsonAdapter$Companion;",
        "",
        "()V",
        "forListOf",
        "Lcom/auth0/android/request/internal/GsonAdapter;",
        "",
        "T",
        "tClass",
        "Ljava/lang/Class;",
        "gson",
        "Lcom/google/gson/Gson;",
        "forMap",
        "",
        "",
        "forMapOf",
        "supplyDefaultGson",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$supplyDefaultGson(Lcom/auth0/android/request/internal/GsonAdapter$Companion;)Lcom/google/gson/Gson;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->supplyDefaultGson()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forListOf$default(Lcom/auth0/android/request/internal/GsonAdapter$Companion;Ljava/lang/Class;Lcom/google/gson/Gson;ILjava/lang/Object;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->supplyDefaultGson()Lcom/google/gson/Gson;

    move-result-object p2

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forListOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forMap$default(Lcom/auth0/android/request/internal/GsonAdapter$Companion;Lcom/google/gson/Gson;ILjava/lang/Object;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->supplyDefaultGson()Lcom/google/gson/Gson;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forMap(Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forMapOf$default(Lcom/auth0/android/request/internal/GsonAdapter$Companion;Ljava/lang/Class;Lcom/google/gson/Gson;ILjava/lang/Object;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->supplyDefaultGson()Lcom/google/gson/Gson;

    move-result-object p2

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forMapOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final supplyDefaultGson()Lcom/google/gson/Gson;
    .locals 1

    .line 44
    sget-object v0, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final forListOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/auth0/android/request/internal/GsonAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "tClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    .line 40
    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.google.gson.reflect.TypeToken<kotlin.collections.List<T of com.auth0.android.request.internal.GsonAdapter.Companion.forListOf>>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter;

    invoke-direct {v0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public final forMap(Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/auth0/android/request/internal/GsonAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter;

    new-instance v1, Lcom/auth0/android/request/internal/GsonAdapter$Companion$forMap$1;

    invoke-direct {v1}, Lcom/auth0/android/request/internal/GsonAdapter$Companion$forMap$1;-><init>()V

    check-cast v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public final forMapOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/auth0/android/request/internal/GsonAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "tClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ljava/util/Map;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    .line 28
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 29
    aput-object p1, v1, v2

    .line 26
    invoke-static {v0, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.google.gson.reflect.TypeToken<kotlin.collections.Map<kotlin.String, T of com.auth0.android.request.internal.GsonAdapter.Companion.forMapOf>>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter;

    invoke-direct {v0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V

    return-object v0
.end method
