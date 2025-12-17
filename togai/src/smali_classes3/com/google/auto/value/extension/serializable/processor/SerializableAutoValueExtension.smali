.class public final Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;
.super Lcom/google/auto/value/extension/AutoValueExtension;
.source "SerializableAutoValueExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;,
        Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/google/auto/value/extension/AutoValueExtension;-><init>()V

    return-void
.end method

.method private static hasSerializableAutoValueAnnotation(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 1

    .line 317
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda0;-><init>()V

    .line 318
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 319
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda2;-><init>()V

    .line 320
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$$ExternalSyntheticLambda3;-><init>()V

    .line 321
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static hasSerializableInterface(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 2

    .line 305
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    const-class v1, Ljava/io/Serializable;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 311
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    .line 313
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$hasSerializableAutoValueAnnotation$0(Ljavax/lang/model/element/Name;)Z
    .locals 1

    const-string v0, "com.google.auto.value.extension.serializable.SerializableAutoValue"

    .line 321
    invoke-interface {p0, v0}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public applicable(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 1

    .line 69
    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;->hasSerializableInterface(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension;->hasSerializableAutoValueAnnotation(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateClass(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 80
    new-instance v0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->access$000(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public incrementalType(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;
    .locals 0

    .line 74
    sget-object p1, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->ISOLATING:Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    return-object p1
.end method
