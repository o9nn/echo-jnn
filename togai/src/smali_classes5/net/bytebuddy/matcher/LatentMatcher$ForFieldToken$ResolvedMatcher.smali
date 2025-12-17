.class public Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResolvedMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

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
    iget-object v2, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 144
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->matches(Lnet/bytebuddy/description/field/FieldDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/field/FieldDescription;)Z
    .locals 1

    .line 165
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
