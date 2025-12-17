.class Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.source "$ConstantExpressionNode.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;->value:Ljava/lang/Object;

    return-object p1
.end method
