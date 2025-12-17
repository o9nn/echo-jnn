.class public Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;
.super Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithExceptionHandling"
.end annotation


# instance fields
.field private final exceptionHandler:Lnet/bytebuddy/jar/asm/Label;

.field private final throwable:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final userStart:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;IILnet/bytebuddy/description/type/TypeDescription;)V
    .locals 13

    move-object v12, p0

    .line 9805
    invoke-interface/range {p6 .. p6}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9806
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/type/TypeDescription;

    .line 9807
    invoke-interface/range {p6 .. p6}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 9797
    invoke-direct/range {v0 .. v11}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V

    move-object/from16 v0, p11

    iput-object v0, v12, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->throwable:Lnet/bytebuddy/description/type/TypeDescription;

    .line 9811
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, v12, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->exceptionHandler:Lnet/bytebuddy/jar/asm/Label;

    .line 9812
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v0, v12, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->userStart:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method protected onExitAdviceReturn()V
    .locals 4

    .line 9876
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->thrown()I

    move-result v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9877
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    .line 9878
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0xc6

    invoke-virtual {v1, v3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 9879
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->thrown()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9880
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9881
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 9882
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectPostCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method protected onUserPrepare()V
    .locals 5

    .line 9817
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->userStart:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->returnHandler:Lnet/bytebuddy/jar/asm/Label;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->exceptionHandler:Lnet/bytebuddy/jar/asm/Label;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->throwable:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method protected onUserReturn()V
    .locals 9

    .line 9827
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 9828
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    const/16 v1, 0x39

    const/16 v2, 0x38

    const/16 v3, 0x37

    const/16 v4, 0x36

    const/16 v5, 0x3a

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9829
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9830
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9831
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9832
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9834
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9835
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 9836
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9837
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 9838
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9839
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 9840
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9841
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    .line 9833
    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9843
    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9844
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v7}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->thrown()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9845
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    .line 9846
    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v8, 0xa7

    invoke-virtual {v7, v8, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 9847
    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v8, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->exceptionHandler:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 9848
    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v8, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v7, v8}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 9849
    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v8, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v8}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->thrown()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9850
    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9851
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9852
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9853
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9854
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_2

    .line 9857
    :cond_6
    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v7}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9858
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9859
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3

    .line 9860
    :cond_7
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9861
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9862
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3

    .line 9863
    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9864
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9865
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3

    .line 9866
    :cond_9
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 9867
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9868
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3

    .line 9855
    :cond_a
    :goto_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 9856
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->returned()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 9870
    :cond_b
    :goto_3
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 9871
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireStackSize(I)V

    return-void
.end method

.method protected onUserStart()V
    .locals 2

    .line 9822
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;->userStart:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method
