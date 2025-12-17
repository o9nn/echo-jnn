.class Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.source "$ExpressionNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpressionNode"
.end annotation


# instance fields
.field final lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

.field final op:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field final rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 2

    .line 99
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->op:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    return-void
.end method

.method private equal(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 157
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 158
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 5

    .line 106
    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$1;->$SwitchMap$com$google$escapevelocity$Parser$Operator:[I

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->op:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 117
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->intValue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)I

    move-result v0

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 118
    invoke-virtual {v3, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->intValue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)I

    move-result p1

    .line 119
    sget-object v3, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$1;->$SwitchMap$com$google$escapevelocity$Parser$Operator:[I

    iget-object v4, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->op:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    invoke-virtual {v4}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 139
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->op:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 137
    :pswitch_0
    rem-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 135
    :pswitch_1
    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    mul-int/2addr v0, p1

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    sub-int/2addr v0, p1

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    add-int/2addr v0, p1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-lt v0, p1, :cond_0

    move v1, v2

    .line 127
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_6
    if-le v0, p1, :cond_1

    move v1, v2

    .line 125
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_7
    if-gt v0, p1, :cond_2

    move v1, v2

    .line 123
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_8
    if-ge v0, p1, :cond_3

    move v1, v2

    .line 121
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 114
    :cond_4
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->equal(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 112
    :cond_5
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->equal(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 110
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 108
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;->rhs:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
