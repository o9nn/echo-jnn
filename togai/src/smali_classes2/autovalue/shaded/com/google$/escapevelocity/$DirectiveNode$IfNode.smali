.class Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;
.source "$DirectiveNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IfNode"
.end annotation


# instance fields
.field private final condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

.field private final falsePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;

.field private final truePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;


# direct methods
.method constructor <init>(Ljava/lang/String;ILautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Node;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    iput-object p4, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->truePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    iput-object p5, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->falsePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 85
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->isDefinedAndTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->truePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;->falsePart:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 86
    :goto_0
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
