.class public Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;
.super Ljava/lang/Object;
.source "TargetMethodAnnotationDrivenBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/annotation/Argument;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultArgument"
.end annotation


# static fields
.field private static final BINDING_MECHANIC:Ljava/lang/String; = "bindingMechanic"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final parameterIndex:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;->parameterIndex:I

    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/implementation/bind/annotation/Argument;",
            ">;"
        }
    .end annotation

    .line 641
    const-class v0, Lnet/bytebuddy/implementation/bind/annotation/Argument;

    return-object v0
.end method

.method public bindingMechanic()Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;
    .locals 1

    .line 634
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;->UNIQUE:Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 652
    instance-of v0, p1, Lnet/bytebuddy/implementation/bind/annotation/Argument;

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;->parameterIndex:I

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Argument;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/annotation/Argument;->value()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 646
    sget-object v0, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;->UNIQUE:Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;->hashCode()I

    move-result v0

    const v1, 0x74b34757

    xor-int/2addr v0, v1

    const v1, 0x4f9c270f    # 5.239611E9f

    iget v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;->parameterIndex:I

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lnet/bytebuddy/implementation/bind/annotation/Argument;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(bindingMechanic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;->UNIQUE:Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;

    .line 658
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bind/annotation/Argument$BindingMechanic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;->parameterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler$Unbound$DefaultArgument;->parameterIndex:I

    return v0
.end method
