.class Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.source "$ReferenceNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReferenceNode"
.end annotation


# static fields
.field private static final INDEX_OF_INT:I

.field private static final NUMERICAL_PRIMITIVES:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;",
            ">;"
        }
    .end annotation
.end field

.field final id:Ljava/lang/String;

.field final lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 288
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->NUMERICAL_PRIMITIVES:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 290
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->INDEX_OF_INT:I

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->id:Ljava/lang/String;

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->args:Ljava/util/List;

    return-void
.end method

.method static compatibleArgs([Ljava/lang/Class;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 266
    array-length v0, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 269
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 270
    aget-object v1, p0, v0

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    invoke-static {v1, v3}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->primitiveIsCompatible(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz v3, :cond_2

    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->args:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)V

    .line 233
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 234
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->id:Ljava/lang/String;

    .line 235
    invoke-interface {p1, p3, v1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->publicMethodsWithName(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 240
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 247
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_2

    if-ne p3, v1, :cond_1

    .line 252
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ambiguous method invocation, could be one of:\n  "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "\n  "

    .line 256
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Joiner;->on(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Joiner;

    move-result-object p3

    invoke-virtual {p3, p1}, Lautovalue/shaded/com/google$/common/base/$Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    .line 249
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Parameters for method "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " have wrong types: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    .line 237
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No method "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$evaluate$0(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)Ljava/lang/Object;
    .locals 0

    .line 233
    invoke-virtual {p1, p0}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$evaluate$1(Ljava/util/List;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 240
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->compatibleArgs([Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$evaluate$2(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 245
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static primitiveIsCompatible(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/primitives/$Primitives;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/primitives/$Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->primitiveTypeIsAssignmentCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static primitiveTypeIsAssignmentCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->NUMERICAL_PRIMITIVES:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 305
    invoke-virtual {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v2, 0x0

    if-gez p0, :cond_1

    return v2

    .line 309
    :cond_1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_3

    sget p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->INDEX_OF_INT:I

    if-lt p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 312
    :cond_3
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_4

    return v2

    :cond_4
    if-lt p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    return v0
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    .line 213
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 224
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 225
    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    throw v1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot invoke method "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " on null value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method
