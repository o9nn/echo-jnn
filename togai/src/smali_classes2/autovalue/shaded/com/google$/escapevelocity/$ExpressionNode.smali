.class abstract Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$Node;
.source "$ExpressionNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$Node;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static show(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method intValue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)I
    .locals 2

    .line 70
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    .line 71
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arithemtic is only available on integers, not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->show(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method

.method isDefinedAndTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    return p1
.end method

.method isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
