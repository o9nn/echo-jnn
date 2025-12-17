.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForMethodExit"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;",
            ">;",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;",
            ")V"
        }
    .end annotation

    .line 8760
    invoke-direct/range {p0 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;)V

    return-void
.end method


# virtual methods
.method protected getReturnValueOffset()I
    .locals 1

    .line 8800
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 3

    .line 8775
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8776
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8777
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8778
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8779
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 8782
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8783
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8784
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v1

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    .line 8785
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8786
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8787
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v1

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 8788
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8789
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8790
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v1

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 8791
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8792
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8793
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 8780
    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 8781
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->exit()I

    move-result v1

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 8795
    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSize(I)V

    return-void
.end method
