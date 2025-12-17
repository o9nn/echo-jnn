.class public Lcom/google/auto/value/processor/AutoValueBuilderProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "AutoValueBuilderProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.AutoValue.Builder"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private validate(Ljavax/lang/model/element/Element;Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    const-string v1, "com.google.auto.value.AutoValue"

    .line 76
    invoke-static {v0, v1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 49
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latest()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/google/auto/value/processor/AutoValueBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 55
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    const-string v0, "com.google.auto.value.AutoValue.Builder"

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    .line 56
    invoke-interface {p2, p1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/lang/model/element/Element;

    .line 64
    invoke-static {p2, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;->hasAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "@AutoValue.Builder can only be applied to a class or interface inside an @AutoValue class"

    .line 65
    invoke-direct {p0, p2, v2}, Lcom/google/auto/value/processor/AutoValueBuilderProcessor;->validate(Ljavax/lang/model/element/Element;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v1
.end method
