.class public Lcom/google/auto/value/processor/AutoBuilderProcessor;
.super Lcom/google/auto/value/processor/AutoValueishProcessor;
.source "AutoBuilderProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "com.google.auto.value.AutoBuilder"
    }
.end annotation


# static fields
.field private static final ALLOW_OPTION:Ljava/lang/String; = "com.google.auto.value.AutoBuilderIsUnstable"

.field private static final ELEMENT_KIND_RECORD:Ljavax/lang/model/element/ElementKind;


# instance fields
.field private javaLangVoid:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    invoke-static {}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->elementKindRecord()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->ELEMENT_KIND_RECORD:Ljavax/lang/model/element/ElementKind;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.auto.value.AutoBuilder"

    .line 80
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoValueishProcessor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private build(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 4

    .line 340
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 342
    sget-object v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$VerifyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected executable kind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/base/$VerifyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    const-string p1, "<>"

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 346
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private builtType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 329
    sget-object v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 333
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$VerifyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected executable kind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/base/$VerifyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method private static elementKindRecord()Ljavax/lang/model/element/ElementKind;
    .locals 3

    const/4 v0, 0x0

    .line 358
    :try_start_0
    const-class v1, Ljavax/lang/model/element/ElementKind;

    const-string v2, "RECORD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ElementKind;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private executableListString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 261
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, "  "

    const-string v1, ""

    const-string v2, "\n  "

    .line 262
    invoke-static {v2, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private executableMatches(Ljavax/lang/model/element/ExecutableElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)Z"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda11;-><init>()V

    .line 291
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda12;-><init>()V

    .line 292
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableSet;

    .line 293
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 294
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Builder"

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-interface {p1, v1}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 300
    invoke-interface {p1, v2}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    const-string v0, "set"

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    invoke-interface {p1}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return v1
.end method

.method static executableString(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;
    .locals 4

    .line 267
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 272
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, "("

    const-string v2, ")"

    const-string v3, ", "

    .line 273
    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

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

.method private findCallMethodValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .locals 1

    const-string v0, "callMethod"

    .line 407
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    .line 408
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$AnnotationValues;->getString(Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findExecutable(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Ljavax/lang/model/element/ExecutableElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;)",
            "Ljavax/lang/model/element/ExecutableElement;"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->findRelevantExecutables(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "constructor"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "static method named \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_1

    .line 197
    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->matchingExecutable(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 195
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    return-object p1

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p4

    const-string v0, "[AutoBuilderNoVisible] No visible %s for %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 189
    invoke-virtual {p4, p3, v0, p1}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    move-result-object p1

    throw p1
.end method

.method private findOfClassValue(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 2

    const-string v0, "ofClass"

    .line 389
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/auto/common/$AnnotationMirrors;->getAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object p1

    .line 390
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 391
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_2

    .line 392
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 393
    sget-object v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asError(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ErrorType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw v0

    .line 395
    :cond_1
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1

    .line 402
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/auto/value/processor/MissingTypes$MissingTypeException;-><init>(Ljavax/lang/model/type/ErrorType;)V

    throw p1
.end method

.method private findRelevantExecutables(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 209
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 210
    :goto_0
    new-instance p2, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p3}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/google/auto/value/processor/AutoBuilderProcessor;Ljavax/lang/model/element/TypeElement;)V

    .line 211
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 212
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p1
.end method

.method private getOfClass(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 3

    .line 368
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->findOfClassValue(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    .line 369
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->javaLangVoid:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 373
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    .line 374
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 375
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/google/auto/value/processor/AutoBuilderProcessor;->ELEMENT_KIND_RECORD:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v1

    .line 381
    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[AutoBuilderEnclosing] @AutoBuilder must specify ofClass=Something.class or it must be nested inside the class to be built; actually nested inside %s %s."

    .line 377
    invoke-virtual {v1, p1, v2, v0}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 384
    :cond_1
    invoke-static {p2}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$executableMatches$10(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    .line 291
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$executableMatches$11()Ljava/util/TreeSet;
    .locals 2

    .line 292
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$executableString$9(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$findRelevantExecutables$3(Ljava/lang/String;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 208
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$findRelevantExecutables$4(Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1

    .line 209
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$matchingExecutable$7(Ljavax/lang/model/element/ExecutableElement;)I
    .locals 0

    .line 245
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$matchingExecutable$8(ILjavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 247
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$propertySet$0(Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/element/VariableElement;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$propertySet$1(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 0

    .line 159
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private matchingExecutable(Ljavax/lang/model/element/TypeElement;Ljava/util/List;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavax/lang/model/element/ExecutableElement;"
        }
    .end annotation

    .line 230
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/processor/AutoBuilderProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 231
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 245
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    .line 247
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p3, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 248
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 256
    invoke-virtual {p3, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    return-object p1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p2

    .line 254
    invoke-direct {p0, p3}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "[AutoBuilderAmbiguous] Property names correspond to more than one %s:\n%s"

    .line 250
    invoke-virtual {p2, p1, p4, p3}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    move-result-object p1

    throw p1

    .line 241
    :cond_1
    invoke-virtual {p3, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    return-object p1

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object p3

    .line 239
    invoke-direct {p0, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p4, "[AutoBuilderNoMatch] Property names do not correspond to the parameter names of any %s:\n%s"

    .line 234
    invoke-virtual {p3, p1, p4, p2}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    move-result-object p1

    throw p1
.end method

.method private newProperty(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auto/value/processor/AutoValueishProcessor$Property;
    .locals 8

    .line 170
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 172
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object v6

    .line 173
    new-instance p1, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;

    .line 174
    invoke-static {v5}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/util/Optional;Ljava/lang/String;)V

    return-object p1
.end method

.method private propertySet(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda9;-><init>()V

    .line 159
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    invoke-static {v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->fixReservedIdentifiers(Ljava/util/Map;)V

    .line 161
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/google/auto/value/processor/AutoBuilderProcessor;Ljava/util/Map;Ljava/util/Map;)V

    .line 162
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 166
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-object p1
.end method

.method private visibleFrom(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/PackageElement;)Z
    .locals 2

    .line 313
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->effectiveVisibilityOfElement(Ljavax/lang/model/element/Element;)Lautovalue/shaded/com/google$/auto/common/$Visibility;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/google/auto/value/processor/AutoBuilderProcessor$1;->$SwitchMap$com$google$auto$common$Visibility:[I

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/auto/common/$Visibility;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public getSupportedOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.auto.value.OmitIdentifiers"

    const-string v1, "com.google.auto.value.AutoBuilderIsUnstable"

    .line 85
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/auto/value/processor/AutoValueishProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    const-string v0, "java.lang.Void"

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->javaLangVoid:Ljavax/lang/model/type/TypeMirror;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$findRelevantExecutables$5$com-google-auto-value-processor-AutoBuilderProcessor(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 211
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->visibleFrom(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/PackageElement;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$matchingExecutable$6$com-google-auto-value-processor-AutoBuilderProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 0

    .line 230
    invoke-direct {p0, p2, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->executableMatches(Ljavax/lang/model/element/ExecutableElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$propertySet$2$com-google-auto-value-processor-AutoBuilderProcessor(Ljava/util/Map;Ljava/util/Map;Ljavax/lang/model/element/VariableElement;)Lcom/google/auto/value/processor/AutoValueishProcessor$Property;
    .locals 1

    .line 165
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 164
    invoke-direct {p0, p3, p1, p2}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->newProperty(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auto/value/processor/AutoValueishProcessor$Property;

    move-result-object p1

    return-object p1
.end method

.method nullableAnnotationForMethod(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method processType(Ljavax/lang/model/element/TypeElement;)V
    .locals 11

    .line 98
    iget-object v0, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "com.google.auto.value.AutoBuilderIsUnstable"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v2, "Compile with -A%s to enable this UNSUPPORTED AND UNSTABLE prototype"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 105
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 106
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v0

    const-string v1, "[AutoBuilderWrongType] @AutoBuilder only applies to classes and interfaces"

    new-array v3, v2, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v0, p1, v1, v3}, Lcom/google/auto/value/processor/ErrorReporter;->abortWithError(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/auto/value/processor/AbortProcessingException;

    .line 112
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;)V

    const-string v0, "com.google.auto.value.AutoBuilder"

    .line 115
    invoke-static {p1, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->getAnnotationMirror(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->getOfClass(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    const-string v3, "AutoBuilder ofClass"

    .line 117
    invoke-virtual {p0, v1, p1, v3}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->checkModifiersIfNested(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->findCallMethodValue(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->elementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->abstractMethodsIn(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v4

    .line 122
    invoke-direct {p0, v1, v0, p1, v4}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->findExecutable(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 123
    new-instance v3, Lcom/google/auto/value/processor/BuilderSpec;

    iget-object v5, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v6

    invoke-direct {v3, v1, v5, v6}, Lcom/google/auto/value/processor/BuilderSpec;-><init>(Ljavax/lang/model/element/TypeElement;Ljavax/annotation/processing/ProcessingEnvironment;Lcom/google/auto/value/processor/ErrorReporter;)V

    .line 124
    new-instance v10, Lcom/google/auto/value/processor/BuilderSpec$Builder;

    invoke-direct {v10, v3, p1}, Lcom/google/auto/value/processor/BuilderSpec$Builder;-><init>(Lcom/google/auto/value/processor/BuilderSpec;Ljavax/lang/model/element/TypeElement;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->builtType(Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->errorReporter()Lcom/google/auto/value/processor/ErrorReporter;

    move-result-object v5

    iget-object v6, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    move-object v7, v0

    move-object v8, v3

    move-object v9, p1

    .line 127
    invoke-static/range {v4 .. v9}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->classify(Ljava/lang/Iterable;Lcom/google/auto/value/processor/ErrorReporter;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeElement;)Ljava/util/Optional;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 133
    :cond_2
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/auto/value/processor/BuilderMethodClassifier;

    .line 135
    invoke-virtual {v4}, Lcom/google/auto/value/processor/BuilderMethodClassifier;->builderGetters()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v5

    new-instance v6, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v5, v6}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v5

    .line 136
    new-instance v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;

    invoke-direct {v6}, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;-><init>()V

    .line 137
    invoke-direct {p0, v0, v5}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->propertySet(Ljavax/lang/model/element/ExecutableElement;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v5

    iput-object v5, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 138
    invoke-virtual {v10, v6, v4}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->defineVars(Lcom/google/auto/value/processor/AutoValueOrBuilderTemplateVars;Lcom/google/auto/value/processor/BuilderMethodClassifier;)V

    .line 139
    iget-object v4, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v4

    const-string v5, "com.google.auto.value.OmitIdentifiers"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->identifiers:Ljava/lang/Boolean;

    const-string v4, "AutoBuilder_"

    .line 140
    invoke-static {p1, v4}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->generatedClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->builderName:Ljava/lang/String;

    .line 142
    invoke-static {v3}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->builtType:Ljava/lang/String;

    .line 143
    invoke-direct {p0, v0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->build(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->build:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->typeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->types:Ljavax/lang/model/util/Types;

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->toBuilderConstructor:Ljava/lang/Boolean;

    .line 146
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v6}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->defineSharedVarsForType(Ljavax/lang/model/element/TypeElement;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueishTemplateVars;)V

    .line 147
    invoke-virtual {v6}, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->toText()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iget-object v2, v6, Lcom/google/auto/value/processor/AutoBuilderTemplateVars;->pkg:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/google/auto/value/processor/Reformatter;->fixup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v4, v0, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    return-void
.end method
