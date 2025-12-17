.class public final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
.super Ljava/util/ArrayList;
.source "TaskerPluginInput.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginInput.kt\ncom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n22765#2,10:162\n1549#3:172\n1620#3,3:173\n766#3:176\n857#3,2:177\n1855#3:179\n1856#3:181\n288#3,2:182\n766#3:184\n857#3,2:185\n1#4:180\n*S KotlinDebug\n*F\n+ 1 TaskerPluginInput.kt\ncom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos\n*L\n96#1:162,10\n98#1:172\n98#1:173,3\n108#1:176\n108#1:177,2\n109#1:179\n109#1:181\n122#1:182,2\n124#1:184\n124#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 \u001a2\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0010J(\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
        "Ljava/util/ArrayList;",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "bundle",
        "Landroid/os/Bundle;",
        "getBundle",
        "()Landroid/os/Bundle;",
        "addFromInput",
        "",
        "context",
        "Landroid/content/Context;",
        "taskerPluginInput",
        "",
        "parentKey",
        "",
        "getByKey",
        "key",
        "getString",
        "resId",
        "",
        "resIdName",
        "defaultString",
        "toExistingBundle",
        "",
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
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static synthetic addFromInput$default(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->addFromInput(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/joaomgcd/taskerpluginlibrary/UtilKt;->getStringFromResourceIdOrResourceName(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addFromInput(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "taskerPluginInput"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 91
    const-class v3, Lkotlin/Unit;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 92
    :cond_0
    const-class v3, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputRoot;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input types must be annotated by either TaskerInputRoot or TaskerInputObject. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has none."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    .line 96
    const-class v8, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    :cond_4
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 97
    check-cast v3, Ljava/lang/Iterable;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v2

    check-cast v15, Ljava/util/Collection;

    .line 173
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "."

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 174
    move-object v8, v2

    check-cast v8, Ljava/lang/reflect/Field;

    .line 99
    const-class v2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;

    .line 100
    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->key()Ljava/lang/String;

    move-result-object v4

    if-eqz v13, :cond_5

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    .line 102
    :goto_4
    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->labelResId()I

    move-result v4

    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->labelResIdName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->descriptionResId()I

    move-result v5

    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->descriptionResIdName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v11, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;

    invoke-interface {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;->ignoreInStringBlurb()Z

    move-result v6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/16 v17, 0x0

    move-object v2, v11

    move-object/from16 v7, p2

    move-object v13, v11

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    invoke-interface {v15, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p3

    goto :goto_3

    .line 175
    :cond_6
    check-cast v15, Ljava/util/List;

    .line 172
    check-cast v15, Ljava/util/Collection;

    .line 97
    invoke-virtual {v0, v15}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->addAll(Ljava/util/Collection;)Z

    .line 107
    check-cast v14, Ljava/lang/Iterable;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 177
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/Field;

    .line 108
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 178
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 176
    check-cast v2, Ljava/lang/Iterable;

    .line 179
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 110
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    const/4 v6, 0x1

    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 113
    invoke-interface {v5}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;->key()Ljava/lang/String;

    move-result-object v5

    .line 114
    const-class v7, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputObject;->key()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_a
    invoke-virtual {v0, v1, v6, v5}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->addFromInput(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    return-void
.end method

.method public bridge contains(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Z
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->contains(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Z

    move-result p1

    return p1
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->toExistingBundle(Landroid/os/Bundle;)Ljava/util/List;

    return-object v0
.end method

.method public final getByKey(Ljava/lang/String;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    .line 122
    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 183
    :goto_0
    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    return-object v1
.end method

.method public bridge getSize()I
    .locals 1

    .line 72
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)I
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 72
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->indexOf(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)I
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 72
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Z
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->remove(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;
    .locals 0

    .line 72
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getSize()I

    move-result v0

    return v0
.end method

.method public final toExistingBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    .line 124
    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v4, v3}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->putTaskerCompatibleInput(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
