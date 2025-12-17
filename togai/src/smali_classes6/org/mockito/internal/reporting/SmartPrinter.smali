.class public Lorg/mockito/internal/reporting/SmartPrinter;
.super Ljava/lang/Object;
.source "SmartPrinter.java"


# instance fields
.field private final actuals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wanted:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    .line 31
    invoke-static {p1, p2}, Lorg/mockito/internal/reporting/SmartPrinter;->isMultiLine(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mockito/internal/reporting/PrintSettings;->setMultiline(Z)V

    .line 32
    invoke-virtual {v0, p3}, Lorg/mockito/internal/reporting/PrintSettings;->setMatchersToBeDescribedWithExtraTypeInfo([Ljava/lang/Integer;)V

    .line 34
    invoke-virtual {v0, p1}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/MatchableInvocation;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mockito/invocation/Invocation;

    .line 38
    invoke-virtual {v0, p3}, Lorg/mockito/internal/reporting/PrintSettings;->print(Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actuals:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/invocation/Invocation;[Ljava/lang/Integer;)V
    .locals 0

    .line 26
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/reporting/SmartPrinter;-><init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V

    return-void
.end method

.method private static isMultiLine(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)Z"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public getActuals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->actuals:Ljava/util/List;

    return-object v0
.end method

.method public getWanted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/reporting/SmartPrinter;->wanted:Ljava/lang/String;

    return-object v0
.end method
