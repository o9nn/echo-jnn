.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 108
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnType;->classVisitor:Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 115
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/TypePath;->fromString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/TypePath;

    move-result-object p4

    invoke-virtual {v0, p3, p4, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
