.class final Lnet/bytebuddy/jar/asm/ModuleWriter;
.super Lnet/bytebuddy/jar/asm/ModuleVisitor;
.source "ModuleWriter.java"


# instance fields
.field private final exports:Lnet/bytebuddy/jar/asm/ByteVector;

.field private exportsCount:I

.field private mainClassIndex:I

.field private final moduleFlags:I

.field private final moduleNameIndex:I

.field private final moduleVersionIndex:I

.field private final opens:Lnet/bytebuddy/jar/asm/ByteVector;

.field private opensCount:I

.field private packageCount:I

.field private final packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final provides:Lnet/bytebuddy/jar/asm/ByteVector;

.field private providesCount:I

.field private final requires:Lnet/bytebuddy/jar/asm/ByteVector;

.field private requiresCount:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private usesCount:I

.field private final usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;III)V
    .locals 1

    const/high16 v0, 0x70000

    .line 97
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iput p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleNameIndex:I

    iput p3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleFlags:I

    iput p4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleVersionIndex:I

    .line 102
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 103
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 104
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 105
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 106
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 107
    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method


# virtual methods
.method computeAttributesSize()I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v1, "Module"

    .line 196
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 198
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x16

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModulePackages"

    .line 201
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 203
    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModuleMainClass"

    .line 206
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method

.method getAttributeCount()I
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v3, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method putAttributes(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 221
    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Module"

    .line 224
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleNameIndex:I

    .line 226
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleFlags:I

    .line 227
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->moduleVersionIndex:I

    .line 228
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    .line 229
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x0

    .line 230
    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    .line 231
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 232
    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    .line 233
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 234
    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    .line 235
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 236
    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    .line 237
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 238
    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    const/4 v1, 0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModulePackages"

    .line 241
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    .line 242
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    .line 243
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 244
    invoke-virtual {v0, v2, v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "ModuleMainClass"

    .line 248
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    .line 249
    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    .line 250
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 132
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 134
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 136
    array-length v0, p3

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 137
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v0, p3, p1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exports:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 138
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->exportsCount:I

    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 112
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->mainClassIndex:I

    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 146
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 148
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 150
    array-length v0, p3

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 151
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v0, p3, p1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opens:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 152
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->opensCount:I

    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 117
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->packageCount:I

    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 166
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 167
    array-length v0, p2

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 168
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->provides:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 169
    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->providesCount:I

    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requires:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 124
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 126
    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->requiresCount:I

    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesIndex:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 160
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleWriter;->usesCount:I

    return-void
.end method
