.class public final Lcom/auth0/android/provider/UnexpectedIdTokenException;
.super Lcom/auth0/android/provider/TokenValidationException;
.source "TokenValidationExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/UnexpectedIdTokenException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/auth0/android/provider/UnexpectedIdTokenException;",
        "Lcom/auth0/android/provider/TokenValidationException;",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
        "toString",
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
.field private static final Companion:Lcom/auth0/android/provider/UnexpectedIdTokenException$Companion;

.field private static final MESSAGE:Ljava/lang/String; = "ID token could not be decoded"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/provider/UnexpectedIdTokenException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/UnexpectedIdTokenException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/UnexpectedIdTokenException;->Companion:Lcom/auth0/android/provider/UnexpectedIdTokenException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "ID token could not be decoded"

    .line 441
    invoke-direct {p0, v0, p1}, Lcom/auth0/android/provider/TokenValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/auth0/android/provider/UnexpectedIdTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
