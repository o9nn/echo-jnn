.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;
.super Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant$RejectingSignatureVisitor;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GenericTypeExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$ForSignature;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;
    }
.end annotation


# instance fields
.field private final genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

.field private incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V
    .locals 0

    .line 2127
    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant$RejectingSignatureVisitor;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

    return-void
.end method


# virtual methods
.method public register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

    .line 2156
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForGenericArray;

    invoke-direct {v1, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForGenericArray;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;->register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-void
.end method

.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    .line 2149
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;)V

    return-object v0
.end method

.method public visitBaseType(C)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

    .line 2135
    invoke-static {p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForPrimitiveType;->of(C)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;->register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-void
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 1

    .line 2163
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    .line 2200
    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->toToken()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;->register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2

    .line 2170
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;-><init>(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;)V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    return-void
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    .line 2190
    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->appendDirectBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1

    .line 2192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown wildcard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    .line 2186
    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->appendLowerBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    .line 2188
    invoke-interface {p1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->appendUpperBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeArgument()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->incompleteToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    .line 2177
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->appendPlaceholder()V

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;->genericTypeRegistrant:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;

    .line 2142
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable;

    invoke-direct {v1, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;->register(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    return-void
.end method
