.class public Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;
.super Ljava/lang/Object;
.source "AutoAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/AutoAnnotationProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# instance fields
.field private final context:Ljavax/lang/model/element/Element;

.field private final method:Ljavax/lang/model/element/ExecutableElement;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iput-object p2, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->context:Ljavax/lang/model/element/Element;

    iput-object p3, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;)Ljavax/lang/model/element/ExecutableElement;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    return-object p0
.end method


# virtual methods
.method public getComponentType()Ljava/lang/String;
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    .line 527
    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 573
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 578
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->context:Ljavax/lang/model/element/Element;

    .line 577
    invoke-static {v0, v1, v2, v3}, Lcom/google/auto/value/processor/AnnotationOutput;->sourceFormForInitializer(Ljavax/lang/model/element/AnnotationValue;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Ljavax/lang/model/type/TypeKind;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0
.end method

.method public getNameHash()I
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMirror()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 531
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public isArrayOfClassWithBounds()Z
    .locals 5

    .line 545
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 549
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v3, :cond_1

    return v2

    .line 552
    :cond_1
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    iget-object v3, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 553
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v3

    invoke-interface {v3, v0}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v3, "java.lang.Class"

    .line 555
    invoke-interface {v0, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 558
    :cond_2
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    return v2

    .line 561
    :cond_3
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 562
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v1, v4, :cond_4

    return v3

    .line 565
    :cond_4
    invoke-static {v0}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asWildcard(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    .line 569
    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$Member;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 517
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
