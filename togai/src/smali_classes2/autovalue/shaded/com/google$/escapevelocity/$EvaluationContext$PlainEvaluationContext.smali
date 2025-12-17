.class public Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;
.super Ljava/lang/Object;
.source "$EvaluationContext.java"

# interfaces
.implements Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainEvaluationContext"
.end annotation


# instance fields
.field private final methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

.field private final vars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

    return-void
.end method


# virtual methods
.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 59
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setVar$0$autovalue-shaded-com-google$-escapevelocity-$EvaluationContext$PlainEvaluationContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 72
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$setVar$1$autovalue-shaded-com-google$-escapevelocity-$EvaluationContext$PlainEvaluationContext(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 74
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->methodFinder:Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;

    .line 82
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$MethodFinder;->publicMethodsWithName(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext$$ExternalSyntheticLambda1;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 76
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public varIsDefined(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext$PlainEvaluationContext;->vars:Ljava/util/Map;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
