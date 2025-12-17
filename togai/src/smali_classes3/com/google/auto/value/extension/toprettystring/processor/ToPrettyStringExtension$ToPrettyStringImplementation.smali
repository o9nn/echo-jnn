.class Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;
.super Ljava/lang/Object;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToPrettyStringImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;
    }
.end annotation


# instance fields
.field private final delegateMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljavax/lang/model/util/Elements;

.field private final methodNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final toStringCodeBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

.field private final types:Ljavax/lang/model/util/Types;


# direct methods
.method public static synthetic $r8$lambda$9TfrZGrHY_KOPTjF8kIdcKZAZ-0(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    invoke-direct {p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->forLoopMethodBody()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->toStringCodeBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->delegateMethods:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->methodNames:Ljava/util/Set;

    .line 144
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    .line 145
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    .line 147
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/auto/common/$MoreElements;->getLocalAndInheritedMethods(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda5;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    .line 148
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->toStringCodeBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Map;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->delegateMethods:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->nameForType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Set;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->methodNames:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->simpleNameForType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljavax/lang/model/util/Types;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    return-object p0
.end method

.method private collectionOf(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string v2, "java.util.Collection"

    .line 390
    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/lang/model/type/TypeMirror;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method static create(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;
    .locals 3

    .line 152
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;)V

    .line 154
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->propertyTypes()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda7;-><init>(Lcom/google/auto/value/extension/AutoValueExtension$Context;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    .line 155
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method private forEachLoopMethodBody(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    const-string v0, "for ($T element : value)"

    .line 307
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    const-string v2, "element"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 311
    invoke-static {v2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    const-string v4, "indentLevel + 1"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v4

    invoke-direct {p0, v2, v4, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "["

    const-string v2, "]"

    .line 307
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->loopMethodBody(Ljava/lang/String;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;[Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private forEachMapEntryMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 5

    .line 332
    const-class v0, Ljava/util/Map$Entry;

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "$T<$T, $T>"

    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    const-string v1, "for ($L entry : $L.entrySet())"

    .line 333
    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 336
    invoke-static {v1, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    const-string v1, "entry.getKey()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 337
    invoke-static {v1, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "indentLevel + 1"

    invoke-static {v4, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v3

    invoke-direct {p0, v1, v3, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x1

    .line 338
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->access$400()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "entry.getValue()"

    new-array v1, v2, [Ljava/lang/Object;

    .line 339
    invoke-static {p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{"

    const-string p2, "}"

    .line 333
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->loopMethodBody(Ljava/lang/String;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;[Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private forLoopMethodBody()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "for (int i = 0; i < value.length(); i++)"

    .line 318
    invoke-static {v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    const-string v3, "value.get(i)"

    new-array v4, v0, [Ljava/lang/Object;

    .line 319
    invoke-static {v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "["

    const-string v3, "]"

    .line 315
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->loopMethodBody(Ljava/lang/String;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;[Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method

.method private format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    .line 181
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    invoke-direct {v0, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind$KindVisitor;-><init>(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)V

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 182
    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V

    .line 183
    sget-object p2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$1;->$SwitchMap$com$google$auto$value$extension$toprettystring$processor$ToPrettyStringExtension$PrettyPrintableKind:[I

    invoke-virtual {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->ordinal()I

    move-result v2

    aget p2, p2, v2

    packed-switch p2, :pswitch_data_0

    .line 215
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 213
    :pswitch_0
    invoke-direct {p0, p3, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->formatMultimap(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    .line 211
    :pswitch_1
    invoke-direct {p0, p3, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->formatMap(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    .line 207
    :pswitch_2
    invoke-static {p3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 208
    new-instance p2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda2;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;)V

    invoke-virtual {v1, p3, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    .line 204
    :pswitch_3
    new-instance p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda1;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    invoke-virtual {v1, p3, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string p1, "java.util.Collection"

    .line 200
    invoke-direct {p0, p3, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->resolvedTypeParameters(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 202
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->collectionOf(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    new-instance p3, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda11;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)V

    .line 201
    invoke-virtual {v1, p2, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_5
    invoke-static {p3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 197
    new-instance p2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda10;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)V

    invoke-virtual {v1, p3, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_6
    invoke-static {p3}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {p1, p2, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethod(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    .line 194
    new-instance p2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/element/ExecutableElement;)V

    invoke-virtual {v1, p3, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "format"

    .line 188
    invoke-virtual {v1, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->methodName(Ljava/lang/String;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;

    move-result-object p1

    iget-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string p3, "java.lang.Object"

    .line 190
    invoke-interface {p2, p3}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    new-instance p3, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda8;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    .line 189
    invoke-virtual {p1, p2, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    :pswitch_8
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatMap(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    const-string v0, "java.util.Map"

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->resolvedTypeParameters(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->mapOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)V

    .line 222
    invoke-virtual {p2, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private formatMultimap(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    const-string v0, "autovalue.shaded.com.google$.common.collect.$Multimap"

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->resolvedTypeParameters(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    const/4 v1, 0x1

    .line 230
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    .line 232
    invoke-direct {p0, v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->multimapOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    new-instance v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda4;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)V

    .line 231
    invoke-virtual {p2, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$create$1(Lcom/google/auto/value/extension/AutoValueExtension$Context;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;)V
    .locals 3

    .line 158
    invoke-interface {p0}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->properties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    iget-object v0, p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->toStringCodeBlock:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    const-string v1, "  "

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "\n%s%s = "

    .line 161
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "$N()"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 162
    invoke-static {v1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1"

    invoke-static {v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v1

    invoke-direct {p1, p0, v1, p3}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    const-string p1, ","

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\n + $S + $L + $S"

    .line 159
    invoke-virtual {v0, p1, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    return-void
.end method

.method static synthetic lambda$loopMethodBody$9(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    const-string v0, ".append($L)"

    .line 361
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method private varargs loopMethodBody(Ljava/lang/String;Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;[Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    .line 348
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    const-string v1, "\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "$S"

    .line 349
    invoke-static {v3, v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    const-string v2, "$indent"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "$N(indentLevel + 1)"

    .line 350
    invoke-static {v5, v4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v4

    invoke-virtual {v0, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p4

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 352
    invoke-static {v3, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    invoke-virtual {p4, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p4

    .line 353
    invoke-virtual {p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p4

    .line 354
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    const-class v3, Ljava/lang/StringBuilder;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "$1T builder = new $1T().append($2S)"

    .line 355
    invoke-virtual {v0, v3, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "boolean hasElements = false"

    .line 356
    invoke-virtual {p1, v4, v3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string v3, "$L"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 357
    invoke-virtual {p1, v3, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda6;

    invoke-direct {p4}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda6;-><init>()V

    .line 361
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string p4, ""

    .line 362
    invoke-static {p4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->joining(Ljava/lang/String;)Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "builder$L"

    .line 358
    invoke-virtual {p1, p4, p3}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string p3, "hasElements = true"

    new-array p4, v0, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p1, p3, p4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string p3, "if (hasElements)"

    new-array p4, v0, [Ljava/lang/Object;

    .line 365
    invoke-virtual {p1, p3, p4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string p3, "builder.append($S).append($N(indentLevel))"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p4

    .line 366
    invoke-virtual {p1, p3, p4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    const-string p3, "return builder.append($S).toString()"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 368
    invoke-virtual {p1, p3, p2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private mapMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    const-string v0, "value"

    .line 323
    invoke-direct {p0, p1, p2, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->forEachMapEntryMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private mapOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string v2, "java.util.Map"

    .line 394
    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/type/TypeMirror;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method private multimapMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    const-string v0, "value.asMap()"

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->forEachMapEntryMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private multimapOf(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .locals 4

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string v2, "autovalue.shaded.com.google$.common.collect.$Multimap"

    .line 399
    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/type/TypeMirror;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 398
    invoke-interface {v0, v1, v2}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method private nameForType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$1;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private optionalMethodBody(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 6

    .line 374
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "value.get()"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 377
    invoke-static {v2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    const-string v4, "indentLevel"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v4

    invoke-direct {p0, v2, v4, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->format(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    aput-object p1, v1, v3

    sget-object p1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->OPTIONAL:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;

    .line 378
    invoke-virtual {p2, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "<empty>"

    goto :goto_0

    :cond_0
    const-string p1, "<absent>"

    :goto_0
    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "return (value.isPresent() ? $L : $S)"

    .line 375
    invoke-virtual {v0, p1, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private reindent(Ljava/lang/CharSequence;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    .line 297
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "$indent"

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "return value.$1N().replace($2S, $2S + $3N(indentLevel))"

    .line 298
    invoke-virtual {v0, v1, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method private resolvedTypeParameters(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    .line 384
    invoke-interface {v0, p2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda3;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)V

    .line 385
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 386
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors;->toImmutableList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p1
.end method

.method private simpleNameForType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$2;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$2;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method isMapOrMultimap(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string v1, "java.util.Map"

    .line 441
    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    .line 442
    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->elements:Ljavax/lang/model/util/Elements;

    const-string v2, "autovalue.shaded.com.google$.common.collect.$Multimap"

    .line 445
    invoke-interface {v0, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    .line 447
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$format$2$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    .line 0
    const-string v0, "toString"

    .line 190
    invoke-direct {p0, v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->reindent(Ljava/lang/CharSequence;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$format$3$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 194
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->reindent(Ljava/lang/CharSequence;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$format$4$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->forEachLoopMethodBody(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$format$5$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->forEachLoopMethodBody(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$format$6$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->optionalMethodBody(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$formatMap$7$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->mapMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$formatMultimap$8$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 0

    .line 233
    invoke-direct {p0, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->collectionOf(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->multimapMethodBody(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$new$0$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->methodNames:Ljava/util/Set;

    .line 148
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$resolvedTypeParameters$10$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/TypeParameterElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->types:Ljavax/lang/model/util/Types;

    .line 385
    invoke-static {p1}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method
