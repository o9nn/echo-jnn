.class public Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;
.super Ljava/lang/Object;
.source "HamcrestArgumentMatcher.java"

# interfaces
.implements Lorg/mockito/ArgumentMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ArgumentMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    return-void
.end method


# virtual methods
.method public isVarargMatcher()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 25
    instance-of v0, v0, Lorg/mockito/internal/matchers/VarargMatcher;

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 21
    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/hamcrest/HamcrestArgumentMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 30
    invoke-static {v0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
