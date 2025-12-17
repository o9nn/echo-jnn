.class public abstract Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.super Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AdviceVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;
    }
.end annotation


# instance fields
.field protected final argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

.field protected final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

.field protected final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final preparationStart:Lnet/bytebuddy/jar/asm/Label;

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
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

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    .line 9316
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    move-object/from16 v13, p1

    iput-object v13, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iput-object v12, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9319
    new-instance v14, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v14}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v14, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->preparationStart:Lnet/bytebuddy/jar/asm/Label;

    .line 9320
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    move-result-object v0

    .line 9321
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    .line 9322
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v2

    .line 9323
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getNamedTypes()Ljava/util/Map;

    move-result-object v3

    .line 9320
    invoke-virtual {v0, v12, v1, v2, v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/Map;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    move-result-object v15

    iput-object v15, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    .line 9324
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 9326
    :cond_0
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v15}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->getNamedTypes()Ljava/util/List;

    move-result-object v1

    .line 9324
    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 9327
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 9329
    :cond_1
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 9334
    invoke-interface {v15}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->isCopyingArguments()Z

    move-result v4

    move-object/from16 v0, p7

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p10

    move/from16 v5, p11

    .line 9330
    invoke-static/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->of(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZI)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    move-result-object v10

    iput-object v10, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    .line 9341
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->isAlive()Z

    move-result v5

    .line 9342
    invoke-interface {v15}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->isCopyingArguments()Z

    move-result v8

    .line 9343
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v9

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v4, p10

    move v6, v8

    move-object v7, v9

    move/from16 v8, p11

    move/from16 v9, p12

    .line 9336
    invoke-static/range {v0 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZLnet/bytebuddy/ClassFileVersion;II)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-result-object v9

    iput-object v9, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-object/from16 v0, p8

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v15

    move-object v7, v10

    move-object v8, v9

    move-object/from16 v16, v9

    move-object/from16 v9, p5

    move-object/from16 v17, v10

    move-object/from16 v10, p0

    .line 9346
    invoke-interface/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object v0

    iput-object v0, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9356
    new-instance v10, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;

    invoke-direct {v10, v14}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    move-object/from16 v0, p9

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    invoke-interface/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object v0

    iput-object v0, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    return-void
.end method


# virtual methods
.method protected onAfterExceptionTable()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9370
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->prepare()V

    .line 9371
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserPrepare()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9372
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->prepare()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9373
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->initialize()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9374
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->initialize()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 9375
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectInitializationFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 9376
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->apply()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->preparationStart:Lnet/bytebuddy/jar/asm/Label;

    .line 9377
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 9378
    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->prepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireStackSize(I)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 9379
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectStartFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 9380
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserStart()V

    return-void
.end method

.method protected abstract onUserEnd()V
.end method

.method protected abstract onUserPrepare()V
.end method

.method protected abstract onUserStart()V
.end method

.method protected onVisitIincInsn(II)V
    .locals 2

    .line 9400
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->argument(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method protected onVisitVarInsn(II)V
    .locals 2

    .line 9395
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->argument(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 9405
    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 7

    .line 9416
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1, p6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->variable(I)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p5

    .line 9427
    array-length v2, v1

    new-array v8, v2, [I

    const/4 v2, 0x0

    .line 9428
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    .line 9429
    aget v4, v1, v2

    invoke-interface {v3, v4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->variable(I)I

    move-result v3

    aput v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9431
    :cond_0
    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    return-object v1
.end method

.method public visitMaxs(II)V
    .locals 2

    .line 9410
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserEnd()V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    .line 9411
    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundStackSize(I)I

    move-result p1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    invoke-interface {v1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundLocalVariableLength(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method
