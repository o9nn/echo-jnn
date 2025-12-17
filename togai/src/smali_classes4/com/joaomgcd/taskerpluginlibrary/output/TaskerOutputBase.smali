.class public abstract Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;
.super Ljava/util/ArrayList;
.source "TaskerPluginOutputBase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTaskerVariable:",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        ">",
        "Ljava/util/ArrayList<",
        "TTTaskerVariable;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputBase.kt\ncom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n22765#2,10:100\n13374#2,3:123\n1549#3:110\n1620#3,3:111\n1549#3:114\n1620#3,2:115\n1622#3:118\n766#3:119\n857#3,2:120\n1855#3:122\n1856#3:126\n288#3,2:127\n766#3:129\n857#3,2:130\n1#4:117\n*S KotlinDebug\n*F\n+ 1 TaskerPluginOutputBase.kt\ncom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase\n*L\n36#1:100,10\n54#1:123,3\n38#1:110\n38#1:111,3\n40#1:114\n40#1:115,2\n40#1:118\n46#1:119\n46#1:120,2\n47#1:122\n47#1:126\n88#1:127,2\n97#1:129\n97#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0012\u0012\u0004\u0012\u0002H\u00010\u0003j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010Jf\u0010\r\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000e2\u001c\u0008\u0002\u0010\u001b\u001a\u0016\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u001c\u0018\u0001`\u0004J\u001f\u0010\r\u001a\u00020\u00112\u0012\u0010\u001d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0008\"\u00028\u0000\u00a2\u0006\u0002\u0010\u001eJ\u001d\u0010\r\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001c2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J\u0016\u0010 \u001a\u00020\u000e2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0002J\u0015\u0010$\u001a\u0004\u0018\u00018\u00002\u0006\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010)\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0010J^\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010/\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u001c\u0008\u0002\u0010\u001b\u001a\u0016\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u001c\u0018\u0001`\u0004H&J\u0018\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020&2\u0008\u00102\u001a\u0004\u0018\u000103R&\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007*\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR$\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007*\u0008\u0012\u0004\u0012\u00028\u00000\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000c\u00a8\u00064"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;",
        "TTaskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "filtered",
        "",
        "",
        "getFiltered",
        "([Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Ljava/util/List;",
        "",
        "(Ljava/util/Collection;)Ljava/util/List;",
        "add",
        "",
        "element",
        "(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z",
        "",
        "context",
        "Landroid/content/Context;",
        "type",
        "Ljava/lang/Class;",
        "parent",
        "",
        "filter",
        "Lkotlin/Function1;",
        "isBaseList",
        "index",
        "",
        "taskerVariableInfo",
        "([Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)V",
        "(ILcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)V",
        "addAll",
        "elements",
        "filterForTasker",
        "output",
        "getByName",
        "name",
        "",
        "(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "getTaskerFilter",
        "it",
        "getTaskerVariable",
        "taskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "method",
        "Ljava/lang/reflect/Method;",
        "isThisList",
        "renameIfNeeded",
        "oldName",
        "newName",
        "",
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

    .line 27
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static synthetic add$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;ILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 29
    invoke-virtual/range {v2 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: add"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final filterForTasker(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTTaskerVariable;>;)",
            "Ljava/util/List<",
            "TTTaskerVariable;>;"
        }
    .end annotation

    .line 97
    check-cast p1, Ljava/lang/Iterable;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 130
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    .line 97
    invoke-direct {p0, v2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getTaskerFilter(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getFiltered(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTTaskerVariable;>;)",
            "Ljava/util/List<",
            "TTTaskerVariable;>;"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->filterForTasker(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getFiltered([Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TTTaskerVariable;)",
            "Ljava/util/List<",
            "TTTaskerVariable;>;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->filterForTasker(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getTaskerFilter(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTaskerVariable;)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->getIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->getMinApi()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->getMaxApi()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic getTaskerVariable$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;ILjava/lang/Object;)Ljava/util/List;
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 28
    invoke-virtual/range {v1 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getTaskerVariable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTTaskerVariable;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getTaskerFilter(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add(ILcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)V

    return-void
.end method

.method public final add(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TTTaskerVariable;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v0, "context"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 33
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getComponentType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 36
    const-class v6, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_2
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 37
    check-cast v1, Ljava/lang/Iterable;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    .line 111
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 112
    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Method;

    .line 39
    const-class v0, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v1, "getAnnotation(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move v5, v13

    move/from16 v6, p5

    move-object v14, v7

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v7, v14

    goto :goto_3

    :cond_3
    move-object v14, v7

    .line 113
    move-object v7, v14

    check-cast v7, Ljava/util/List;

    .line 110
    check-cast v7, Ljava/lang/Iterable;

    .line 40
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    if-eqz v11, :cond_4

    .line 41
    invoke-interface {v11, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v14

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->setIgnore(Z)V

    .line 116
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 118
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 114
    check-cast v1, Ljava/util/Collection;

    .line 43
    invoke-direct {v9, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getFiltered(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 37
    invoke-virtual {v9, v0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->addAll(Ljava/util/Collection;)Z

    .line 45
    check-cast v8, Ljava/lang/Iterable;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 120
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Method;

    .line 46
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputObject;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6

    const-class v4, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputObject;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-ne v3, v14, :cond_6

    .line 120
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 121
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 119
    check-cast v0, Ljava/lang/Iterable;

    .line 122
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/Method;

    const-string v8, "getReturnType(...)"

    if-nez v10, :cond_a

    .line 49
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v13

    invoke-static/range {v0 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;ILjava/lang/Object;)V

    :cond_9
    :goto_8
    const/16 v19, 0x0

    goto :goto_7

    :cond_a
    if-nez v13, :cond_b

    .line 52
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move v5, v13

    invoke-static/range {v0 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;ILjava/lang/Object;)V

    goto :goto_8

    .line 54
    :cond_b
    move-object v6, v10

    check-cast v6, [Ljava/lang/Object;

    .line 124
    array-length v5, v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_9

    aget-object v1, v6, v4

    add-int/lit8 v16, v0, 0x1

    .line 55
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->addOrCreate(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v19, v3

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v4, p4

    move/from16 v20, v5

    move v5, v13

    move-object/from16 v21, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v0, v16

    move/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_9

    :cond_c
    return-void
.end method

.method public final varargs add([Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TTTaskerVariable;)V"
        }
    .end annotation

    const-string v0, "taskerVariableInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getFiltered([Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTaskerVariable;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getTaskerFilter(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TTTaskerVariable;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getFiltered(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTTaskerVariable;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getFiltered(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge contains(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->contains(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result p1

    return p1
.end method

.method public final getByName(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTTaskerVariable;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 127
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    .line 88
    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->getNameNoSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 128
    :goto_0
    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    return-object v1
.end method

.method public bridge getSize()I
    .locals 1

    .line 27
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getTaskerVariable(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Ljava/lang/reflect/Method;Ljava/lang/Object;ZZLjava/util/ArrayList;)Ljava/util/List;
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
            "Ljava/util/List<",
            "TTTaskerVariable;>;"
        }
    .end annotation
.end method

.method public bridge indexOf(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)I
    .locals 0

    .line 27
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->indexOf(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)I
    .locals 0

    .line 27
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTTaskerVariable;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->remove(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    return-object p1
.end method

.method public final renameIfNeeded(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "oldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 91
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getByName(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;->setNameNoSuffix(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final bridge size()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->getSize()I

    move-result v0

    return v0
.end method
