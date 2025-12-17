.class public Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;
.super Ljava/lang/Object;
.source "ModifierAdjustment.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/ModifierAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Adjustment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
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
            "-TT;>;"
        }
    .end annotation
.end field

.field private final resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "*>;)V"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    iget-object v3, p1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    iget-object p1, p1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-virtual {v0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 376
    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected resolve(I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    .line 386
    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result p1

    return p1
.end method
