.class public Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;
.super Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UsingArgumentCopy"
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

    .line 5719
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public injectStartFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 10

    .line 5726
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5727
    :cond_0
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->expandFrames:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v3

    add-int/2addr v0, v3

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 5728
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v3

    add-int v6, v0, v3

    new-array v7, v6, [Ljava/lang/Object;

    .line 5730
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5731
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v7, v2

    :goto_0
    move v2, v1

    goto :goto_1

    .line 5732
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5733
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_0

    .line 5735
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

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

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    .line 5736
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    .line 5738
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->EMPTY:[Ljava/lang/Object;

    array-length v8, v0

    sget-object v9, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->EMPTY:[Ljava/lang/Object;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 5740
    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5741
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->initialTypes:Ljava/util/List;

    .line 5742
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->preMethodTypes:Ljava/util/List;

    .line 5743
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v6, v0, v3

    new-array v7, v6, [Ljava/lang/Object;

    .line 5745
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5746
    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v7, v2

    :goto_4
    move v0, v1

    goto :goto_5

    .line 5747
    :cond_6
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5748
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_4

    :cond_7
    move v0, v2

    .line 5750
    :goto_5
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v0, 0x1

    .line 5751
    invoke-static {v4}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    move v0, v5

    goto :goto_6

    .line 5753
    :cond_8
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->initialTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v0, 0x1

    .line 5754
    invoke-static {v4}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    move v0, v5

    goto :goto_7

    .line 5756
    :cond_9
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->preMethodTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v0, 0x1

    .line 5757
    invoke-static {v4}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    move v0, v5

    goto :goto_8

    .line 5759
    :cond_a
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v3, v0, 0x1

    .line 5760
    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v4, v7, v0

    :goto_9
    move v0, v3

    goto :goto_a

    .line 5761
    :cond_b
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v3

    if-nez v3, :cond_c

    add-int/lit8 v3, v0, 0x1

    .line 5762
    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v4}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    goto :goto_9

    .line 5764
    :cond_c
    :goto_a
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v0, 0x1

    .line 5765
    invoke-static {v4}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    move v0, v5

    goto :goto_b

    .line 5767
    :cond_d
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->expandFrames:Z

    if-eqz v0, :cond_e

    const/4 v2, -0x1

    :cond_e
    move v5, v2

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->EMPTY:[Ljava/lang/Object;

    array-length v8, v0

    sget-object v9, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->EMPTY:[Ljava/lang/Object;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 5770
    :cond_f
    :goto_c
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move v2, p2

    move v1, p3

    move-object v3, p4

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 5830
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected frame type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5791
    :cond_1
    iget v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    sub-int/2addr v4, v1

    iput v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    goto :goto_0

    .line 5788
    :cond_2
    iget v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    add-int/2addr v4, v1

    iput v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    :cond_3
    :goto_0
    move-object v4, v3

    move v3, v1

    goto/16 :goto_8

    .line 5795
    :cond_4
    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5796
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v4

    xor-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5797
    invoke-interface {v6}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->initialTypes:Ljava/util/List;

    .line 5798
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->preMethodTypes:Ljava/util/List;

    .line 5799
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v4, v6

    new-array v6, v4, [Ljava/lang/Object;

    .line 5801
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    if-ge v7, v1, :cond_6

    .line 5804
    aget-object v9, v3, v7

    sget-object v10, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne v9, v10, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move v7, v8

    :goto_2
    if-eqz v7, :cond_7

    .line 5809
    sget-object v7, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    goto :goto_3

    :cond_7
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5811
    invoke-static {v7}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    aput-object v7, v6, v8

    goto :goto_4

    .line 5812
    :cond_8
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v7

    if-nez v7, :cond_9

    .line 5813
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v7}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    goto :goto_4

    :cond_9
    move v5, v8

    .line 5815
    :goto_4
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v7}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v10, v5, 0x1

    .line 5816
    invoke-static {v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v5

    move v5, v10

    goto :goto_5

    .line 5818
    :cond_a
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->initialTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v10, v5, 0x1

    .line 5819
    invoke-static {v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v5

    move v5, v10

    goto :goto_6

    .line 5821
    :cond_b
    iget-object v7, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->preMethodTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v10, v5, 0x1

    .line 5822
    invoke-static {v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v5

    move v5, v10

    goto :goto_7

    .line 5824
    :cond_c
    invoke-static {p4, v8, v6, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5827
    iput v4, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;->currentFrameDivergence:I

    move v3, v4

    move-object v4, v6

    :goto_8
    move-object v1, p1

    move v2, p2

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 5832
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
