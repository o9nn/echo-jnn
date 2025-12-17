.class public Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;
.super Lnet/bytebuddy/jar/asm/ClassWriter;
.source "ClassWriterStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameComputingClassWriter"
.end annotation


# instance fields
.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/pool/TypePool;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(I)V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ClassReader;ILnet/bytebuddy/pool/TypePool;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassWriter;-><init>(Lnet/bytebuddy/jar/asm/ClassReader;I)V

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method


# virtual methods
.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;->typePool:Lnet/bytebuddy/pool/TypePool;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 118
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$FrameComputingClassWriter;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 119
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    .line 120
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    .line 129
    invoke-interface {p1, p2}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    :goto_0
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
