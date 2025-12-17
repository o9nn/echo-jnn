.class public Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeReferenceAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TypeReferenceMethodVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 460
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 475
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, v0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 480
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    .line 465
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object v1

    .line 469
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 553
    invoke-virtual {v0, p2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolveInternalName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 554
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 508
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 511
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 513
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 567
    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 568
    invoke-virtual {v0, p3}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Handle;)V

    .line 569
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    iget-object v3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 570
    invoke-virtual {v3, v2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 577
    invoke-virtual {v0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Ljava/lang/Object;)V

    .line 578
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 536
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p6}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-super/range {p0 .. p7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 541
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 560
    invoke-virtual {v0, p2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolveInternalName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 561
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 562
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 583
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolve(Lnet/bytebuddy/jar/asm/Type;)V

    .line 584
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 497
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 500
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 502
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 519
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 522
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 524
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 590
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 486
    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$000(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 489
    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, p3, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    .line 491
    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->access$100()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceMethodVisitor;->this$0:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    .line 547
    invoke-virtual {v0, p2}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->resolveInternalName(Ljava/lang/String;)V

    .line 548
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method
