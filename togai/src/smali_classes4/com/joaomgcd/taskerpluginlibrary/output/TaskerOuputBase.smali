.class public abstract Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
.super Ljava/lang/Object;
.source "TaskerPluginOutputBase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008&\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB5\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0012R\u001a\u0010\u0011\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0014R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001c\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "",
        "context",
        "Landroid/content/Context;",
        "taskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "isMultiple",
        "",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V",
        "method",
        "Ljava/lang/reflect/Method;",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;)V",
        "nameNoSuffix",
        "",
        "minApi",
        "",
        "maxApi",
        "ignore",
        "(Ljava/lang/String;ZIIZ)V",
        "getIgnore",
        "()Z",
        "setIgnore",
        "(Z)V",
        "getMaxApi",
        "()I",
        "getMinApi",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "getNameNoSuffix",
        "setNameNoSuffix",
        "(Ljava/lang/String;)V",
        "nameTaskerCompatible",
        "getNameTaskerCompatible",
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
.field private ignore:Z

.field private final isMultiple:Z

.field private final maxApi:I

.field private final minApi:I

.field private nameNoSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerVariable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskerVariable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->minApi()I

    move-result v3

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->maxApi()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Ljava/lang/String;ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIIZ)V
    .locals 1

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->nameNoSuffix:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->isMultiple:Z

    iput p3, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->minApi:I

    iput p4, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->maxApi:I

    iput-boolean p5, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->ignore:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    move v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const p4, 0x7fffffff

    :cond_2
    move v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Ljava/lang/String;ZIIZ)V

    return-void
.end method


# virtual methods
.method public final getIgnore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->ignore:Z

    return v0
.end method

.method public final getMaxApi()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->maxApi:I

    return v0
.end method

.method public final getMinApi()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->minApi:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->getNameTaskerCompatible()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->isMultiple:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getNameNoSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->nameNoSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameTaskerCompatible()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->nameNoSuffix:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/joaomgcd/taskerpluginlibrary/extensions/PublicKt;->getTaskerOutputCompatible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isMultiple()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->isMultiple:Z

    return v0
.end method

.method public final setIgnore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->ignore:Z

    return-void
.end method

.method public final setNameNoSuffix(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->nameNoSuffix:Ljava/lang/String;

    return-void
.end method
