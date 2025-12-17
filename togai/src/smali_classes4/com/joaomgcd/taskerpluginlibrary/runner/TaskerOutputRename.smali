.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;
.super Ljava/lang/Object;
.source "TaskerOutputRenames.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;",
        "",
        "oldValue",
        "",
        "newValue",
        "",
        "(Ljava/lang/String;Ljava/lang/CharSequence;)V",
        "getNewValue",
        "()Ljava/lang/CharSequence;",
        "getOldValue",
        "()Ljava/lang/String;",
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
.field private final newValue:Ljava/lang/CharSequence;

.field private final oldValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "oldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->oldValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->newValue:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getNewValue()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->newValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getOldValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->oldValue:Ljava/lang/String;

    return-object v0
.end method
