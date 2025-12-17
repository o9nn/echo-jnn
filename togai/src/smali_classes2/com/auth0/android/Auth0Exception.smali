.class public Lcom/auth0/android/Auth0Exception;
.super Ljava/lang/RuntimeException;
.source "Auth0Exception.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/Auth0Exception$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00082\u00060\u0001j\u0002`\u0002:\u0001\u0008B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/auth0/android/Auth0Exception;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "message",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
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
.field public static final Companion:Lcom/auth0/android/Auth0Exception$Companion;

.field public static final EMPTY_BODY_ERROR:Ljava/lang/String; = "a0.sdk.internal_error.empty"

.field public static final EMPTY_RESPONSE_BODY_DESCRIPTION:Ljava/lang/String; = "Empty response body"

.field public static final NON_JSON_ERROR:Ljava/lang/String; = "a0.sdk.internal_error.plain"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "a0.sdk.internal_error.unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/Auth0Exception$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/Auth0Exception$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/Auth0Exception;->Companion:Lcom/auth0/android/Auth0Exception$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/Auth0Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
