.class Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.source "$ExpressionNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotExpressionNode"
.end annotation


# instance fields
.field private final expr:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 2

    .line 180
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;->expr:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;->expr:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 185
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
