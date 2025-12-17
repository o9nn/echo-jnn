.class public abstract Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Trivial;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
    }
.end annotation


# static fields
.field protected static final EMPTY:[Ljava/lang/Object;


# instance fields
.field protected currentFrameDivergence:I

.field protected final expandFrames:Z

.field protected final initialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field protected final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field protected final postMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected final preMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

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

    .line 5126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    iput-object p5, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    iput-boolean p6, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZLnet/bytebuddy/ClassFileVersion;II)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
    .locals 10
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
            ">;ZZ",
            "Lnet/bytebuddy/ClassFileVersion;",
            "II)",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;"
        }
    .end annotation

    and-int/lit8 v0, p8, 0x2

    if-nez v0, :cond_6

    .line 5160
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Lnet/bytebuddy/ClassFileVersion;->isLessThan(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_2

    .line 5163
    new-instance v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Trivial;

    and-int/lit8 v3, p9, 0x8

    move-object v4, p0

    move-object v5, p1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {v2, p0, p1, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Trivial;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Z)V

    return-object v2

    :cond_2
    move-object v4, p0

    move-object v5, p1

    if-eqz p6, :cond_4

    .line 5165
    new-instance v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;

    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_3

    move v9, v0

    goto :goto_1

    :cond_3
    move v9, v1

    :goto_1
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$UsingArgumentCopy;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2

    .line 5172
    :cond_4
    new-instance v2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$RequiringConsistentShape;

    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_5

    move v9, v0

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_2
    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$RequiringConsistentShape;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2

    .line 5161
    :cond_6
    :goto_3
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$NoOp;

    return-object v0
.end method

.method protected static toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 1

    .line 5188
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 5189
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 5190
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 5191
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5192
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5194
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5195
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    return-object p0

    .line 5196
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5197
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    return-object p0

    .line 5198
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5199
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    return-object p0

    .line 5201
    :cond_3
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5193
    :cond_4
    :goto_0
    sget-object p0, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 7

    .line 5209
    new-instance v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->ENTER:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;)V

    return-object v6
.end method

.method public getReaderHint()I
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5310
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5311
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5312
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int v5, v0, v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5314
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 5315
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5317
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    .line 5318
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    move v2, v4

    goto :goto_1

    .line 5320
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v3, v2, 0x1

    .line 5321
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v2

    move v2, v3

    goto :goto_2

    .line 5324
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Ljava/lang/Object;

    .line 5325
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v2, p3, 0x1

    .line 5326
    invoke-static {v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, p3

    move p3, v2

    goto :goto_3

    :cond_3
    iget-boolean p2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-eqz p2, :cond_4

    const/4 p2, -0x1

    move v4, p2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    move-object v3, p1

    .line 5328
    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    iput v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    return-void
.end method

.method protected translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;II[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    move/from16 v1, p6

    move-object/from16 v9, p7

    const/4 v2, -0x1

    const/4 v10, 0x1

    if-eq v8, v2, :cond_5

    if-eqz v8, :cond_5

    if-eq v8, v10, :cond_3

    const/4 v2, 0x2

    if-eq v8, v2, :cond_1

    const/4 v2, 0x3

    if-eq v8, v2, :cond_4

    const/4 v2, 0x4

    if-ne v8, v2, :cond_0

    goto :goto_0

    .line 5295
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected frame type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    sub-int/2addr v2, v1

    iput v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-ltz v2, :cond_2

    goto :goto_0

    .line 5253
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " implicit frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    add-int/2addr v2, v1

    iput v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    :cond_4
    :goto_0
    move v3, v1

    move-object v4, v9

    goto/16 :goto_3

    .line 5258
    :cond_5
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v3

    xor-int/2addr v3, v10

    add-int/2addr v2, v3

    const-string v3, ": "

    if-gt v2, v1, :cond_b

    .line 5262
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    move-object/from16 v11, p2

    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5265
    aget-object v6, v9, v4

    move-object/from16 v11, p2

    invoke-virtual {v11, v2, v5, v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->isPossibleThisFrameValue(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v10

    .line 5270
    :goto_1
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 5271
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v5

    invoke-interface {v5, v4}, Lnet/bytebuddy/description/method/ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-static {v5}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v5

    add-int v6, v4, v2

    aget-object v12, v9, v6

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5272
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is inconsistent at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5276
    :cond_8
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v2

    xor-int/2addr v2, v10

    sub-int/2addr v1, v2

    .line 5277
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5278
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v2

    xor-int/2addr v2, v10

    add-int/2addr v1, v2

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 5279
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 5280
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int v12, v1, v2

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v2, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-object v6, v13

    .line 5281
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->copy(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 5282
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v1, 0x1

    .line 5283
    invoke-static {v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v13, v1

    move v1, v4

    goto :goto_2

    .line 5286
    :cond_9
    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->size()I

    move-result v2

    invoke-interface/range {p3 .. p3}, Lnet/bytebuddy/description/method/MethodDescription;->isStatic()Z

    move-result v3

    xor-int/2addr v3, v10

    add-int/2addr v2, v3

    sub-int v3, v12, v1

    .line 5285
    invoke-static {v9, v2, v13, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    move v3, v12

    move-object v4, v13

    :goto_3
    move-object v1, p1

    move/from16 v2, p5

    move/from16 v5, p8

    move-object/from16 v6, p9

    .line 5297
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 5266
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is inconsistent for \'this\' reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5259
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inconsistent frame length for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
