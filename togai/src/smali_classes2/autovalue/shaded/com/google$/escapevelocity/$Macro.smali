.class Lautovalue/shaded/com/google$/escapevelocity/$Macro;
.super Ljava/lang/Object;
.source "$Macro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;
    }
.end annotation


# instance fields
.field private final body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

.field private final definitionLineNumber:I

.field private final name:Ljava/lang/String;

.field private final parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/List;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->definitionLineNumber:I

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->name:Ljava/lang/String;

    .line 44
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p4, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "Argument mistmatch for %s"

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->name:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lautovalue/shaded/com/google$/common/base/$Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 60
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 61
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_1
    new-instance p2, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;

    invoke-direct {p2, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->body:Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 64
    invoke-virtual {p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In macro #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defined on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->definitionLineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 69
    throw p1
.end method

.method name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->name:Ljava/lang/String;

    return-object v0
.end method

.method parameterCount()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 53
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    return v0
.end method
