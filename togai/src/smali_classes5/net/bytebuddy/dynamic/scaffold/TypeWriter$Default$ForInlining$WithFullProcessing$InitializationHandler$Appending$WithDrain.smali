.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "WithDrain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithActiveRecord;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain$WithoutActiveRecord;
    }
.end annotation


# instance fields
.field protected final appended:Lnet/bytebuddy/jar/asm/Label;

.field protected final original:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V
    .locals 0

    .line 4070
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;ZZ)V

    .line 4071
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    .line 4072
    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method protected abstract onAfterComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
.end method

.method protected onComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 3

    .line 4090
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 4091
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->onAfterComplete(Lnet/bytebuddy/implementation/Implementation$Context;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 4077
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0xa7

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 4078
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->original:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 4079
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 4084
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->appended:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 4085
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->frameWriter:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$WithDrain;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$InitializationHandler$Appending$FrameWriter;->emitFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method
