.class Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.source "$ReferenceNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlainReferenceNode"
.end annotation


# instance fields
.field final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->id:Ljava/lang/String;

    .line 55
    invoke-interface {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->varIsDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->id:Ljava/lang/String;

    .line 56
    invoke-interface {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->getVar(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Undefined reference $"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method

.method isDefinedAndTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->id:Ljava/lang/String;

    .line 64
    invoke-interface {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->varIsDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;->isTrue(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
