.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;
.super Ljava/lang/Object;
.source "MethodInvocation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DynamicInvocation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private final bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 9

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    .line 500
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 501
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    .line 504
    new-instance v8, Lnet/bytebuddy/jar/asm/Handle;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 506
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$300(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    sget-object v2, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, v2}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 508
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$300(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    .line 507
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->access$200(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    :goto_2
    move v3, p2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 509
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 510
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 511
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 512
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 513
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 504
    invoke-virtual {p1, v1, v0, v8, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 514
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 515
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
