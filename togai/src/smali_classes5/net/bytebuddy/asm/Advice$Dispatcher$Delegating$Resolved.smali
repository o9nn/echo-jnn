.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Resolved"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodExit;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$AdviceMethodWriter;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")V"
        }
    .end annotation

    .line 8479
    sget-object v5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->DELEGATION:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)V

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 1

    .line 8495
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8498
    invoke-virtual/range {p0 .. p10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object p1

    return-object p1

    .line 8496
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " is not visible to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
.end method
