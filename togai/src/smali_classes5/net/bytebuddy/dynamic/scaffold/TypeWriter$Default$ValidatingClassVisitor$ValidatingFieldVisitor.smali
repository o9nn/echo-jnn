.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidatingFieldVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3190
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$ValidatingFieldVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;

    .line 3195
    invoke-static {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;->access$000(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;->assertAnnotation()V

    .line 3196
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
