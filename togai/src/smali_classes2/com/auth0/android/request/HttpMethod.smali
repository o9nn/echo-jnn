.class public abstract Lcom/auth0/android/request/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/HttpMethod$DELETE;,
        Lcom/auth0/android/request/HttpMethod$GET;,
        Lcom/auth0/android/request/HttpMethod$PATCH;,
        Lcom/auth0/android/request/HttpMethod$POST;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0005\u0006\u0007\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u0082\u0001\u0004\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/auth0/android/request/HttpMethod;",
        "",
        "()V",
        "toString",
        "",
        "DELETE",
        "GET",
        "PATCH",
        "POST",
        "Lcom/auth0/android/request/HttpMethod$DELETE;",
        "Lcom/auth0/android/request/HttpMethod$GET;",
        "Lcom/auth0/android/request/HttpMethod$PATCH;",
        "Lcom/auth0/android/request/HttpMethod$POST;",
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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/auth0/android/request/HttpMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/auth0/android/request/HttpMethod$GET;->INSTANCE:Lcom/auth0/android/request/HttpMethod$GET;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GET"

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/auth0/android/request/HttpMethod$POST;->INSTANCE:Lcom/auth0/android/request/HttpMethod$POST;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "POST"

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/auth0/android/request/HttpMethod$PATCH;->INSTANCE:Lcom/auth0/android/request/HttpMethod$PATCH;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PATCH"

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/auth0/android/request/HttpMethod$DELETE;->INSTANCE:Lcom/auth0/android/request/HttpMethod$DELETE;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DELETE"

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
