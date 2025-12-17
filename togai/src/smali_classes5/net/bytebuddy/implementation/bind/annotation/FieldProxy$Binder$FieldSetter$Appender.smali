.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;
.super Ljava/lang/Object;
.source "FieldProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;Lnet/bytebuddy/implementation/Implementation$Target;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 11

    .line 924
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    .line 925
    invoke-static {v2}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->access$500(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/implementation/MethodAccessorFactory;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->access$400(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-interface {v2, v3, v4}, Lnet/bytebuddy/implementation/MethodAccessorFactory;->registerSetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    .line 926
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v4, 0x5

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v5, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    .line 927
    invoke-static {v5}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->access$400(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    :cond_0
    new-instance v5, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v8, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 930
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v8, v1

    iget-object v9, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 931
    invoke-interface {v9}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v9

    const-string v10, "instance"

    .line 932
    invoke-static {v10}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v10

    invoke-interface {v9, v10}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v9}, Lnet/bytebuddy/description/field/FieldList;->getOnly()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 931
    invoke-static {v9}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v9

    .line 932
    invoke-interface {v9}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-direct {v5, v8}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    aput-object v5, v4, v1

    .line 933
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v5

    invoke-virtual {v5, v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    .line 934
    invoke-static {v5}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->access$600(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v5

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v7

    invoke-interface {v7, v1}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v5, v0, v1, v7}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x3

    .line 935
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->VOID:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 937
    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 938
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldSetter;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
