.class public final Lcom/auth0/android/provider/WebAuthProvider;
.super Ljava/lang/Object;
.source "WebAuthProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/WebAuthProvider$Builder;,
        Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\r\u0010\u0016\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0008\u0017J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068A@BX\u0081\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/auth0/android/provider/WebAuthProvider;",
        "",
        "()V",
        "TAG",
        "",
        "<set-?>",
        "Lcom/auth0/android/provider/ResumableManager;",
        "managerInstance",
        "getManagerInstance$auth0_release$annotations",
        "getManagerInstance$auth0_release",
        "()Lcom/auth0/android/provider/ResumableManager;",
        "failure",
        "",
        "exception",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "failure$auth0_release",
        "login",
        "Lcom/auth0/android/provider/WebAuthProvider$Builder;",
        "account",
        "Lcom/auth0/android/Auth0;",
        "logout",
        "Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;",
        "resetManagerInstance",
        "resetManagerInstance$auth0_release",
        "resume",
        "",
        "intent",
        "Landroid/content/Intent;",
        "Builder",
        "LogoutBuilder",
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
.field public static final INSTANCE:Lcom/auth0/android/provider/WebAuthProvider;

.field private static final TAG:Ljava/lang/String;

.field private static managerInstance:Lcom/auth0/android/provider/ResumableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider;

    invoke-direct {v0}, Lcom/auth0/android/provider/WebAuthProvider;-><init>()V

    sput-object v0, Lcom/auth0/android/provider/WebAuthProvider;->INSTANCE:Lcom/auth0/android/provider/WebAuthProvider;

    const-class v0, Lcom/auth0/android/provider/WebAuthProvider;

    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/auth0/android/provider/WebAuthProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/auth0/android/provider/WebAuthProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setManagerInstance$p(Lcom/auth0/android/provider/ResumableManager;)V
    .locals 0

    sput-object p0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    return-void
.end method

.method public static final getManagerInstance$auth0_release()Lcom/auth0/android/provider/ResumableManager;
    .locals 1

    sget-object v0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    return-object v0
.end method

.method public static synthetic getManagerInstance$auth0_release$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final login(Lcom/auth0/android/Auth0;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "account"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider$Builder;

    invoke-direct {v0, p0}, Lcom/auth0/android/provider/WebAuthProvider$Builder;-><init>(Lcom/auth0/android/Auth0;)V

    return-object v0
.end method

.method public static final logout(Lcom/auth0/android/Auth0;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "account"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;

    invoke-direct {v0, p0}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;-><init>(Lcom/auth0/android/Auth0;)V

    return-object v0
.end method

.method public static final resetManagerInstance$auth0_release()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    return-void
.end method

.method public static final resume(Landroid/content/Intent;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    if-nez v0, :cond_0

    sget-object p0, Lcom/auth0/android/provider/WebAuthProvider;->TAG:Ljava/lang/String;

    const-string v0, "There is no previous instance of this provider."

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_0
    new-instance v0, Lcom/auth0/android/provider/AuthorizeResult;

    invoke-direct {v0, p0}, Lcom/auth0/android/provider/AuthorizeResult;-><init>(Landroid/content/Intent;)V

    sget-object p0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    .line 77
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/auth0/android/provider/ResumableManager;->resume(Lcom/auth0/android/provider/AuthorizeResult;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 79
    invoke-static {}, Lcom/auth0/android/provider/WebAuthProvider;->resetManagerInstance$auth0_release()V

    :cond_1
    return p0
.end method


# virtual methods
.method public final failure$auth0_release(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/auth0/android/provider/WebAuthProvider;->managerInstance:Lcom/auth0/android/provider/ResumableManager;

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/auth0/android/provider/ResumableManager;->failure(Lcom/auth0/android/authentication/AuthenticationException;)V

    return-void
.end method
