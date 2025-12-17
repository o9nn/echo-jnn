.class public final Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;
.super Ljava/lang/Object;
.source "TaskerPluginOutputForRunner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$NameAndIndex;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputForRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputForRunner.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,105:1\n1#2:106\n1477#3:107\n1502#3,3:108\n1505#3,3:118\n1855#3,2:125\n372#4,7:111\n125#5:121\n152#5,3:122\n*S KotlinDebug\n*F\n+ 1 TaskerPluginOutputForRunner.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion\n*L\n87#1:107\n87#1:108,3\n87#1:118,3\n99#1:125,2\n87#1:111,7\n90#1:121\n90#1:122,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rH\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;",
        "",
        "()V",
        "getVariableBundle",
        "Landroid/os/Bundle;",
        "context",
        "Landroid/content/Context;",
        "regularOutput",
        "dynamicOutput",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;",
        "renames",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "filter",
        "Lkotlin/Function1;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "",
        "NameAndIndex",
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
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getVariableBundle$default(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion;->getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getVariableBundle(Landroid/content/Context;Ljava/lang/Object;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;
    .locals 15
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

    move-object/from16 v0, p4

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    new-instance v11, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;

    invoke-direct {v11}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;-><init>()V

    if-eqz p3, :cond_0

    .line 82
    move-object/from16 v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v11, v2}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 84
    move-object v2, v11

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v10}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;ILjava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 86
    move-object v2, v11

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;

    invoke-virtual {v0, v2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->rename(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;)V

    .line 85
    :cond_2
    check-cast v11, Ljava/lang/Iterable;

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 108
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 109
    move-object v5, v3

    check-cast v5, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    .line 88
    invoke-virtual {v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getIndex()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getIndex()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getIndex()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x0

    .line 89
    :goto_2
    new-instance v6, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$NameAndIndex;

    invoke-virtual {v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$NameAndIndex;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 118
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 122
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    goto :goto_4

    .line 95
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    const-string v3, ","

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v3, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;

    invoke-direct {v3, v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputsForRunner$Companion$getVariableBundle$1$5$value$1;-><init>(Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;)V

    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v13, 0x1e

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v6, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    invoke-virtual {v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v3}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 123
    :goto_4
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 124
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 121
    check-cast v2, Ljava/lang/Iterable;

    .line 125
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;

    .line 100
    invoke-virtual {v2, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->addToBundle(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_9
    return-object v1
.end method
