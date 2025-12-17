.class public Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disjunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-TS;>;>;)V"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;->matchers:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-TS;>;)V"
        }
    .end annotation

    .line 290
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;-><init>(Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;->matchers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;->matchers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;->matchers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TS;>;"
        }
    .end annotation

    .line 306
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$Disjunction;->matchers:Ljava/util/List;

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/matcher/LatentMatcher;

    .line 308
    invoke-interface {v2, p1}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
