.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithActiveRecord"
.end annotation


# instance fields
.field private final label:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V
    .locals 0

    .line 4013
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    .line 4014
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method protected onComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 2

    .line 4028
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 4029
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 4030
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    .line 4031
    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->stackSize:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->stackSize:I

    .line 4032
    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->localVariableLength:I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->localVariableLength:I

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    const/16 v0, 0xb1

    if-ne p1, v0, :cond_0

    .line 4020
    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain$WithActiveRecord;->label:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    goto :goto_0

    .line 4022
    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithoutDrain;->visitInsn(I)V

    :goto_0
    return-void
.end method
