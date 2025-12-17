.class abstract Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$Node;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$Node;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract name()Ljava/lang/String;
.end method
