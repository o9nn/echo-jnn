.class final enum Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck$2;
.super Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;
.source "EqualsMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V

    return-void
.end method


# virtual methods
.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 266
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v3, 0x1

    .line 271
    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v1, v3

    .line 272
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod;->access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    .line 273
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->onZeroInteger()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p1, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not declare a super class"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
