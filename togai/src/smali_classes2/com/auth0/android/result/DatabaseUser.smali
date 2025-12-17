.class public final Lcom/auth0/android/result/DatabaseUser;
.super Ljava/lang/Object;
.source "DatabaseUser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/auth0/android/result/DatabaseUser;",
        "",
        "email",
        "",
        "username",
        "isEmailVerified",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "getEmail",
        "()Ljava/lang/String;",
        "()Z",
        "getUsername",
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
.field private final email:Ljava/lang/String;
    .annotation runtime Lcom/auth0/android/request/internal/JsonRequired;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private final isEmailVerified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_verified"
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/DatabaseUser;->email:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/DatabaseUser;->username:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/auth0/android/result/DatabaseUser;->isEmailVerified:Z

    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/DatabaseUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/DatabaseUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/auth0/android/result/DatabaseUser;->isEmailVerified:Z

    return v0
.end method
