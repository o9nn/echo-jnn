.class final Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;
.super Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;
.source "MemoizeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckBooleanField"
.end annotation


# instance fields
.field private final field:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

.field final synthetic this$1:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;


# direct methods
.method private constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)V
    .locals 3

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;->this$1:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;

    const/4 v0, 0x0

    .line 559
    invoke-direct {p0, p1, v0}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$InitializationStrategy;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V

    .line 561
    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$TypeName;->BOOLEAN:Lautovalue/shaded/com/squareup/javapoet$/$TypeName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-static {p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->access$1500(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Memoized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;->access$1600(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lautovalue/shaded/com/squareup/javapoet$/$TypeName;Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;->field:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;-><init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider;)V

    return-void
.end method


# virtual methods
.method additionalFields()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;->field:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    .line 566
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method checkMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;->field:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    .line 571
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "!$N"

    invoke-static {v1, v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method

.method setMemoized()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
    .locals 3

    .line 576
    invoke-static {}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;->builder()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$MethodOverrider$CheckBooleanField;->field:Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "$N = true"

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock$Builder;->build()Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method
