.class abstract Lautovalue/shaded/com/google$/escapevelocity/$Node;
.super Ljava/lang/Object;
.source "$Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$Node$Cons;
    }
.end annotation


# instance fields
.field final lineNumber:I

.field final resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->resourceName:Ljava/lang/String;

    iput p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->lineNumber:I

    return-void
.end method

.method static cons(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$ImmutableList;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;)",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;"
        }
    .end annotation

    .line 73
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$Node$Cons;

    invoke-direct {v0, p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$Node$Cons;-><init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method static emptyNode(Ljava/lang/String;I)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2

    .line 64
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$Node$Cons;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Node$Cons;-><init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method private where()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In expression on line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->resourceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method abstract evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
.end method

.method evaluationException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;
    .locals 3

    .line 52
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->where()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method evaluationException(Ljava/lang/Throwable;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;
    .locals 3

    .line 56
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->where()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
