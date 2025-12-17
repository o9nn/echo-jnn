.class final Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;
.super Ljava/lang/Object;
.source "MemoizeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MethodOverrider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;,
        Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$NullMeansUninitialized;,
        Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;
    }
.end annotation


# instance fields
.field private final cacheField:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

.field private final fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljavax/lang/model/element/ExecutableElement;

.field private final override:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

.field final synthetic this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;


# direct methods
.method constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 4

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    iput-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 407
    invoke-direct {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->validate()V

    .line 410
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$200(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->buildCacheField(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->cacheField:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    .line 411
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 413
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    const-class v1, Ljava/lang/Override;

    .line 414
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    iget-object v0, v0, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->type:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    .line 415
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 417
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 416
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addExceptions(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 418
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->equalTo(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->filter(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->override:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 419
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 420
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;->get(Ljavax/lang/model/element/AnnotationMirror;)Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object v1

    .line 421
    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->pullDownMethodAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->override:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 422
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->strategy()Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 427
    invoke-virtual {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;->additionalFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->override:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 429
    invoke-virtual {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;->checkMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "if ($L)"

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "synchronized (this)"

    .line 430
    invoke-virtual {v0, v3, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;->checkMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->cacheField:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    .line 432
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "$N = super.$L()"

    invoke-virtual {v0, v1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p2

    .line 433
    invoke-virtual {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;->setMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    invoke-virtual {p2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->cacheField:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "return $N"

    .line 437
    invoke-virtual {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    return-void
.end method

.method static synthetic access$1400(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->cacheField:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)Ljavax/lang/model/element/ExecutableElement;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 0

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->buildCacheField(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p0

    return-object p0
.end method

.method private buildCacheField(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    const/4 v1, 0x0

    .line 508
    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;->builder(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 509
    invoke-static {p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$800(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 510
    invoke-static {p2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$800(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    .line 511
    invoke-static {}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$900()Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->addAnnotation(Lautovalue/shaded/com/squareup/javapoet$/$AnnotationSpec;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;

    .line 513
    :cond_0
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p1

    return-object p1
.end method

.method private checkIllegalModifier(Ljavax/lang/model/element/Modifier;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 467
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p1}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "@Memoized methods cannot be %s"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$objectMethod$0(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 487
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$objectMethod$1(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No method in Object named \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 492
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private objectMethod(Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 485
    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$600(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    return-object p1
.end method

.method private overridesObjectMethod(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 481
    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$600(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljavax/lang/model/util/Elements;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->objectMethod(Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object p1

    iget-object v2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    invoke-static {v2}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$500(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Lcom/google/auto/value/extension/AutoValueExtension$Context;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    return p1
.end method

.method private varargs printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 474
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {p1, v0}, Ljavax/tools/Diagnostic$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    const/4 v1, 0x1

    .line 475
    invoke-static {v0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$302(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->this$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    .line 477
    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->access$400(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;)Ljavax/annotation/processing/Messager;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0, p1, p2, p3}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private pullDownMethodAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 496
    invoke-static {}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$700()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    .line 497
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 498
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private validate()V
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 451
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    const-string v2, "@Memoized methods cannot be void"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 454
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    const-string v2, "@Memoized methods cannot have parameters"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :cond_1
    sget-object v0, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->checkIllegalModifier(Ljavax/lang/model/element/Modifier;)V

    .line 458
    sget-object v0, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->checkIllegalModifier(Ljavax/lang/model/element/Modifier;)V

    .line 459
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->checkIllegalModifier(Ljavax/lang/model/element/Modifier;)V

    const-string v0, "hashCode"

    .line 461
    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->overridesObjectMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "toString"

    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->overridesObjectMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->checkIllegalModifier(Ljavax/lang/model/element/Modifier;)V

    :cond_2
    return-void
.end method


# virtual methods
.method fields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->fields:Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 442
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method method()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->override:Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 447
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method strategy()Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 517
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;

    invoke-direct {v0, p0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 520
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$1100(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 521
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension;->access$1100(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$NullMeansUninitialized;

    invoke-direct {v0, p0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$NullMeansUninitialized;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V

    return-object v0

    .line 522
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;

    invoke-direct {v0, p0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V

    return-object v0
.end method
