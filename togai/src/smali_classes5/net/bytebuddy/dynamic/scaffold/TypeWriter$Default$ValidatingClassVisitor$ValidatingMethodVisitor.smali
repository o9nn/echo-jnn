.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidatingMethodVisitor"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3217
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3223
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertAnnotation()V

    .line 3224
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3229
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertDefaultValue(Ljava/lang/String;)V

    .line 3230
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3265
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertInvokeDynamic()V

    .line 3266
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    .line 3267
    instance-of v2, v2, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3268
    invoke-static {v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertDynamicValueInConstantPool()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3271
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3277
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertSubRoutine()V

    .line 3279
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1

    .line 3236
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    .line 3237
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Type;

    .line 3238
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3244
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertMethodTypeInConstantPool()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3241
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertTypeInConstantPool()V

    goto :goto_0

    .line 3247
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3248
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertHandleInConstantPool()V

    goto :goto_0

    .line 3249
    :cond_1
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3250
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertDynamicValueInConstantPool()V

    .line 3252
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p5, :cond_0

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingMethodVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3258
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertDefaultMethodCall()V

    .line 3260
    :cond_0
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
