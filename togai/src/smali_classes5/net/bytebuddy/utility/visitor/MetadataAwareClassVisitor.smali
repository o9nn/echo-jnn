.class public abstract Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "MetadataAwareClassVisitor.java"


# instance fields
.field private triggerAttributes:Z

.field private triggerNestHost:Z

.field private triggerOuterClass:Z


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    return-void
.end method

.method private considerTriggerAfterAttributes()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    .line 94
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onAfterAttributes()V

    :cond_0
    return-void
.end method

.method private considerTriggerNestHost()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    .line 74
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onNestHost()V

    :cond_0
    return-void
.end method

.method private considerTriggerOuterClass()V
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    .line 84
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onOuterType()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onAfterAttributes()V
.end method

.method protected abstract onNestHost()V
.end method

.method protected abstract onOuterType()V
.end method

.method protected onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 146
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method protected onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method protected onVisitEnd()V
    .locals 0

    .line 278
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method protected onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0

    .line 241
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method protected onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0

    .line 263
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1
.end method

.method protected onVisitNestHost(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method protected onVisitNestMember(Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method protected onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 133
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 134
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 135
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 172
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 173
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 269
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 270
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 271
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitEnd()V

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 0

    .line 224
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 225
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 226
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 227
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 205
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 206
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 207
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 0

    .line 246
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 247
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 248
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 249
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    return-object p1
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    .line 101
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestHost(Ljava/lang/String;)V

    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 188
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 189
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 190
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestMember(Ljava/lang/String;)V

    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0

    .line 151
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 152
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
