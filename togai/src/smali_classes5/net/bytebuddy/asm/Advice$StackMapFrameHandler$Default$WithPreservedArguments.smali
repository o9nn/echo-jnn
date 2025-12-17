.class public abstract Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.super Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WithPreservedArguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$RequiringConsistentShape;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;Z)V"
        }
    .end annotation

    .line 5545
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 7

    .line 5552
    new-instance v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->preMethodTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->postMethodTypes:Ljava/util/List;

    .line 5553
    invoke-static {v0, v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 5554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;)V

    return-object v6
.end method

.method public injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 5590
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->currentFrameDivergence:I

    if-nez v0, :cond_1

    .line 5591
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->postMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    .line 5593
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->postMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v1, 0x1

    .line 5594
    invoke-static {v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v1

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 5596
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5598
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->preMethodTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->postMethodTypes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 5579
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->currentFrameDivergence:I

    if-nez v0, :cond_0

    const/4 v2, 0x4

    .line 5580
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v3, v0

    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    const/4 v5, 0x1

    const-class v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 5582
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->preMethodTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public injectInitializationFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 10

    .line 5617
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5618
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 5619
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    .line 5621
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v3, v1, 0x1

    .line 5622
    invoke-static {v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 5624
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v6, v0

    sget-object v7, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 5626
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5627
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    .line 5628
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v6, v0, v3

    new-array v7, v6, [Ljava/lang/Object;

    .line 5630
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5631
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v7, v1

    goto :goto_1

    .line 5632
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5633
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 5635
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    .line 5636
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v4

    goto :goto_2

    .line 5638
    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    .line 5639
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v4

    goto :goto_3

    .line 5641
    :cond_5
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    :cond_6
    move v5, v1

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v8, v0

    sget-object v9, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public injectPostCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    .line 5606
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->currentFrameDivergence:I

    if-nez v0, :cond_0

    const/4 v2, 0x3

    .line 5607
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v3, v0

    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 5609
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->preMethodTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->postMethodTypes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 13

    .line 5562
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->expandFrames:Z

    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->currentFrameDivergence:I

    if-nez v0, :cond_1

    .line 5563
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 5564
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v3, v0

    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v5, v0

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v8, 0x4

    .line 5566
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    array-length v9, v0

    sget-object v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->EMPTY:[Ljava/lang/Object;

    const/4 v11, 0x1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 5569
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->preMethodTypes:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5571
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5569
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method
