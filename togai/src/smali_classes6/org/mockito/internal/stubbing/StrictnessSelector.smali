.class public Lorg/mockito/internal/stubbing/StrictnessSelector;
.super Ljava/lang/Object;
.source "StrictnessSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineStrictness(Lorg/mockito/stubbing/Stubbing;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/quality/Strictness;)Lorg/mockito/quality/Strictness;
    .locals 1

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p0}, Lorg/mockito/stubbing/Stubbing;->getStrictness()Lorg/mockito/quality/Strictness;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isLenient()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 34
    sget-object p0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    return-object p0

    :cond_1
    return-object p2
.end method
