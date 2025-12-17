.class final Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTokenNode"
.end annotation


# instance fields
.field final collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

.field final var:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 2

    .line 131
    iget-object v0, p2, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->resourceName:Ljava/lang/String;

    iget v1, p2, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->lineNumber:I

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->var:Ljava/lang/String;

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    return-void
.end method


# virtual methods
.method name()Ljava/lang/String;
    .locals 1

    const-string v0, "#foreach"

    return-object v0
.end method
