.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final declaredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

.field private final targetMethod:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/utility/JavaConstant$MethodType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/utility/JavaConstant$MethodType;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 7509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 11

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7519
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v4, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7520
    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v5, v4, v2

    invoke-direct {v0, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    .line 7522
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    .line 7523
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 7524
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7525
    invoke-static {v6}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7527
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v6

    mul-int/2addr v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 7528
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/method/ParameterList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 7529
    invoke-static {v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->load(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7530
    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-interface {v7}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v9

    iget-object v10, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 7531
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v10

    invoke-interface {v7}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v7

    invoke-interface {v10, v7}, Lnet/bytebuddy/description/type/TypeList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v10, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 7530
    invoke-interface {v8, v9, v7, v10}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7534
    :cond_2
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v7, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v8, 0x6

    new-array v8, v8, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v0, v8, v1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v0, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    aput-object v0, v8, v2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v0, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    aput-object v0, v8, v3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7538
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v8, v1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7539
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7540
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 7541
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 7542
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 7539
    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v8, v1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 7544
    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v8, v1

    invoke-direct {v7, v8}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 7545
    invoke-virtual {v7, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {v6, p1, p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v6
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->targetMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;->declaredFields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
