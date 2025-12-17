.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AdviceMethodWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter$ForMethodEnter;
    }
.end annotation


# static fields
.field private static final EMPTY:I


# instance fields
.field protected final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field protected final argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

.field protected final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

.field protected final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final offsetMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;",
            ">;"
        }
    .end annotation
.end field

.field private final relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

.field private final suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;


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

    .line 8613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->offsetMappings:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    iput-object p6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iput-object p7, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iput-object p8, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iput-object p9, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 8636
    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->offsetMappings:Ljava/util/List;

    .line 8638
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8639
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 8640
    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    .line 8641
    invoke-interface {v4, v6, v7}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v4

    .line 8642
    invoke-virtual {v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v4

    add-int/2addr v4, v3

    .line 8640
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v8

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v10, 0xb8

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8645
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8646
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8647
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 8644
    invoke-virtual/range {v9 .. v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v15, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8653
    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v20

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    .line 8649
    invoke-interface/range {v15 .. v20}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onEndWithSkip(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8654
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8655
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8656
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8657
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8658
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8660
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x37

    .line 8661
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8662
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x38

    .line 8663
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8664
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x39

    .line 8665
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8666
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x3a

    .line 8667
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v3, 0x36

    .line 8659
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_6
    :goto_2
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 8669
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->getReturnValueOffset()I

    move-result v6

    invoke-interface {v3, v4, v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;I)I

    move-result v3

    invoke-interface {v1, v3}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSize(I)V

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 8670
    invoke-interface {v1, v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 8671
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v1, v3, v2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->recordMaxima(II)V

    return-void
.end method

.method protected abstract getReturnValueOffset()I
.end method

.method public prepare()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 8629
    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onPrepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method
