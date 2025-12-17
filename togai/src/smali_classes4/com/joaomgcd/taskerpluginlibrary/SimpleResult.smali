.class public abstract Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
.super Ljava/lang/Object;
.source "SimpleResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;",
        "",
        "success",
        "",
        "(Z)V",
        "getSuccess",
        "()Z",
        "Companion",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResultError;",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;


# instance fields
.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;->Companion:Lcom/joaomgcd/taskerpluginlibrary/SimpleResult$Companion;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;->success:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;->success:Z

    return v0
.end method
