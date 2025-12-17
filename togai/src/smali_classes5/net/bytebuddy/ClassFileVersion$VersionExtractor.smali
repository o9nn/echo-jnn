.class public Lnet/bytebuddy/ClassFileVersion$VersionExtractor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "ClassFileVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "VersionExtractor"
.end annotation


# instance fields
.field private classFileVersionNumber:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 547
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getClassFileVersionNumber()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionExtractor;->classFileVersionNumber:I

    return v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lnet/bytebuddy/ClassFileVersion$VersionExtractor;->classFileVersionNumber:I

    return-void
.end method
