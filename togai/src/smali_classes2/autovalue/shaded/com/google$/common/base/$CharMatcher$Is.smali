.class final Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;
.super Lautovalue/shaded/com/google$/common/base/$CharMatcher$FastMatcher;
.source "$CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Is"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 1610
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$FastMatcher;-><init>()V

    iput-char p1, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    return-void
.end method


# virtual methods
.method public and(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    .line 1626
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->none()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public negate()Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    .line 1636
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->isNot(C)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1606
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->negate()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    .line 1631
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$FastMatcher;->or(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .line 1621
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    .line 1642
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-char v0, p0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$Is;->match:C

    .line 1647
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
