.class Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method synthetic constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/Pipe$1;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 477
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->size()I

    move-result v1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 480
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription;

    add-int/lit8 v7, v3, 0x1

    .line 481
    new-instance v8, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v4}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-direct {v8, v5}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v8, v1, v3

    move v3, v7

    goto :goto_0

    .line 483
    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v3, 0x6

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 484
    invoke-virtual {v4, v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 485
    invoke-static {v2}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$500(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v2

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v7, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-static {v7}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v2, v4, v7, v8}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v3, v6

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v2, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v2, v3, v5

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 487
    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    .line 488
    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$500(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->access$400(Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v1, v2, v4, v5}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const/4 v1, 0x5

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 490
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 491
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall$Appender;->this$0:Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bind/annotation/Pipe$Binder$Redirection$MethodCall;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
