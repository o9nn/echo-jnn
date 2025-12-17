.class public abstract Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;
.super Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WithExitAdvice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;
    }
.end annotation


# instance fields
.field protected final returnHandler:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;II)V"
        }
    .end annotation

    .line 9560
    new-instance v2, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    move-object v1, p1

    move-object/from16 v7, p6

    invoke-direct {v2, p1, v7}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)V

    move-object v0, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V

    .line 9572
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    move-object v1, p0

    iput-object v0, v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 2

    .line 9579
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9580
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9581
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9582
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9583
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9585
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 9586
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9587
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    .line 9588
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9589
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 9590
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9591
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 9592
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x3

    .line 9584
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :cond_5
    :goto_1
    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    .line 9594
    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method protected abstract onExitAdviceReturn()V
.end method

.method protected onUserEnd()V
    .locals 3

    .line 9627
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 9628
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->onUserReturn()V

    .line 9629
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 9630
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->apply()V

    .line 9631
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->onExitAdviceReturn()V

    .line 9632
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9633
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9634
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9635
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9636
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 9639
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9640
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9641
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_1

    .line 9642
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9643
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9644
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9645
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9646
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9647
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9648
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9649
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9650
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9652
    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 9637
    :cond_5
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9638
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9654
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireStackSize(I)V

    return-void
.end method

.method protected abstract onUserReturn()V
.end method

.method protected onVisitInsn(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 9619
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void

    .line 9601
    :pswitch_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack()V

    goto :goto_0

    .line 9616
    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x19

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 9610
    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x18

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v3, 0x39

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 9607
    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x17

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v3, 0x38

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 9613
    :pswitch_4
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x16

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v3, 0x37

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    goto :goto_0

    .line 9604
    :pswitch_5
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x15

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v3, 0x36

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireLocalVariableLength(I)V

    .line 9622
    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
