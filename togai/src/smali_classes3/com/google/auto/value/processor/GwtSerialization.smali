.class Lcom/google/auto/value/processor/GwtSerialization;
.super Ljava/lang/Object;
.source "GwtSerialization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;,
        Lcom/google/auto/value/processor/GwtSerialization$Property;
    }
.end annotation


# instance fields
.field private final gwtCompatibility:Lcom/google/auto/value/processor/GwtCompatibility;

.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

.field private final type:Ljavax/lang/model/element/TypeElement;


# direct methods
.method constructor <init>(Lcom/google/auto/value/processor/GwtCompatibility;Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/TypeElement;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/GwtSerialization;->gwtCompatibility:Lcom/google/auto/value/processor/GwtCompatibility;

    iput-object p2, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    iput-object p3, p0, Lcom/google/auto/value/processor/GwtSerialization;->type:Ljavax/lang/model/element/TypeElement;

    return-void
.end method

.method private computeClassHash(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/auto/value/processor/AutoValueishProcessor$Property;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/auto/value/processor/GwtSerialization;->type:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    const-string v4, ""

    const/4 v5, 0x0

    .line 261
    invoke-static {v1, v3, v4, v5}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 268
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/value/processor/TypeEncoder;->encode(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 270
    invoke-static {v1, v3, p2, v5}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v1

    .line 271
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$maybeWriteGwtSerializer$0(Lcom/google/auto/value/processor/AutoValueishProcessor$Property;)Lcom/google/auto/value/processor/GwtSerialization$Property;
    .locals 1

    .line 103
    new-instance v0, Lcom/google/auto/value/processor/GwtSerialization$Property;

    check-cast p0, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    invoke-direct {v0, p0}, Lcom/google/auto/value/processor/GwtSerialization$Property;-><init>(Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;)V

    return-object v0
.end method

.method private shouldWriteGwtSerializer()Z
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization;->gwtCompatibility:Lcom/google/auto/value/processor/GwtCompatibility;

    .line 60
    invoke-virtual {v0}, Lcom/google/auto/value/processor/GwtCompatibility;->gwtCompatibleAnnotation()Ljava/util/Optional;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 64
    invoke-static {v0}, Lcom/google/auto/value/processor/GwtCompatibility;->getElementValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v3, "serializable"

    invoke-interface {v2, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v1}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 241
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/lang/model/element/Element;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object p3

    .line 242
    invoke-interface {p3}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 244
    :try_start_2
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 242
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p3, :cond_0

    .line 244
    :try_start_4
    invoke-virtual {p3}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 247
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p3

    sget-object v0, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not write generated class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-interface {p3, v0, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method maybeWriteGwtSerializer(Lcom/google/auto/value/processor/AutoValueTemplateVars;Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/google/auto/value/processor/GwtSerialization;->shouldWriteGwtSerializer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;

    invoke-direct {v0}, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;-><init>()V

    .line 90
    iget-object v1, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->pkg:Ljava/lang/String;

    .line 91
    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->subclass:Ljava/lang/String;

    .line 92
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->formalTypes:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->formalTypes:Ljava/lang/String;

    .line 93
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->actualTypes:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->actualTypes:Ljava/lang/String;

    .line 94
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builderTypeName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->useBuilder:Ljava/lang/Boolean;

    .line 95
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builderSetters:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->builderSetters:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 96
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->builderPropertyBuilders:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 97
    iget-object p2, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->generated:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->generated:Ljava/lang/String;

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->pkg:Ljava/lang/String;

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->subclass:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_CustomFieldSerializer"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-static {p2}, Lcom/google/auto/value/processor/TypeSimplifier;->simpleNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->serializerClass:Ljava/lang/String;

    .line 101
    iget-object v1, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 102
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/processor/GwtSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/auto/value/processor/GwtSerialization$$ExternalSyntheticLambda0;-><init>()V

    .line 103
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 104
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->props:Ljava/util/List;

    .line 105
    iget-object p1, p1, Lcom/google/auto/value/processor/AutoValueTemplateVars;->props:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    iget-object v1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->pkg:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/auto/value/processor/GwtSerialization;->computeClassHash(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->classHashString:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->toText()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/auto/value/processor/GwtSerialization;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 107
    iget-object v0, v0, Lcom/google/auto/value/processor/GwtSerialization$GwtTemplateVars;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auto/value/processor/GwtSerialization;->type:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/google/auto/value/processor/TypeEncoder;->decode(Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization;->type:Ljavax/lang/model/element/TypeElement;

    .line 108
    invoke-direct {p0, p2, p1, v0}, Lcom/google/auto/value/processor/GwtSerialization;->writeSourceFile(Ljava/lang/String;Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V

    :cond_1
    return-void
.end method
