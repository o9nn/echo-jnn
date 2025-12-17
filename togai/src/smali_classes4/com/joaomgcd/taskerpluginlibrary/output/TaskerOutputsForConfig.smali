.class public final Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;
.super Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;
.source "TaskerPluginOutputForConfig.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase<",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputForConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputForConfig.kt\ncom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003JV\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;",
        "()V",
        "getTaskerVariable",
        "context",
        "Landroid/content/Context;",
        "taskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "method",
        "Ljava/lang/reflect/Method;",
        "parent",
        "",
        "isThisList",
        "",
        "isBaseList",
        "index",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;"
        }
    .end annotation

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "taskerVariable"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "method"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p4, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;

    invoke-direct {p4}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;-><init>()V

    new-instance p7, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    move-object v0, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;ZZ)V

    check-cast p7, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p4, p7}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    return-object p4
.end method

.method public bridge synthetic getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-virtual/range {p0 .. p7}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;->getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final bridge remove(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;->removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    return-object p1
.end method
