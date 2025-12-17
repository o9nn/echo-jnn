.class final Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IfTokenNode"
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfOrElseIfTokenNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    return-void
.end method


# virtual methods
.method name()Ljava/lang/String;
    .locals 1

    const-string v0, "#if"

    return-object v0
.end method
