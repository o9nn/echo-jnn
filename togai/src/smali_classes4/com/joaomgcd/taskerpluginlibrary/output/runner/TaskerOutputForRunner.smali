.class public Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;
.super Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;
.source "TaskerPluginOutputForRunner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginOutputForRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginOutputForRunner.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,105:1\n37#2,2:106\n37#2,2:112\n11065#3:108\n11400#3,3:109\n*S KotlinDebug\n*F\n+ 1 TaskerPluginOutputForRunner.kt\ncom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner\n*L\n18#1:106,2\n45#1:112,2\n45#1:108\n45#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B\u001d\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tBG\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u001c\u0008\u0002\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015\u00a2\u0006\u0002\u0010\u0016BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0014\u0012\u001c\u0008\u0002\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$J\u001b\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0004\u001a\u00020\u0011H\u0002\u00a2\u0006\u0002\u0010&R%\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\n\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "nameNoSuffix",
        "",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "",
        "(Ljava/lang/String;Ljava/util/Collection;)V",
        "context",
        "Landroid/content/Context;",
        "taskerVariable",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
        "valueGetter",
        "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
        "parent",
        "",
        "index",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;)V",
        "minApi",
        "maxApi",
        "(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;)V",
        "getIndex",
        "()Ljava/util/ArrayList;",
        "getParent",
        "()Ljava/lang/Object;",
        "getValue",
        "getValueGetter",
        "()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
        "addToBundle",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "getValues",
        "(Ljava/lang/Object;)[Ljava/lang/String;",
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
.field private static final Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;


# instance fields
.field private final index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava/lang/Object;

.field private final valueGetter:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskerVariable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueGetter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->minApi()I

    move-result v4

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;->maxApi()I

    move-result v5

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputVariable;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueGetter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;

    .line 15
    invoke-virtual {v0, p1, p6}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner$Companion;->getName(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;->isArray()Z

    move-result v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;-><init>(Ljava/lang/String;ZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->valueGetter:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    iput-object p3, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->parent:Ljava/lang/Object;

    iput-object p6, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->index:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

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

    const/4 v0, -0x1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

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

    .line 15
    invoke-direct/range {v2 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;

    invoke-direct {v0, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 18
    :goto_0
    invoke-direct {v0, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;-><init>([Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const-string v0, "nameNoSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;

    invoke-direct {v0, p2}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetterDirect;-><init>([Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;-><init>(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;Ljava/lang/Object;IILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final getValues(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<*>"

    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 108
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 109
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 45
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 108
    check-cast v0, Ljava/util/Collection;

    new-array p1, v2, [Ljava/lang/String;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final addToBundle(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getValues(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->getNameTaskerCompatible()Ljava/lang/String;

    move-result-object v1

    .line 29
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 35
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->index:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->parent:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->valueGetter:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->parent:Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValueGetter()Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerOutputForRunner;->valueGetter:Lcom/joaomgcd/taskerpluginlibrary/output/runner/TaskerValueGetter;

    return-object v0
.end method
