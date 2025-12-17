.class public final Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;
.super Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;
.source "SimpleResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TPayload:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;",
        "TPayload",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;",
        "payload",
        "(Ljava/lang/Object;)V",
        "getPayload",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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


# instance fields
.field private final payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTPayload;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPayload;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTPayload;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccessWithPayload;->payload:Ljava/lang/Object;

    return-object v0
.end method
