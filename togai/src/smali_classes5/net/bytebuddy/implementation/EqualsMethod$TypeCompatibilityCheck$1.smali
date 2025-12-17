.class final enum Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$1;
.super Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
.source "EqualsMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 297
    new-instance p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v2, 0x1

    .line 298
    invoke-virtual {v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 299
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->onNullValue()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 300
    invoke-virtual {v1, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$1;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 301
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 302
    invoke-virtual {v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$1;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 303
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 304
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->onNonIdentity()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p1
.end method
