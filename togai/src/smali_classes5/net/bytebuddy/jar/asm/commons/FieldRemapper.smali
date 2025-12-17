.class public Lnet/bytebuddy/jar/asm/commons/FieldRemapper;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "FieldRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 54
    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 74
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->api:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 84
    invoke-virtual {v0, p3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget p3, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->api:I

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/commons/FieldRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, p3, p1, p4}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
