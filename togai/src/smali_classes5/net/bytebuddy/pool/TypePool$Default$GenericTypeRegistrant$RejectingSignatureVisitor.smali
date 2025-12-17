.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant$RejectingSignatureVisitor;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectingSignatureVisitor"
.end annotation


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Unexpected token in generic signature"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1931
    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 2008
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitBaseType(C)V
    .locals 1

    .line 1994
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1945
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 1

    .line 2015
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitEnd()V
    .locals 2

    .line 2043
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1987
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 1

    .line 1938
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 1

    .line 2022
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1952
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1973
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1980
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 1959
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    .line 2036
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 2029
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected token in generic signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 1

    .line 2001
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token in generic signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
