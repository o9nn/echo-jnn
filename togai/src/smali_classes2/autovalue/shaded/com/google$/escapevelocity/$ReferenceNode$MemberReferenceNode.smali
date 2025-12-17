.class Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.source "$ReferenceNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemberReferenceNode"
.end annotation


# static fields
.field private static final CHANGE_CASE:[Z

.field private static final PREFIXES:[Ljava/lang/String;


# instance fields
.field final id:Ljava/lang/String;

.field final lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "get"

    const-string v1, "is"

    .line 86
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->PREFIXES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->CHANGE_CASE:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    return-void
.end method

.method private static changeInitialCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    .line 131
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$evaluate$0(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 107
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    .line 90
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 95
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Ljava/util/Map;

    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    .line 97
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->PREFIXES:[Ljava/lang/String;

    .line 101
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    sget-object v6, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->CHANGE_CASE:[Z

    .line 102
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget-boolean v9, v6, v8

    if-eqz v9, :cond_1

    iget-object v9, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    .line 103
    invoke-static {v9}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->changeInitialCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    .line 104
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {p1, v10, v9}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->publicMethodsWithName(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v9

    invoke-virtual {v9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 108
    invoke-interface {v9}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 110
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    const-string v10, "is"

    .line 111
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 113
    :cond_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-virtual {p0, v9, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Member "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not correspond to a public getter of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", a "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot get member "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " of null value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method
