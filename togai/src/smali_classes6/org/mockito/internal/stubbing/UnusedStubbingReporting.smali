.class public Lorg/mockito/internal/stubbing/UnusedStubbingReporting;
.super Ljava/lang/Object;
.source "UnusedStubbingReporting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldBeReported(Lorg/mockito/stubbing/Stubbing;)Z
    .locals 1

    .line 20
    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object p0

    sget-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
