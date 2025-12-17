.class public final Lcom/google/auto/value/processor/SimpleMethod;
.super Ljava/lang/Object;
.source "SimpleMethod.java"


# instance fields
.field private final access:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final throwsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/auto/value/processor/SimpleMethod;->access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/SimpleMethod;->access:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/SimpleMethod;->name:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/google/auto/value/processor/SimpleMethod;->throwsString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/SimpleMethod;->throwsString:Ljava/lang/String;

    return-void
.end method

.method static access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object p0

    .line 63
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "public "

    return-object p0

    .line 65
    :cond_0
    sget-object v0, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "protected "

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static throwsString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "throws "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/google/auto/value/processor/SimpleMethod$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/SimpleMethod$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/SimpleMethod;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/SimpleMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThrows()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/SimpleMethod;->throwsString:Ljava/lang/String;

    return-object v0
.end method
