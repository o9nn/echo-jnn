.class final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginInput.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginInput.kt\ncom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $getter:Ljava/lang/reflect/Field;

.field final synthetic $taskerPluginInput:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;->$getter:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;->$taskerPluginInput:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;->$getter:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;->$taskerPluginInput:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
