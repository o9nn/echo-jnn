.class public Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;
.super Ljava/lang/Object;
.source "TaskerPluginInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0016\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u0018\u001a\u0002H\u0019\"\u0004\u0008\u0000\u0010\u0019\u00a2\u0006\u0002\u0010\u0015R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0001X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
        "",
        "key",
        "",
        "label",
        "description",
        "ignoreInStringBlurb",
        "",
        "value",
        "order",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;I)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getIgnoreInStringBlurb",
        "()Z",
        "getKey",
        "getLabel",
        "getOrder",
        "()I",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "valueAs",
        "T",
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
.field private final description:Ljava/lang/String;

.field private final ignoreInStringBlurb:Z

.field private final key:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final order:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->description:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->ignoreInStringBlurb:Z

    iput-object p5, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->value:Ljava/lang/Object;

    iput p6, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->order:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const p6, 0x7fffffff

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getIgnoreInStringBlurb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->ignoreInStringBlurb:Z

    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->order:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->value:Ljava/lang/Object;

    return-void
.end method

.method public final valueAs()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
