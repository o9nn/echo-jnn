.class Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.source "$ReferenceNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexReferenceNode"
.end annotation


# instance fields
.field final index:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

.field final lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 2

    .line 145
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->index:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    .line 151
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->index:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 156
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    .line 157
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Ljava/util/List;

    .line 161
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "List index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not valid for list of size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "List index is not an integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    .line 167
    :cond_2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->index:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    .line 168
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    check-cast v0, Ljava/util/Map;

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 174
    :cond_3
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->lhs:Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->index:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    const-string v3, "get"

    invoke-direct {v0, v1, v3, v2}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;Ljava/util/List;)V

    .line 175
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "Cannot index null value"

    .line 153
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method
