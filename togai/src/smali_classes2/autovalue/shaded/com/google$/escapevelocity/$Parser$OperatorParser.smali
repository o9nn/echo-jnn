.class Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;
.super Ljava/lang/Object;
.source "$Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorParser"
.end annotation


# instance fields
.field private currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field final synthetic this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->nextOperator()V

    return-void
.end method

.method private nextOperator()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 841
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$100(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V

    .line 842
    invoke-static {}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$300()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    invoke-static {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$200(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->STOP:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    iput-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    return-void

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 847
    invoke-static {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$200(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/primitives/$Chars;->checkedCast(J)C

    move-result v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 848
    invoke-static {v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$400(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V

    .line 850
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 851
    iget-object v5, v4, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->symbol:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 852
    :goto_1
    invoke-static {v6}, Lautovalue/shaded/com/google$/common/base/$Verify;->verify(Z)V

    goto :goto_2

    .line 854
    :cond_3
    iget-object v5, v4, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->symbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    invoke-static {v6}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$200(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)I

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 855
    invoke-static {v3}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$400(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V

    :goto_2
    move-object v3, v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    iput-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    return-void

    :cond_5
    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", not just "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {v2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$500(Lautovalue/shaded/com/google$/escapevelocity/$Parser;Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method parse(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;I)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 824
    iget v0, v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->precedence:I

    if-lt v0, p2, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->this$0:Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    .line 826
    invoke-static {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->access$000(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    .line 827
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->nextOperator()V

    :goto_1
    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 828
    iget v2, v2, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->precedence:I

    iget v3, v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->precedence:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->currentOperator:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 829
    iget v2, v2, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->precedence:I

    invoke-virtual {p0, v1, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->parse(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;I)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    goto :goto_1

    .line 831
    :cond_0
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;

    invoke-direct {v2, p1, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$BinaryExpressionNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    move-object p1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method
