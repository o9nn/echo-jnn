.class Lautovalue/shaded/com/google$/escapevelocity/$Reparser;
.super Ljava/lang/Object;
.source "$Reparser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ELSE_ELSE_IF_END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/Class<",
            "+",
            "Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/Class<",
            "+",
            "Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EOF_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/Class<",
            "+",
            "Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final macros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Macro;",
            ">;"
        }
    .end annotation
.end field

.field private nodeIndex:I

.field private final nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;

    .line 50
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 51
    const-class v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    .line 52
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->EOF_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 53
    const-class v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseTokenNode;

    const-class v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;

    const-class v2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;

    .line 54
    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->ELSE_ELSE_IF_END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Macro;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->removeSpaceBeforeSet(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const/4 p1, 0x0

    iput p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodeIndex:I

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->macros:Ljava/util/Map;

    return-void
.end method

.method private currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodeIndex:I

    .line 174
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    return-object v0
.end method

.method private static isWhitespaceLiteral(Lautovalue/shaded/com/google$/escapevelocity/$Node;)Z
    .locals 2

    .line 127
    instance-of v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object p0

    .line 129
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->whitespace()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private linkMacroCall(Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;)V
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->macros:Ljava/util/Map;

    .line 265
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$Macro;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterCount()I

    move-result v1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->argumentCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 281
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->setMacro(Lautovalue/shaded/com/google$/escapevelocity/$Macro;)V

    return-void

    .line 274
    :cond_0
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong number of arguments to #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Macro;->parameterCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->argumentCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->resourceName:Ljava/lang/String;

    iget p1, p1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->lineNumber:I

    invoke-direct {v1, v0, v2, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 267
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is neither a standard directive nor a macro that has been defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->resourceName:Ljava/lang/String;

    iget p1, p1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;->lineNumber:I

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private linkMacroCalls()V
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 257
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 258
    instance-of v2, v1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;

    if-eqz v2, :cond_0

    .line 259
    check-cast v1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;

    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->linkMacroCall(Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2

    .line 178
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    .line 179
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nodeIndex:I

    .line 183
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0
.end method

.method private parseForEach(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 7

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 207
    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v6

    .line 208
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 209
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;

    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->resourceName:Ljava/lang/String;

    iget v3, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->lineNumber:I

    iget-object v4, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->var:Ljava/lang/String;

    iget-object v5, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;->collection:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$ForEachNode;-><init>(Ljava/lang/String;ILjava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    return-object v0
.end method

.method private parseIfOrElseIf(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 7

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->ELSE_ELSE_IF_END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 214
    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v5

    .line 216
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 218
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->resourceName:Ljava/lang/String;

    iget v0, v0, Lautovalue/shaded/com/google$/escapevelocity/$Node;->lineNumber:I

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->emptyNode(Ljava/lang/String;I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 220
    :cond_0
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseTokenNode;

    if-eqz v1, :cond_1

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 221
    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    .line 222
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    goto :goto_0

    .line 223
    :cond_1
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;

    if-eqz v1, :cond_2

    .line 228
    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseIfOrElseIf(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_0

    .line 232
    :goto_1
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;

    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;->resourceName:Ljava/lang/String;

    iget v3, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;->lineNumber:I

    iget-object v4, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;->condition:Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$IfNode;-><init>(Ljava/lang/String;ILautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;Lautovalue/shaded/com/google$/escapevelocity/$Node;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    return-object v0

    .line 230
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private parseMacroDefinition(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 5

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->END_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 246
    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    .line 247
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->macros:Ljava/util/Map;

    .line 248
    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Macro;

    iget v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->lineNumber:I

    iget-object v3, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->name:Ljava/lang/String;

    iget-object v4, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->parameterNames:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v1, v2, v3, v4, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Macro;-><init>(ILjava/lang/String;Ljava/util/List;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->macros:Ljava/util/Map;

    .line 251
    iget-object v2, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    iget-object v0, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->resourceName:Ljava/lang/String;

    iget p1, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;->lineNumber:I

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->emptyNode(Ljava/lang/String;I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object p1

    return-object p1
.end method

.method private parseNested(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2

    .line 241
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;

    iget-object p1, p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;->nodes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->macros:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;)V

    .line 242
    invoke-direct {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->reparseNodes()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object p1

    return-object p1
.end method

.method private parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;",
            ">;>;",
            "Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;",
            ")",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 151
    :goto_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object p1, p2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->resourceName:Ljava/lang/String;

    iget p2, p2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->lineNumber:I

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->cons(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$ImmutableList;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    instance-of v2, v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    if-nez v2, :cond_2

    .line 162
    instance-of v2, v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;

    if-eqz v2, :cond_1

    .line 163
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTokenNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v1

    goto :goto_1

    .line 166
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 168
    :goto_1
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 156
    :cond_2
    new-instance p1, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reached end of file while parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->resourceName:Ljava/lang/String;

    iget p2, p2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->lineNumber:I

    invoke-direct {p1, v0, v1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private parseTokenNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 4

    .line 188
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->currentNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;

    .line 189
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->nextNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 190
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->resourceName:Ljava/lang/String;

    iget v0, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->lineNumber:I

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Node;->emptyNode(Ljava/lang/String;I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseIfOrElseIf(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 194
    :cond_1
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;

    if-eqz v1, :cond_2

    .line 195
    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseForEach(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 196
    :cond_2
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;

    if-eqz v1, :cond_3

    .line 197
    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseNested(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 198
    :cond_3
    instance-of v1, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;

    if-eqz v1, :cond_4

    .line 199
    check-cast v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseMacroDefinition(Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 201
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;->lineNumber:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static removeSpaceBeforeSet(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    .line 108
    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 109
    invoke-static {v2}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->shouldDeleteSpaceBetweenThisAndSet(Lautovalue/shaded/com/google$/escapevelocity/$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 110
    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/escapevelocity/$Node;

    invoke-static {v3}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->isWhitespaceLiteral(Lautovalue/shaded/com/google$/escapevelocity/$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 111
    invoke-virtual {p0, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$SetNode;

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private reparseNodes()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 4

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->EOF_SET:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 92
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->parseTo(Ljava/util/Set;Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0
.end method

.method private static shouldDeleteSpaceBetweenThisAndSet(Lautovalue/shaded/com/google$/escapevelocity/$Node;)Z
    .locals 1

    .line 120
    instance-of v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$SetNode;

    if-nez v0, :cond_1

    instance-of p0, p0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method reparse()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 2

    .line 86
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->reparseNodes()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->linkMacroCalls()V

    .line 88
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Template;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    return-object v1
.end method
