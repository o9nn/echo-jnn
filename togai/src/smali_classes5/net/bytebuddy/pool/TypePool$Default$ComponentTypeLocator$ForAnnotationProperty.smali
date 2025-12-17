.class public Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAnnotationProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationName:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 1

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 1820
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->annotationName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;)Ljava/lang/String;
    .locals 0

    .line 1800
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->annotationName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    .line 1800
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;
    .locals 1

    .line 1827
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty$Bound;-><init>(Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;Ljava/lang/String;)V

    return-object v0
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->annotationName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->annotationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;->annotationName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
