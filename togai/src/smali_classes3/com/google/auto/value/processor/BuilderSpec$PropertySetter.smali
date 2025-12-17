.class public Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;
.super Ljava/lang/Object;
.source "BuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/BuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertySetter"
.end annotation


# instance fields
.field private final access:Ljava/lang/String;

.field private final copier:Lcom/google/auto/value/processor/BuilderSpec$Copier;

.field private final name:Ljava/lang/String;

.field private final nullableAnnotation:Ljava/lang/String;

.field private final parameterTypeString:Ljava/lang/String;

.field private final primitiveParameter:Z

.field private final setter:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/processor/BuilderSpec$Copier;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->setter:Ljavax/lang/model/element/ExecutableElement;

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->copier:Lcom/google/auto/value/processor/BuilderSpec$Copier;

    .line 444
    invoke-static {p1}, Lcom/google/auto/value/processor/SimpleMethod;->access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->access:Ljava/lang/String;

    .line 445
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->name:Ljava/lang/String;

    .line 446
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->primitiveParameter:Z

    .line 447
    invoke-static {p1, p2}, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->parameterTypeString(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->parameterTypeString:Ljava/lang/String;

    .line 448
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/VariableElement;

    .line 449
    invoke-static {p1, p2}, Lcom/google/auto/value/processor/AutoValueishProcessor;->nullableAnnotationFor(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;)Ljava/util/Optional;

    move-result-object p1

    const-string p2, ""

    .line 450
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->nullableAnnotation:Ljava/lang/String;

    return-void
.end method

.method private static parameterTypeString(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 0

    .line 458
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 459
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 467
    :cond_0
    invoke-static {p1}, Lcom/google/auto/value/processor/TypeEncoder;->encodeWithAnnotations(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copy(Lcom/google/auto/value/processor/AutoValueishProcessor$Property;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->copier:Lcom/google/auto/value/processor/BuilderSpec$Copier;

    .line 492
    invoke-static {v0}, Lcom/google/auto/value/processor/BuilderSpec$Copier;->access$400(Lcom/google/auto/value/processor/BuilderSpec$Copier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->copier:Lcom/google/auto/value/processor/BuilderSpec$Copier;

    invoke-static {v1}, Lcom/google/auto/value/processor/BuilderSpec$Copier;->access$500(Lcom/google/auto/value/processor/BuilderSpec$Copier;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(%s == null ? null : %s)"

    .line 494
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNullableAnnotation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->nullableAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->parameterTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveParameter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->primitiveParameter:Z

    return v0
.end method

.method getSetter()Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertySetter;->setter:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method
