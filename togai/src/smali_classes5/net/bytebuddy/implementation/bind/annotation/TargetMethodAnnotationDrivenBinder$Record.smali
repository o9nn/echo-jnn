.class public Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;
.super Ljava/lang/Object;
.source "TargetMethodAnnotationDrivenBinder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Record"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final candidate:Lnet/bytebuddy/description/method/MethodDescription;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->handlers:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    .line 129
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    .line 132
    invoke-interface {p3, p5, v0, p2, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;->resolve(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    .line 133
    invoke-interface {p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object p1

    .line 136
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-direct {v0, p4, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/description/method/MethodDescription;)V

    iget-object p4, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->handlers:Ljava/util/List;

    .line 137
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;

    .line 138
    invoke-interface {v1, p2, p1, p5}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler;->bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->append(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    :cond_3
    sget-object p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Illegal;

    return-object p1

    .line 143
    :cond_4
    invoke-virtual {v0, p3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->build(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object p1

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->handlers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->handlers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->handlers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$Record;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
