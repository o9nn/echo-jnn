.class public Lnet/bytebuddy/matcher/ArrayTypeMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "ArrayTypeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/type/TypeDefinition;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

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

    move-result-object p1

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/ArrayTypeMatcher;->matches(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/type/TypeDefinition;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "isArray()"

    return-object v0
.end method
