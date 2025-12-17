.class public Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Bound"
.end annotation


# instance fields
.field private final endOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field private final exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final startOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field private final suppressedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 6281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 6284
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 6285
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 6310
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 6311
    invoke-interface {p4, p1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object p4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 6312
    invoke-interface {p4, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    const/4 p4, 0x1

    add-int/2addr p2, p4

    invoke-interface {p3, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSize(I)V

    .line 6313
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6314
    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 6315
    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 6316
    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6317
    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6319
    :cond_0
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x9

    .line 6320
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6321
    :cond_1
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0xb

    .line 6322
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6323
    :cond_2
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xe

    .line 6324
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    .line 6325
    :cond_3
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p5, p2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 6326
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x3

    .line 6318
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onEndWithSkip(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 2

    .line 6338
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v1, 0xa7

    .line 6339
    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 6340
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V

    .line 6341
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 6342
    invoke-interface {p4, p1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public onPrepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 6292
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;->startOfMethod:Lnet/bytebuddy/jar/asm/Label;

    .line 6299
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method
