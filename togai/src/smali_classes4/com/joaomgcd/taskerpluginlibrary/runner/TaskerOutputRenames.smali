.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;
.super Ljava/util/ArrayList;
.source "TaskerOutputRenames.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerOutputRenames.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerOutputRenames.kt\ncom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,13:1\n1855#2,2:14\n*S KotlinDebug\n*F\n+ 1 TaskerOutputRenames.kt\ncom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames\n*L\n8#1:14,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "Ljava/util/ArrayList;",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;",
        "Lkotlin/collections/ArrayList;",
        "()V",
        "rename",
        "",
        "infos",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;",
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
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->contains(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)Z

    move-result p1

    return p1
.end method

.method public bridge getSize()I
    .locals 1

    .line 6
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)I
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->indexOf(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)I
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->lastIndexOf(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    move-result-object p1

    return-object p1
.end method

.method public bridge remove(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 6
    instance-of v0, p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->remove(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;)Z

    move-result p1

    return p1
.end method

.method public bridge removeAt(I)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    return-object p1
.end method

.method public final rename(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "infos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;

    .line 8
    invoke-virtual {v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->getOldValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRename;->getNewValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->renameIfNeeded(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge size()I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->getSize()I

    move-result v0

    return v0
.end method
