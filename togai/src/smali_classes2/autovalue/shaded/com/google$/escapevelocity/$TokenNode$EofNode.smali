.class final Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;
.super Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.source "$TokenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EofNode"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method name()Ljava/lang/String;
    .locals 1

    const-string v0, "end of file"

    return-object v0
.end method
