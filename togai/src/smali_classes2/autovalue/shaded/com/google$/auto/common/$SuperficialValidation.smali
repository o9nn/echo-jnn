.class public final Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;
.super Ljava/lang/Object;
.source "$SuperficialValidation.java"


# static fields
.field private static final ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/element/ElementVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/type/TypeVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/element/AnnotationValueVisitor<",
            "Ljava/lang/Boolean;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;

    .line 127
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$2;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$2;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    .line 207
    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$3;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Iterable;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotations(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljavax/lang/model/element/Element;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->isValidBaseElement(Ljavax/lang/model/element/Element;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Iterable;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateTypes(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p0

    return p0
.end method

.method private static isValidBaseElement(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 108
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotations(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$validateAnnotationValues$0(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 203
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method private static validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 193
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotationValues(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    .line 281
    invoke-interface {p0, v0, p1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static validateAnnotationValues(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljavax/lang/model/element/ExecutableElement;",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)Z"
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$$ExternalSyntheticLambda0;-><init>()V

    .line 200
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static validateAnnotations(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 184
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 185
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static validateElement(Ljavax/lang/model/element/Element;)Z
    .locals 2

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;

    const/4 v1, 0x0

    .line 104
    invoke-interface {p0, v0, v1}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static validateElements(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation$$ExternalSyntheticLambda1;-><init>()V

    .line 55
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static validateType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    sget-object v0, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    const/4 v1, 0x0

    .line 179
    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static validateTypes(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)Z"
        }
    .end annotation

    .line 114
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 115
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
