.class final Lnet/bytebuddy/jar/asm/AnnotationWriter;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field private final annotation:Lnet/bytebuddy/jar/asm/ByteVector;

.field private nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private numElementValuePairs:I

.field private final numElementValuePairsOffset:I

.field private final previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private final useNamedValues:Z


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-void
.end method

.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 115
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iput-boolean p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 120
    iget p1, p3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    iput-object p4, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz p4, :cond_1

    .line 123
    iput-object p0, p4, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_1
    return-void
.end method

.method static computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I
    .locals 4

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 363
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {v3, p0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    .line 391
    aget-object v4, p1, v2

    if-nez v4, :cond_0

    move v3, v1

    goto :goto_1

    .line 393
    :cond_0
    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p3, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 396
    invoke-virtual {p3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 397
    invoke-virtual {p3, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move p0, v1

    :goto_2
    if-ge p0, p2, :cond_4

    .line 399
    aget-object v0, p1, p0

    move v2, v1

    move-object v4, v3

    :goto_3
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->visitEnd()V

    add-int/lit8 v2, v2, 0x1

    .line 407
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_3

    .line 409
    :cond_2
    invoke-virtual {p3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_4
    if-eqz v4, :cond_3

    .line 412
    iget-object v0, v4, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, v4, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p3, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 414
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method computeAnnotationsSize(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 294
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 300
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr p1, v1

    .line 301
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_0

    :cond_1
    return p1
.end method

.method putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->visitEnd()V

    .line 323
    iget-object v3, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    .line 326
    iget-object v3, v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;->previousAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 329
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 330
    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    if-eqz v3, :cond_1

    .line 333
    iget-object p1, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v0, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p2, p1, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 334
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/AnnotationWriter;->nextAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 155
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 157
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 158
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x73

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 159
    :cond_1
    instance-of p1, p2, Ljava/lang/Byte;

    const/16 v0, 0x42

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 160
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 161
    :cond_2
    instance-of p1, p2, Ljava/lang/Boolean;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    .line 162
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 163
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p2, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 164
    :cond_3
    instance-of p1, p2, Ljava/lang/Character;

    const/16 v2, 0x43

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 165
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p1, v2, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 166
    :cond_4
    instance-of p1, p2, Ljava/lang/Short;

    const/16 v3, 0x53

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 167
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p1, v3, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 168
    :cond_5
    instance-of p1, p2, Lnet/bytebuddy/jar/asm/Type;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 169
    check-cast p2, Lnet/bytebuddy/jar/asm/Type;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x63

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_8

    .line 170
    :cond_6
    instance-of p1, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x5b

    if-eqz p1, :cond_7

    .line 171
    check-cast p2, [B

    check-cast p2, [B

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 172
    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 173
    array-length p1, p2

    :goto_0
    if-ge v4, p1, :cond_f

    aget-byte v1, p2, v4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 174
    invoke-virtual {v3, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v2, v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_7
    instance-of p1, p2, [Z

    if-eqz p1, :cond_8

    .line 177
    check-cast p2, [Z

    check-cast p2, [Z

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 178
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 179
    array-length p1, p2

    :goto_1
    if-ge v4, p1, :cond_f

    aget-boolean v0, p2, v4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 180
    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v2, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    :cond_8
    instance-of p1, p2, [S

    if-eqz p1, :cond_9

    .line 183
    check-cast p2, [S

    check-cast p2, [S

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 184
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 185
    array-length p1, p2

    :goto_2
    if-ge v4, p1, :cond_f

    aget-short v0, p2, v4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 186
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 188
    :cond_9
    instance-of p1, p2, [C

    if-eqz p1, :cond_a

    .line 189
    check-cast p2, [C

    check-cast p2, [C

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 190
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 191
    array-length p1, p2

    :goto_3
    if-ge v4, p1, :cond_f

    aget-char v0, p2, v4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 192
    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 194
    :cond_a
    instance-of p1, p2, [I

    if-eqz p1, :cond_b

    .line 195
    check-cast p2, [I

    check-cast p2, [I

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 196
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 197
    array-length p1, p2

    :goto_4
    if-ge v4, p1, :cond_f

    aget v0, p2, v4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 198
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v2, 0x49

    invoke-virtual {v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 200
    :cond_b
    instance-of p1, p2, [J

    if-eqz p1, :cond_c

    .line 201
    check-cast p2, [J

    check-cast p2, [J

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 202
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 203
    array-length p1, p2

    :goto_5
    if-ge v4, p1, :cond_f

    aget-wide v0, p2, v4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 204
    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLong(J)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v1, 0x4a

    invoke-virtual {v2, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 206
    :cond_c
    instance-of p1, p2, [F

    if-eqz p1, :cond_d

    .line 207
    check-cast p2, [F

    check-cast p2, [F

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 208
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 209
    array-length p1, p2

    :goto_6
    if-ge v4, p1, :cond_f

    aget v0, p2, v4

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 210
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFloat(F)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 212
    :cond_d
    instance-of p1, p2, [D

    if-eqz p1, :cond_e

    .line 213
    check-cast p2, [D

    check-cast p2, [D

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 214
    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 215
    array-length p1, p2

    :goto_7
    if-ge v4, p1, :cond_f

    aget-wide v0, p2, v4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 216
    invoke-virtual {v3, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDouble(D)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v1, 0x44

    invoke-virtual {v2, v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 219
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const-string v0, ".s.IFJDCS"

    .line 220
    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p2, v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_f
    :goto_8
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 243
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 246
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 247
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 256
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 266
    new-instance p1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object p1
.end method

.method public visitEnd()V
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 272
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairsOffset:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 273
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v2

    .line 274
    aput-byte v2, v0, v1

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->numElementValuePairs:I

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->useNamedValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 230
    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->annotation:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 233
    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/AnnotationWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 234
    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method
