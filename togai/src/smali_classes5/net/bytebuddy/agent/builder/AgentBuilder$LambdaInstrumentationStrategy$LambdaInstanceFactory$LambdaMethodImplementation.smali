.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LambdaMethodImplementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

.field private final targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;Lnet/bytebuddy/utility/JavaConstant$MethodType;)V
    .locals 0

    .line 7453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 4

    .line 7462
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 7463
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    .line 7464
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->hasMethodName(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    .line 7465
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    .line 7466
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    .line 7464
    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    .line 7467
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 7469
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation$Appender;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/utility/JavaConstant$MethodType;Ljava/util/List;)V

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->targetMethod:Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory$LambdaMethodImplementation;->specializedLambdaMethod:Lnet/bytebuddy/utility/JavaConstant$MethodType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
