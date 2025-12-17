.class public final Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;
.super Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;
.source "TaskerPluginOutputValueGetter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0008\u0016\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "",
        "([Ljava/lang/Object;)V",
        "",
        "(Ljava/lang/Object;)V",
        "isArray",
        "",
        "()Z",
        "getValue",
        "()Ljava/lang/Object;",
        "obj",
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
.field private final isArray:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;->isArray:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public isArray()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;->isArray:Z

    return v0
.end method
