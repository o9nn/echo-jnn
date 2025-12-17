.class public Lnet/bytebuddy/jar/asm/commons/MethodRemapper;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MethodRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 56
    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 192
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 195
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 196
    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 197
    invoke-virtual {p2, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v2, p1

    move v6, p5

    .line 193
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    if-nez p2, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 132
    aget-object v3, p2, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    .line 134
    new-array v1, p1, [Ljava/lang/Object;

    .line 135
    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 137
    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v1

    :goto_1
    return-object p2
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 85
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    .line 76
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v1, v2, v0, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 148
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 149
    invoke-virtual {v1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 150
    invoke-virtual {p3, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 146
    invoke-super {p0, p1, v0, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    .line 121
    invoke-direct {p0, p2, p3}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 123
    invoke-direct {p0, p4, p5}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapFrameTypes(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    .line 118
    invoke-super/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 238
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p3, p1, p4}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 4

    .line 208
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 209
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 210
    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 213
    invoke-virtual {p4, p1, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 214
    invoke-virtual {p4, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 215
    invoke-virtual {p4, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/jar/asm/Handle;

    .line 212
    invoke-super {p0, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 226
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 270
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p2, p3, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 268
    invoke-super/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 9

    move-object v8, p0

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    move-object v1, p6

    .line 288
    invoke-virtual {v0, p6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p7

    .line 287
    invoke-super/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v2, v8, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object v3, v8, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v1, v2, v0, v3}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 166
    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 176
    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 177
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 180
    :cond_0
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 231
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 105
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p3, p1, v0}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 254
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p3, p1, p4}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 247
    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 95
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget p3, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->api:I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p3, p1, p4}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/MethodRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 221
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method
