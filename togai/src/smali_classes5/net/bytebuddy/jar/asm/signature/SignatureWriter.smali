.class public Lnet/bytebuddy/jar/asm/signature/SignatureWriter;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "SignatureWriter.java"


# instance fields
.field private argumentStack:I

.field private hasFormals:Z

.field private hasParameters:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x70000

    .line 73
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private endArguments()V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 235
    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 238
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method private endFormals()V
    .locals 2

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endArguments()V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5e

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasFormals:Z

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endArguments()V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 114
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    .line 124
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    .line 103
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->endFormals()V

    return-object p0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 192
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    .line 180
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->argumentStack:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
