.class public Lnet/bytebuddy/matcher/DescriptorMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "DescriptorMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/ByteCodeElement;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

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
    iget-object v2, p0, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/matcher/DescriptorMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lnet/bytebuddy/description/ByteCodeElement;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/DescriptorMatcher;->matches(Lnet/bytebuddy/description/ByteCodeElement;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/ByteCodeElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 47
    invoke-interface {p1}, Lnet/bytebuddy/description/ByteCodeElement;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasDescriptor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/matcher/DescriptorMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
