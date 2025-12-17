.class final enum Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck$2;
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

    .line 312
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/EqualsMethod$1;)V

    return-void
.end method


# virtual methods
.method protected resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 5

    .line 315
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    const/4 v3, 0x1

    .line 316
    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 317
    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/assign/InstanceCheck;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    .line 318
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->onZeroInteger()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
