.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfAnnotationProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")V"
        }
    .end annotation

    .line 3649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "TS;>;"
        }
    .end annotation

    .line 3663
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3667
    :try_start_0
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3669
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find a property "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " on "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3664
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not an annotation type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 3684
    invoke-interface {p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v0

    .line 3686
    instance-of v1, v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v1, :cond_0

    .line 3687
    new-instance v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    .line 3688
    :cond_0
    instance-of v1, v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v1, :cond_1

    .line 3689
    new-instance v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    check-cast v0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;-><init>(Ljava/lang/Class;Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    goto :goto_0

    .line 3690
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->annotationType:Ljava/lang/Class;

    .line 3693
    invoke-static {v1, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$Factory;->of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object v1

    .line 3695
    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;->make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;

    move-result-object p1

    return-object p1

    .line 3691
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot bind annotation as fixed value for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStackManipulation$OfAnnotationProperty;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
