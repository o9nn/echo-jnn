.class public Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;
.super Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;
.source "TargetMethodAnnotationDrivenBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->type:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "TV;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected bind(Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/ParameterDescription;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TU;>;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->type:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public getHandledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method
