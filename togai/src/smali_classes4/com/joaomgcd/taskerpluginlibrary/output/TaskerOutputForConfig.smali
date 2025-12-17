.class public final Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;
.super Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
.source "TaskerPluginOutputForConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B/\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\rB;\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016R\u0011\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "context",
        "Landroid/content/Context;",
        "taskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "isMultiple",
        "",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V",
        "method",
        "Ljava/lang/reflect/Method;",
        "isThisList",
        "isBaseList",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;ZZ)V",
        "nameNoSuffix",
        "",
        "label",
        "htmlLabel",
        "minApi",
        "",
        "maxApi",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V",
        "getHtmlLabel",
        "()Ljava/lang/String;",
        "getLabel",
        "toString",
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
.field private final htmlLabel:Ljava/lang/String;

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerVariable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerVariable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->name()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->labelResId()I

    move-result v0

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->labelResIdName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getSplitWordsTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/joaomgcd/taskerpluginlibrary/UtilKt;->getStringFromResourceIdOrResourceName(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->htmlLabelResId()I

    move-result v0

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->htmlLabelResIdName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {p1, v0, v1, v4}, Lcom/joaomgcd/taskerpluginlibrary/UtilKt;->getStringFromResourceIdOrResourceName(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->minApi()I

    move-result v6

    .line 16
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->maxApi()I

    move-result v7

    move-object v1, p0

    move v5, p3

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 9

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlLabel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    .line 9
    invoke-direct/range {v1 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Ljava/lang/String;ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->htmlLabel:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, -0x1

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const p6, 0x7fffffff

    :cond_2
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method


# virtual methods
.method public final getHtmlLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->htmlLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->label:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 21
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->htmlLabel:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
