.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;
.super Ljava/lang/Object;
.source "RebaseDynamicTypeBuilder.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RebaseableMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final tokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodList;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;-><init>(Ljava/util/Set;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 251
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription$Token;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/method/MethodDescription$Token;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder$RebaseableMatcher;->tokens:Ljava/util/Set;

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
