.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttributeObtainingFieldVisitor"
.end annotation


# instance fields
.field private final record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

.field final synthetic this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4600
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4613
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4614
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4615
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitEnd()V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->record:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;

    .line 4620
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->fv:Lnet/bytebuddy/jar/asm/FieldVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 4621
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor$AttributeObtainingFieldVisitor;->this$1:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;

    .line 4606
    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing$RedefinitionClassVisitor;->this$0:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithFullProcessing;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4607
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    goto :goto_0

    .line 4608
    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining;->access$400()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    :goto_0
    return-object p1
.end method
