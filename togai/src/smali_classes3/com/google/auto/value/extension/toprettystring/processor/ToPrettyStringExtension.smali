.class public final Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;
.super Lcom/google/auto/value/extension/AutoValueExtension;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$PrettyPrintableKind;,
        Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final INDENT_METHOD_NAME:Ljava/lang/String; = "$indent"

.field private static final INHERITED_VISIBILITY_MODIFIERS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_VALUE_SEPARATOR:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    .line 77
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->INHERITED_VISIBILITY_MODIFIERS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    const-string v0, ": "

    .line 80
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "$S"

    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    sput-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->KEY_VALUE_SEPARATOR:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/auto/value/extension/AutoValueExtension;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 1

    sget-object v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->KEY_VALUE_SEPARATOR:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-object v0
.end method

.method private static indentMethod()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 5

    const-string v0, "$indent"

    .line 122
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v1, v2

    .line 123
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v2, "level"

    new-array v4, v3, [Ljavax/lang/model/element/Modifier;

    .line 125
    invoke-virtual {v0, v1, v2, v4}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/StringBuilder;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "$1T builder = new $1T()"

    .line 126
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-string v1, "for (int i = 0; i < level; i++)"

    new-array v2, v3, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-string v1, "  "

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "builder.append($S)"

    .line 128
    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    const-string v1, "return builder.toString()"

    new-array v2, v3, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    return-object v0
.end method

.method private toPrettyStringMethodSpecs(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 98
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/Override;

    .line 99
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addAnnotation(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    .line 100
    invoke-static {v2}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/lang/model/element/Modifier;

    const/4 v3, 0x0

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v1

    .line 103
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->INHERITED_VISIBILITY_MODIFIERS:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    invoke-static {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;

    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->autoValueClass()Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "return $S"

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 106
    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->create(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$000(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 109
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->properties()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\n"

    .line 110
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, " + $S"

    invoke-virtual {v0, v2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    :cond_0
    const-string p1, "}"

    .line 112
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, " + $S;\n"

    invoke-virtual {v0, v2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    .line 114
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 116
    invoke-static {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$100(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->indentMethod()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public applicable(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Z
    .locals 1

    .line 550
    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public consumeMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auto/value/extension/AutoValueExtension$Context;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 555
    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringMethods;->toPrettyStringMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic consumeMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Ljava/util/Set;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->consumeMethods(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public generateClass(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p1, p2, p3, p4}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->extensionClassTypeSpecBuilder(Lcom/google/auto/value/extension/AutoValueExtension$Context;Ljava/lang/String;Ljava/lang/String;Z)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p2

    .line 87
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension;->toPrettyStringMethodSpecs(Lcom/google/auto/value/extension/AutoValueExtension$Context;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->addMethods(Ljava/lang/Iterable;)Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;

    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;

    move-result-object p2

    .line 89
    invoke-interface {p1}, Lcom/google/auto/value/extension/AutoValueExtension$Context;->packageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->builder(Ljava/lang/String;Lautovalue/shaded/com/squareup/javapoet$/$TypeSpec;)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->skipJavaLangImports(Z)Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$JavaFile;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public incrementalType(Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;
    .locals 0

    .line 560
    sget-object p1, Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;->ISOLATING:Lcom/google/auto/value/extension/AutoValueExtension$IncrementalExtensionType;

    return-object p1
.end method
