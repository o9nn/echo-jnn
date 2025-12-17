.class public Lnet/bytebuddy/matcher/BooleanMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "BooleanMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matches:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    iput-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    check-cast p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    iget-boolean p1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget-boolean v1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
