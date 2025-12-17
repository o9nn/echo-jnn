.class Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;
.super Ljava/lang/Object;
.source "MissingInvocationChecker.java"

# interfaces
.implements Lorg/mockito/internal/util/collections/ListUtil$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/internal/util/collections/ListUtil$Converter<",
        "Lorg/mockito/invocation/Invocation;",
        "Lorg/mockito/invocation/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lorg/mockito/invocation/Invocation;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;->convert(Lorg/mockito/invocation/Invocation;)Lorg/mockito/invocation/Location;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lorg/mockito/invocation/Invocation;)Lorg/mockito/invocation/Location;
    .locals 0

    .line 48
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object p1

    return-object p1
.end method
