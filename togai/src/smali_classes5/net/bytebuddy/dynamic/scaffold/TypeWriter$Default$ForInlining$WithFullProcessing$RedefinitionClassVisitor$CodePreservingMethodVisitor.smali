.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CodePreservingMethodVisitor"
.end annotation


# instance fields
.field private final actualMethodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

.field private final resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

.field final synthetic this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4656
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->actualMethodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4660
    invoke-interface {p3, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitAnnotableParameterCount(IZ)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4684
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4685
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4677
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4678
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4679
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    .line 4665
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitCode()V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->actualMethodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4698
    invoke-static {v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->access$800(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->actualMethodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 4699
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4700
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->isRebased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4701
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->access$900(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getActualModifiers()I

    move-result v2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4702
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4703
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4704
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getGenericSignature()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4705
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v6

    .line 4701
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    goto :goto_0

    .line 4706
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$600()Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    .line 4707
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->resolution:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;

    .line 4712
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution;->getResolvedMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getStackSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4691
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4692
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4693
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$CodePreservingMethodVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4670
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4671
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4672
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method
