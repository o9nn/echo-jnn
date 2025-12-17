.class public final Lcom/auth0/android/management/ManagementException;
.super Lcom/auth0/android/Auth0Exception;
.source "ManagementException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/management/ManagementException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0019\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001b\u0008\u0016\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nB\u001b\u0008\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u0016\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u0003R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0012R\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/auth0/android/management/ManagementException;",
        "Lcom/auth0/android/Auth0Exception;",
        "payload",
        "",
        "statusCode",
        "",
        "(Ljava/lang/String;I)V",
        "values",
        "",
        "",
        "(Ljava/util/Map;)V",
        "message",
        "exception",
        "(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;)V",
        "code",
        "description",
        "isNetworkError",
        "",
        "()Z",
        "<set-?>",
        "getStatusCode",
        "()I",
        "getCode",
        "getDescription",
        "getValue",
        "key",
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
.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final Companion:Lcom/auth0/android/management/ManagementException$Companion;

.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "An error occurred when trying to authenticate with the server."

.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field private static final ERROR_DESCRIPTION_KEY:Ljava/lang/String; = "error_description"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private statusCode:I

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/management/ManagementException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/management/ManagementException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/management/ManagementException;->Companion:Lcom/auth0/android/management/ManagementException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/auth0/android/management/ManagementException;-><init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An error occurred when trying to authenticate with the server."

    .line 22
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/auth0/android/management/ManagementException;-><init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    const-string v0, "a0.sdk.internal_error.plain"

    goto :goto_0

    :cond_0
    const-string v0, "a0.sdk.internal_error.empty"

    :goto_0
    iput-object v0, p0, Lcom/auth0/android/management/ManagementException;->code:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "Empty response body"

    :cond_1
    iput-object p1, p0, Lcom/auth0/android/management/ManagementException;->description:Ljava/lang/String;

    iput p2, p0, Lcom/auth0/android/management/ManagementException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Lcom/auth0/android/Auth0Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/management/ManagementException;-><init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An error occurred when trying to authenticate with the server."

    .line 28
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/auth0/android/management/ManagementException;-><init>(Ljava/lang/String;Lcom/auth0/android/Auth0Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/auth0/android/management/ManagementException;->values:Ljava/util/Map;

    const-string v0, "error"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "code"

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "a0.sdk.internal_error.unknown"

    :cond_1
    iput-object v0, p0, Lcom/auth0/android/management/ManagementException;->code:Ljava/lang/String;

    const-string v0, "description"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "error_description"

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/auth0/android/management/ManagementException;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/management/ManagementException;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "a0.sdk.internal_error.unknown"

    :goto_0
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/management/ManagementException;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v0, "a0.sdk.internal_error.unknown"

    .line 58
    invoke-virtual {p0}, Lcom/auth0/android/management/ManagementException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/auth0/android/management/ManagementException;->getCode()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Received error with code %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Failed with unknown error"

    :goto_0
    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/auth0/android/management/ManagementException;->statusCode:I

    return v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/management/ManagementException;->values:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final isNetworkError()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/auth0/android/management/ManagementException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/auth0/android/NetworkErrorException;

    return v0
.end method
