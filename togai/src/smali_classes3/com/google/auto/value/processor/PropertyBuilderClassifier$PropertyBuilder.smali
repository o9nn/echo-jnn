.class public Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilderClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/PropertyBuilderClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyBuilder"
.end annotation


# instance fields
.field private final beforeInitDefault:Ljava/lang/String;

.field private final builderType:Ljava/lang/String;

.field private final builderTypeMirror:Ljavax/lang/model/type/TypeMirror;

.field private final builtToBuilder:Ljava/lang/String;

.field private final copyAll:Ljava/lang/String;

.field private final initDefault:Ljava/lang/String;

.field private final initializer:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final propertyBuilderMethod:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->propertyBuilderMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builderType:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builderTypeMirror:Ljavax/lang/model/type/TypeMirror;

    iput-object p4, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->initializer:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->beforeInitDefault:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->initDefault:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builtToBuilder:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->copyAll:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getPropertyBuilderMethodParameters$0(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->propertyBuilderMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 129
    invoke-static {v0}, Lcom/google/auto/value/processor/SimpleMethod;->access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeInitDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->beforeInitDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builderType:Ljava/lang/String;

    return-object v0
.end method

.method getBuilderTypeMirror()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builderTypeMirror:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public getBuiltToBuilder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->builtToBuilder:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyAll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->copyAll:Ljava/lang/String;

    return-object v0
.end method

.method public getInitDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->initDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getInitializer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->initializer:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyBuilderMethod()Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->propertyBuilderMethod:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method public getPropertyBuilderMethodParameters()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder;->propertyBuilderMethod:Ljavax/lang/model/element/ExecutableElement;

    .line 122
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier$PropertyBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 123
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    .line 125
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
