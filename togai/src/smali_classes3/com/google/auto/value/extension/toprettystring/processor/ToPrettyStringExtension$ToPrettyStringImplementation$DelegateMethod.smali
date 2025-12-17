.class Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;
.super Ljava/lang/Object;
.source "ToPrettyStringExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegateMethod"
.end annotation


# instance fields
.field private final indentAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field private methodName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

.field final synthetic this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;


# direct methods
.method constructor <init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->methodName:Ljava/util/Optional;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->propertyAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    iput-object p3, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->indentAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    return-void
.end method

.method private createMethod(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/function/Supplier<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;"
        }
    .end annotation

    .line 283
    invoke-static {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->methodBuilder(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v0, v1

    .line 284
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    .line 285
    invoke-static {v0}, Lautovalue/shaded/com/squareup/javapoet$/$ClassName;->get(Ljava/lang/Class;)Lautovalue/shaded/com/squareup/javapoet$/$ClassName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->returns(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 286
    invoke-static {p2}, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    move-result-object p2

    const-string v0, "value"

    new-array v1, v2, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {p1, p2, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    sget-object p2, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->INT:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    const-string v0, "indentLevel"

    new-array v1, v2, [Ljavax/lang/model/element/Modifier;

    .line 287
    invoke-virtual {p1, p2, v0, v1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addParameter(Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    const-string p2, "if (value == null)"

    new-array v0, v2, [Ljava/lang/Object;

    .line 288
    invoke-virtual {p1, p2, v0}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    const-string p2, "null"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "return $S"

    .line 289
    invoke-virtual {p1, v0, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->endControlFlow()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 291
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-virtual {p1, p2}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->addCode(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object p1

    return-object p1
.end method

.method private newDelegateMethodName(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "format"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    invoke-static {v1, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$200(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 275
    invoke-static {v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$300(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method invocation(Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/function/Supplier<",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;",
            ">;)",
            "Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;"
        }
    .end annotation

    .line 257
    invoke-static {}, Lautovalue/shaded/com/google$/auto/common/$MoreTypes;->equivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 260
    invoke-static {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$100(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 261
    invoke-static {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$100(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->methodName:Ljava/util/Optional;

    new-instance v3, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod$$ExternalSyntheticLambda0;-><init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;Ljavax/lang/model/type/TypeMirror;)V

    .line 264
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    invoke-direct {p0, v2, p1, p2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->createMethod(Ljava/lang/String;Ljavax/lang/model/type/TypeMirror;Ljava/util/function/Supplier;)Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    move-result-object p1

    .line 261
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->this$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    .line 269
    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->access$100(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;

    iget-object p1, p1, Lautovalue/shaded/com/squareup/javapoet$/$MethodSpec;->name:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->propertyAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->indentAccess:Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "$N($L, $L)"

    .line 268
    invoke-static {p2, p1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$invocation$0$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->newDelegateMethodName(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method methodName(Ljava/lang/String;)Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;
    .locals 0

    .line 252
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$DelegateMethod;->methodName:Ljava/util/Optional;

    return-object p0
.end method
