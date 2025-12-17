.class public abstract Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;
.super Ljava/lang/Object;
.source "TaskerPluginConfigHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        "TActionRunner:",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
        "TTInput;TTOutput;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginConfigHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginConfigHelper.kt\ncom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,98:1\n766#2:99\n857#2,2:100\n1549#2:103\n1620#2,3:104\n1855#2,2:109\n1#3:102\n37#4,2:107\n*S KotlinDebug\n*F\n+ 1 TaskerPluginConfigHelper.kt\ncom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper\n*L\n40#1:99\n40#1:100,2\n47#1:103\n47#1:104,3\n76#1:109,2\n47#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0002*\u0014\u0008\u0002\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00052\u00020\u0002B\u0013\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH\u0016J\u001e\u0010C\u001a\u00020@2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000D2\u0006\u0010E\u001a\u00020FH\u0016J\"\u0010G\u001a\u00020@2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000D2\n\u0010H\u001a\u00060Ij\u0002`JH\u0016J\u0006\u0010K\u001a\u00020LJ\u0016\u0010M\u001a\u00020B2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000DH\u0002J\u0016\u0010N\u001a\u00020\u000e2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000DH\u0002J(\u0010O\u001a\u00020:2\u0008\u0010P\u001a\u0004\u0018\u00010\u000e2\u0006\u0010E\u001a\u00020F2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000DH\u0002J\u0016\u0010Q\u001a\u00020L2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000DH\u0016J\u0006\u0010R\u001a\u00020LJ\u0006\u0010S\u001a\u00020@R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00018\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0018\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$RP\u0010%\u001a>\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\'0&j\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\'`(X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0018\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00010\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010$R\u0019\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000e0.\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u0008/\u00100R#\u00102\u001a\n 3*\u0004\u0018\u00018\u00028\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u0018\u001a\u0004\u00084\u00105R\u0018\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u00020\"X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010$R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010;\u001a\u00020<X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>\u00a8\u0006T"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;",
        "TInput",
        "",
        "TOutput",
        "TActionRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "config",
        "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V",
        "addDefaultStringBlurb",
        "",
        "getAddDefaultStringBlurb",
        "()Z",
        "breadCrumbs",
        "",
        "getBreadCrumbs",
        "()Ljava/lang/String;",
        "getConfig",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context$delegate",
        "Lkotlin/Lazy;",
        "defaultInput",
        "getDefaultInput",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "hostCapabilities",
        "Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;",
        "getHostCapabilities",
        "()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;",
        "inputClass",
        "Ljava/lang/Class;",
        "getInputClass",
        "()Ljava/lang/Class;",
        "inputTranslationsForStringBlurb",
        "Ljava/util/HashMap;",
        "Lkotlin/Function1;",
        "Lkotlin/collections/HashMap;",
        "getInputTranslationsForStringBlurb",
        "()Ljava/util/HashMap;",
        "outputClass",
        "getOutputClass",
        "relevantVariables",
        "",
        "getRelevantVariables",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "runner",
        "kotlin.jvm.PlatformType",
        "getRunner",
        "()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "runner$delegate",
        "runnerClass",
        "getRunnerClass",
        "taskerIntent",
        "Landroid/content/Intent;",
        "timeoutSeconds",
        "",
        "getTimeoutSeconds",
        "()I",
        "addInputs",
        "",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
        "addOutputs",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "output",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;",
        "addToStringBlurb",
        "blurbBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "finishForTasker",
        "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;",
        "getInputInfos",
        "getStringBlurb",
        "getTaskerIntentFromInput",
        "stringBlurb",
        "isInputValid",
        "onBackPressed",
        "onCreate",
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
.field private final addDefaultStringBlurb:Z

.field private final breadCrumbs:Ljava/lang/String;

.field private final config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "TTInput;>;"
        }
    .end annotation
.end field

.field private final context$delegate:Lkotlin/Lazy;

.field private final defaultInput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTInput;"
        }
    .end annotation
.end field

.field private final hostCapabilities:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;

.field private final inputTranslationsForStringBlurb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final relevantVariables:[Ljava/lang/String;

.field private final runner$delegate:Lkotlin/Lazy;

.field private final taskerIntent:Landroid/content/Intent;

.field private final timeoutSeconds:I


# direct methods
.method public constructor <init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "TTInput;>;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->timeoutSeconds:I

    .line 23
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;

    invoke-direct {v0, p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$context$2;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->context$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$runner$2;

    invoke-direct {v0, p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$runner$2;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->runner$delegate:Lkotlin/Lazy;

    .line 25
    invoke-interface {p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->taskerIntent:Landroid/content/Intent;

    .line 26
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-direct {v0, v2}, Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->hostCapabilities:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lnet/dinglisch/android/tasker/TaskerPlugin;->getRelevantVariableList(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "getRelevantVariableList(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->relevantVariables:[Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "com.twofortyfouram.locale.intent.extra.BREADCRUMB"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->breadCrumbs:Ljava/lang/String;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->inputTranslationsForStringBlurb:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addDefaultStringBlurb:Z

    return-void
.end method

.method public static final synthetic access$getRunner(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getRunner()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    move-result-object p0

    return-object p0
.end method

.method private final getInputInfos(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    invoke-interface {v1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromInput(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p1

    return-object p1
.end method

.method private final getRunner()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTActionRunner;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->runner$delegate:Lkotlin/Lazy;

    .line 24
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    return-object v0
.end method

.method private final getStringBlurb(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getAddDefaultStringBlurb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-direct {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getInputInfos(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 109
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    .line 77
    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getIgnoreInStringBlurb()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getInputTranslationsForStringBlurb()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 79
    :cond_2
    invoke-virtual {v2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/joaomgcd/taskerpluginlibrary/extensions/PublicKt;->addTaskerInput(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addToStringBlurb(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/StringBuilder;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getTaskerIntentFromInput(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Landroid/content/Intent;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    invoke-static {v0}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    .line 35
    invoke-static {v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->setWasConfiguredBefore(Landroid/os/Bundle;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getRunnerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->setRunnerClass(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getInputClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->setInputClass(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p3}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getInputInfos(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p3

    .line 39
    invoke-virtual {p3, v1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->toExistingBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p3

    .line 40
    check-cast p3, Ljava/lang/Iterable;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 100
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    .line 40
    invoke-virtual {v4}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 41
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const-string p3, " "

    move-object v4, p3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object p3, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$getTaskerIntentFromInput$1$1$1;

    move-object v9, p3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "net.dinglisch.android.tasker.extras.VARIABLE_REPLACE_KEYS"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p3, "com.twofortyfouram.locale.intent.extra.BLURB"

    .line 44
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_2
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    const-string v2, "err"

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/joaomgcd/taskerpluginlibrary/R$string;->error_code:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p3, "getString(...)"

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/joaomgcd/taskerpluginlibrary/R$string;->error_code_description:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p2, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    .line 46
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    const-string v2, "errmsg"

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/joaomgcd/taskerpluginlibrary/R$string;->error_message:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/joaomgcd/taskerpluginlibrary/R$string;->error_message_description:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;

    invoke-virtual {p2, p1}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;->add(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z

    .line 47
    check-cast p2, Ljava/lang/Iterable;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 104
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 105
    check-cast p3, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;

    .line 47
    invoke-virtual {p3}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputForConfig;->toString()Ljava/lang/String;

    move-result-object p3

    .line 105
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 103
    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 108
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 47
    invoke-static {v0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin;->addRelevantVariableList(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getTimeoutSeconds()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lnet/dinglisch/android/tasker/TaskerPlugin$Setting;->requestTimeoutMS(Landroid/content/Intent;I)V

    return-object v0
.end method


# virtual methods
.method public addInputs(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public addOutputs(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getOutputClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;

    iget-object p2, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    invoke-interface {p2}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;

    invoke-direct {p2, p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper$addOutputs$1$1;-><init>(Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x34

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;->add$default(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ZLjava/util/ArrayList;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addToStringBlurb(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "blurbBuilder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final finishForTasker()Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    .locals 6

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    .line 53
    invoke-interface {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getInputForTasker()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addInputs(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->isInputValid(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;->getSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 57
    :cond_0
    new-instance v2, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;

    invoke-direct {v2}, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addOutputs(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;)V

    .line 58
    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getRunner()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    move-result-object v3

    iget-object v4, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    invoke-interface {v4}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->getRenames$taskerpluginlibrary_release(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;

    invoke-virtual {v3, v4}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;->rename(Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputBase;)V

    .line 59
    :cond_1
    invoke-direct {p0, v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getStringBlurb(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    const/4 v5, -0x1

    .line 61
    invoke-direct {p0, v3, v2, v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getTaskerIntentFromInput(Ljava/lang/String;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOutputsForConfig;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    .line 62
    invoke-interface {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->finish()V

    return-object v1
.end method

.method public getAddDefaultStringBlurb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->addDefaultStringBlurb:Z

    return v0
.end method

.method public final getBreadCrumbs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->breadCrumbs:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfig()Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig<",
            "TTInput;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->context$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTInput;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->defaultInput:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHostCapabilities()Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->hostCapabilities:Lcom/joaomgcd/taskerpluginlibrary/config/HostCapabilities;

    return-object v0
.end method

.method public abstract getInputClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTInput;>;"
        }
    .end annotation
.end method

.method public getInputTranslationsForStringBlurb()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->inputTranslationsForStringBlurb:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getOutputClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTOutput;>;"
        }
    .end annotation
.end method

.method public final getRelevantVariables()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->relevantVariables:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRunnerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTActionRunner;>;"
        }
    .end annotation
.end method

.method public getTimeoutSeconds()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->timeoutSeconds:I

    return v0
.end method

.method public isInputValid(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;

    invoke-direct {p1}, Lcom/joaomgcd/taskerpluginlibrary/SimpleResultSuccess;-><init>()V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;

    return-object p1
.end method

.method public final onBackPressed()Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->finishForTasker()Lcom/joaomgcd/taskerpluginlibrary/SimpleResult;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 5

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->config:Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;

    iget-object v1, p0, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->taskerIntent:Landroid/content/Intent;

    .line 71
    invoke-interface {v0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getInputClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfigHelper;->getDefaultInput()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerInput(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/config/TaskerPluginConfig;->assignFromInput(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)V

    return-void
.end method
