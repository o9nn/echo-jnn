.class final Lcom/google/auto/value/processor/TypeEncoder;
.super Ljava/lang/Object;
.source "TypeEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;,
        Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;,
        Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;,
        Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;
    }
.end annotation


# static fields
.field private static final ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;

.field private static final RAW_ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;-><init>(Lcom/google/auto/value/processor/TypeEncoder$1;)V

    sput-object v0, Lcom/google/auto/value/processor/TypeEncoder;->ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;

    .line 75
    new-instance v0, Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;

    invoke-direct {v0, v1}, Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;-><init>(Lcom/google/auto/value/processor/TypeEncoder$1;)V

    sput-object v0, Lcom/google/auto/value/processor/TypeEncoder;->RAW_ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/google/auto/value/processor/TypeEncoder;->className(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/auto/value/processor/TypeEncoder;->appendAnnotations(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static appendAnnotations(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 223
    invoke-static {v0}, Lcom/google/auto/value/processor/AnnotationOutput;->sourceFormForAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appendTypeParameterWithBounds(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 201
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/TypeEncoder;->appendAnnotations(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 202
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, " extends "

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 205
    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->isUnannotatedJavaLangObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static className(Ljavax/lang/model/type/DeclaredType;)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 1

    .line 152
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object p1

    .line 151
    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decode(Ljava/lang/String;Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 7

    .line 157
    new-instance v6, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;-><init>(Ljava/lang/String;Ljavax/lang/model/util/Elements;Ljavax/lang/model/util/Types;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V

    .line 158
    invoke-virtual {v6}, Lcom/google/auto/value/processor/TypeEncoder$TypeRewriter;->rewrite()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/auto/value/processor/TypeEncoder;->ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$EncodingTypeVisitor;

    .line 85
    invoke-interface {p0, v1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeRaw(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/auto/value/processor/TypeEncoder;->RAW_ENCODING_TYPE_VISITOR:Lcom/google/auto/value/processor/TypeEncoder$RawEncodingTypeVisitor;

    .line 94
    invoke-interface {p0, v1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 102
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;-><init>(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    .line 129
    new-instance p1, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;

    invoke-direct {p1, p2, v1}, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;-><init>(Ljava/util/Set;Ljava/util/function/Function;)V

    .line 130
    invoke-virtual {p1, p0, v0}, Lcom/google/auto/value/processor/TypeEncoder$AnnotatedEncodingTypeVisitor;->visit2(Ljavax/lang/model/type/TypeMirror;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isUnannotatedJavaLangObject(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 215
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    const-string v0, "java.lang.Object"

    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$encodeWithAnnotations$0(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 0

    if-ne p2, p0, :cond_0

    .line 124
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p0

    .line 125
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static typeParametersString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/TypeParameterElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 185
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v2, v0}, Lcom/google/auto/value/processor/TypeEncoder;->appendTypeParameterWithBounds(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/StringBuilder;)V

    const-string v1, ", "

    goto :goto_0

    :cond_1
    const-string p0, ">"

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
