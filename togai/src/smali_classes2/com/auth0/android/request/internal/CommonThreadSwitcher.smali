.class public final Lcom/auth0/android/request/internal/CommonThreadSwitcher;
.super Ljava/lang/Object;
.source "ThreadSwitcher.kt"

# interfaces
.implements Lcom/auth0/android/request/internal/ThreadSwitcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0004\u001a\u00020\u00018\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0003\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/auth0/android/request/internal/CommonThreadSwitcher;",
        "Lcom/auth0/android/request/internal/ThreadSwitcher;",
        "defaultThreadSwitcher",
        "(Lcom/auth0/android/request/internal/ThreadSwitcher;)V",
        "delegateThreadSwitcher",
        "getDelegateThreadSwitcher$auth0_release$annotations",
        "()V",
        "getDelegateThreadSwitcher$auth0_release",
        "()Lcom/auth0/android/request/internal/ThreadSwitcher;",
        "setDelegateThreadSwitcher$auth0_release",
        "backgroundThread",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "mainThread",
        "setDelegate",
        "threadSwitcher",
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
.field public static final Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

.field private static volatile INSTANCE:Lcom/auth0/android/request/internal/CommonThreadSwitcher;


# instance fields
.field private final defaultThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

.field private delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/request/internal/ThreadSwitcher;)V
    .locals 1

    const-string v0, "defaultThreadSwitcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->defaultThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    iput-object p1, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/auth0/android/request/internal/CommonThreadSwitcher;
    .locals 1

    sget-object v0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->INSTANCE:Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/auth0/android/request/internal/CommonThreadSwitcher;)V
    .locals 0

    sput-object p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->INSTANCE:Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    return-void
.end method

.method public static synthetic getDelegateThreadSwitcher$auth0_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInstance()Lcom/auth0/android/request/internal/CommonThreadSwitcher;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;->getInstance()Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    .line 89
    invoke-interface {v0, p1}, Lcom/auth0/android/request/internal/ThreadSwitcher;->backgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDelegateThreadSwitcher$auth0_release()Lcom/auth0/android/request/internal/ThreadSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    return-object v0
.end method

.method public mainThread(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    .line 85
    invoke-interface {v0, p1}, Lcom/auth0/android/request/internal/ThreadSwitcher;->mainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDelegate(Lcom/auth0/android/request/internal/ThreadSwitcher;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->defaultThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    :cond_0
    iput-object p1, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    return-void
.end method

.method public final setDelegateThreadSwitcher$auth0_release(Lcom/auth0/android/request/internal/ThreadSwitcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->delegateThreadSwitcher:Lcom/auth0/android/request/internal/ThreadSwitcher;

    return-void
.end method
