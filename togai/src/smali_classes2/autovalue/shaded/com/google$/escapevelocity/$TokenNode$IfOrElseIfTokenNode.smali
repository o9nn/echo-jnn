.class abstract Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IfOrElseIfTokenNode"
.end annotation


# instance fields
.field final condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 2

    .line 91
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->resourceName:Ljava/lang/String;

    iget v1, p1, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;->condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    return-void
.end method
