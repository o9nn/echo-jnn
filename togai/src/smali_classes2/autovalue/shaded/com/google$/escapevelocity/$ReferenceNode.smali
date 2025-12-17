.class abstract Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
.source "$ReferenceNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 325
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->evaluationException(Ljava/lang/Throwable;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;->evaluationException(Ljava/lang/Throwable;)Lautovalue/shaded/com/google$/escapevelocity/$EvaluationException;

    move-result-object p1

    throw p1
.end method
