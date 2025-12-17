.class public Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "AnnotationRemapper.java"


# instance fields
.field protected final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 52
    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 72
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 82
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne p1, p2, :cond_1

    move-object p2, p0

    goto :goto_0

    :cond_1
    new-instance p2, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {p2, v0, p1, v1}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    :goto_0
    return-object p2
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->av:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    if-ne p1, v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;

    iget v1, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->api:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;-><init>(ILnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    :goto_0
    return-object v0
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/AnnotationRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    .line 77
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
