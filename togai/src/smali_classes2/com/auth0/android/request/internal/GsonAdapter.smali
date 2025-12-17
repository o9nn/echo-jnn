.class public final Lcom/auth0/android/request/internal/GsonAdapter;
.super Ljava/lang/Object;
.source "GsonAdapter.kt"

# interfaces
.implements Lcom/auth0/android/request/JsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/internal/GsonAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/auth0/android/request/JsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u0012*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012B\u001f\u0008\u0010\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0010\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nB\u0015\u0008\u0002\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0002\u0010\rJ\u0015\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u0010\u0011R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/GsonAdapter;",
        "T",
        "Lcom/auth0/android/request/JsonAdapter;",
        "tClass",
        "Ljava/lang/Class;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Ljava/lang/Class;Lcom/google/gson/Gson;)V",
        "tTypeToken",
        "Lcom/google/gson/reflect/TypeToken;",
        "(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V",
        "adapter",
        "Lcom/google/gson/TypeAdapter;",
        "(Lcom/google/gson/TypeAdapter;)V",
        "fromJson",
        "reader",
        "Ljava/io/Reader;",
        "(Ljava/io/Reader;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;


# instance fields
.field private final adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/GsonAdapter;->adapter:Lcom/google/gson/TypeAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    const-string v0, "tTypeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    const-string p2, "gson.getAdapter(tTypeToken)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    .line 54
    invoke-static {p2}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->access$supplyDefaultGson(Lcom/auth0/android/request/internal/GsonAdapter$Companion;)Lcom/google/gson/Gson;

    move-result-object p2

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/Gson;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    const-string v0, "tClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    const-string p2, "gson.getAdapter(tClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/google/gson/Gson;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    .line 49
    invoke-static {p2}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->access$supplyDefaultGson(Lcom/auth0/android/request/internal/GsonAdapter$Companion;)Lcom/google/gson/Gson;

    move-result-object p2

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/GsonAdapter;->adapter:Lcom/google/gson/TypeAdapter;

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
