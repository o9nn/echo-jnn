.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter$WithDiscardedEnterType;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithDiscardedEnterType"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    .line 8986
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method


# virtual methods
.method protected doResolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 1

    .line 9009
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter$WithDiscardedEnterType;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    invoke-interface {p7, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireLocalVariableLengthPadding(I)V

    .line 9010
    invoke-super/range {p0 .. p10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;->doResolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object p1

    return-object p1
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8993
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method
