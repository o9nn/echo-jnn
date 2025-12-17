.class public Lorg/mockito/internal/matchers/Or;
.super Ljava/lang/Object;
.source "Or.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final m1:Lorg/mockito/ArgumentMatcher;

.field private final m2:Lorg/mockito/ArgumentMatcher;


# direct methods
.method public constructor <init>(Lorg/mockito/ArgumentMatcher;Lorg/mockito/ArgumentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/matchers/Or;->m1:Lorg/mockito/ArgumentMatcher;

    iput-object p2, p0, Lorg/mockito/internal/matchers/Or;->m2:Lorg/mockito/ArgumentMatcher;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/matchers/Or;->m1:Lorg/mockito/ArgumentMatcher;

    .line 23
    invoke-interface {v0, p1}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mockito/internal/matchers/Or;->m2:Lorg/mockito/ArgumentMatcher;

    invoke-interface {v0, p1}, Lorg/mockito/ArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/matchers/Or;->m1:Lorg/mockito/ArgumentMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/matchers/Or;->m2:Lorg/mockito/ArgumentMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
