.class public final Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;
.super Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;
.source "TaskerPluginOutputValueGetter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputValueGetter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputValueGetter.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,40:1\n37#2,2:41\n*S KotlinDebug\n*F\n+ 1 TaskerPluginOutputValueGetter.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod\n*L\n23#1:41,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
        "method",
        "Ljava/lang/reflect/Method;",
        "(Ljava/lang/reflect/Method;)V",
        "isArray",
        "",
        "()Z",
        "getMethod",
        "()Ljava/lang/reflect/Method;",
        "getValue",
        "",
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

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;->isArray:Z

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 18
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/io/Serializable;

    :goto_0
    move-object v0, p1

    goto :goto_2

    .line 19
    :cond_2
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 20
    :cond_3
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    sget-object v1, Lkotlin/jvm/internal/LongCompanionObject;->INSTANCE:Lkotlin/jvm/internal/LongCompanionObject;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 21
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 22
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 23
    :cond_8
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_9

    check-cast p1, Ljava/util/Collection;

    new-array v1, v2, [Ljava/lang/Object;

    .line 42
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    goto :goto_0

    .line 24
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :goto_2
    return-object v0
.end method

.method public isArray()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterMethod;->isArray:Z

    return v0
.end method
