.class Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;
.source "$DirectiveNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForEachNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;,
        Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;
    }
.end annotation


# instance fields
.field private final body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

.field private final collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

.field private final var:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->var:Ljava/lang/String;

    iput-object p4, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    iput-object p5, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 112
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Ljava/lang/Iterable;

    goto :goto_0

    .line 116
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 119
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->var:Ljava/lang/String;

    const/4 v2, 0x0

    .line 123
    invoke-interface {p1, v1, v2}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    new-instance v3, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;-><init>(Ljava/util/Iterator;)V

    .line 126
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;

    invoke-direct {v0, v3}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$ForEachVar;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;)V

    const-string v4, "foreach"

    invoke-interface {p1, v4, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v0

    .line 127
    :goto_1
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->var:Ljava/lang/String;

    .line 128
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode$CountingIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;

    iget-object v4, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 129
    invoke-virtual {v4, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 121
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not iterable: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method
