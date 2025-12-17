.class Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;
.super Ljava/lang/Object;
.source "$Macro.java"

# interfaces
.implements Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MacroEvaluationContext"
.end annotation


# instance fields
.field private final originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

.field private final parameterThunks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;",
            "Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    return-void
.end method


# virtual methods
.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    .line 103
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->getVar(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    .line 110
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setVar$0$autovalue-shaded-com-google$-escapevelocity-$Macro$MacroEvaluationContext(Ljava/lang/Runnable;Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V
    .locals 0

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    .line 131
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public publicMethodsWithName(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    .line 138
    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->publicMethodsWithName(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    .line 123
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    .line 125
    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    .line 127
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    .line 128
    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p2

    .line 129
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;Ljava/lang/Runnable;Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    return-object v1
.end method

.method public varIsDefined(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->parameterThunks:Ljava/util/Map;

    .line 116
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Macro$MacroEvaluationContext;->originalEvaluationContext:Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;->varIsDefined(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
