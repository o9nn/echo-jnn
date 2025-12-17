.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;
.super Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecorationClassVisitor"
.end annotation


# instance fields
.field private final contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

.field private implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

.field private final readerFlags:I

.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

.field private final writerFlags:I


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;II)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4936
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    iput p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->writerFlags:I

    iput p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->readerFlags:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V
    .locals 0

    return-void
.end method

.method protected onAfterAttributes()V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4993
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3, v4}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method protected onNestHost()V
    .locals 0

    return-void
.end method

.method protected onOuterType()V
    .locals 0

    return-void
.end method

.method protected onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4986
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4987
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4988
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected onVisitEnd()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    .line 4998
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, p0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;->drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 4999
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method protected onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4979
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4980
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4981
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 4949
    invoke-static {p1}, Lnet/bytebuddy/ClassFileVersion;->ofMinorMajor(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v5

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4950
    iget-object v1, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v3, v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v4, v4, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v6, v6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/implementation/Implementation$Context$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->contextRegistry:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;

    .line 4955
    invoke-virtual {v2, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$ContextRegistry;->setImplementationContext(Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;)V

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    .line 4956
    iget-object v2, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v3, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v6, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v7, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->fields:Lnet/bytebuddy/description/field/FieldList;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;

    iget-object v8, v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;->methods:Lnet/bytebuddy/description/method/MethodList;

    iget v9, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->writerFlags:I

    iget v10, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->readerFlags:I

    invoke-interface/range {v2 .. v10}, Lnet/bytebuddy/asm/AsmVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 4964
    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$DecorationClassVisitor;->cv:Lnet/bytebuddy/jar/asm/ClassVisitor;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
