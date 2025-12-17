.class public final Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;
.super Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;
.source "TaskerPluginOutputForRunner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase<",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputForRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputForRunner.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003JV\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u0013H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
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
        "Companion",
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
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;-><init>()V

    return-void
.end method

.method public static final getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;->getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;
    .locals 8
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
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;"
        }
    .end annotation

    const-string p6, "context"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "taskerVariable"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "method"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance p6, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    invoke-direct {p6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;-><init>()V

    if-nez p5, :cond_0

    .line 61
    new-instance p5, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;

    invoke-direct {v0, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;-><init>(Ljava/lang/reflect/Method;)V

    move-object v3, v0

    check-cast v3, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;)V

    check-cast p5, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p6, p5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    return-object p6

    :cond_0
    const-string p5, "null cannot be cast to non-null type kotlin.Array<*>"

    .line 63
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [Ljava/lang/Object;

    .line 64
    array-length p5, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    .line 65
    aget-object v5, p4, v0

    .line 66
    new-instance v7, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    new-instance v1, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;

    invoke-direct {v1, p3}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;-><init>(Ljava/lang/reflect/Method;)V

    move-object v4, v1

    check-cast v4, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p7, v1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->addOrCreate(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;)V

    check-cast v7, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p6, v7}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    goto :goto_0

    :cond_1
    return-object p6
.end method

.method public bridge synthetic getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Ljava/util/List;
    .locals 0

    .line 57
    invoke-virtual/range {p0 .. p7}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final bridge remove(I)Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    move-result-object p1

    return-object p1
.end method

.method public bridge removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    return-object p1
.end method
