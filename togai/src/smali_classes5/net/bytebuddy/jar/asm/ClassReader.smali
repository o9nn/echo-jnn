.class public Lnet/bytebuddy/jar/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field private static final INPUT_STREAM_DATA_CHUNK_SIZE:I = 0x1000

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4


# instance fields
.field public final b:[B

.field private final bootstrapMethodOffsets:[I

.field private final constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

.field private final constantUtf8Values:[Ljava/lang/String;

.field private final cpInfoOffsets:[I

.field public final header:I

.field private final maxStringLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 286
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    .line 285
    invoke-static {p1, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readStream(Ljava/io/InputStream;Z)[B

    move-result-object p1

    .line 284
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 152
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    const/4 p3, 0x1

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([BIZ)V

    return-void
.end method

.method constructor <init>([BIZ)V
    .locals 10

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    if-eqz p3, :cond_1

    add-int/lit8 p3, p2, 0x6

    .line 182
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x38

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported class file major version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 188
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    .line 189
    new-array v0, p3, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 190
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    add-int/lit8 p2, p2, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_1
    if-ge v4, p3, :cond_3

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, p2, 0x1

    .line 202
    aput v7, v5, v4

    .line 204
    aget-byte v5, p1, p2

    const/4 v8, 0x3

    const/4 v9, 0x5

    packed-switch v5, :pswitch_data_0

    .line 246
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    move v3, v1

    goto :goto_2

    :pswitch_2
    move v2, v1

    goto :goto_2

    :pswitch_3
    const/4 v8, 0x4

    goto :goto_3

    :pswitch_4
    add-int/lit8 v4, v4, 0x2

    const/16 v8, 0x9

    goto :goto_4

    :goto_2
    :pswitch_5
    move v4, v6

    move v8, v9

    goto :goto_4

    .line 227
    :pswitch_6
    invoke-virtual {p0, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/2addr v8, v4

    if-le v8, v0, :cond_2

    move v4, v6

    move v0, v8

    goto :goto_4

    :cond_2
    :goto_3
    :pswitch_7
    move v4, v6

    :goto_4
    add-int/2addr p2, v8

    goto :goto_1

    :cond_3
    iput v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 255
    new-array p2, p3, [Lnet/bytebuddy/jar/asm/ConstantDynamic;

    goto :goto_5

    :cond_4
    move-object p2, p1

    :goto_5
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    or-int p2, v2, v3

    if-eqz p2, :cond_5

    .line 260
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readBootstrapMethodsAttribute(I)[I

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private computeImplicitFrame(Lnet/bytebuddy/jar/asm/Context;)V
    .locals 10

    .line 2959
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    .line 2960
    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 2962
    iget v2, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "<init>"

    .line 2963
    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2964
    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, v1, v4

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v2, v2, 0x2

    .line 2966
    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    invoke-virtual {p0, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    move v4, v3

    :cond_1
    move v2, v3

    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 2974
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-eq v6, v7, :cond_9

    const/16 v7, 0x3b

    const/16 v8, 0x4c

    if-eq v6, v8, :cond_7

    const/16 v9, 0x53

    if-eq v6, v9, :cond_6

    const/16 v9, 0x49

    if-eq v6, v9, :cond_6

    const/16 v9, 0x4a

    if-eq v6, v9, :cond_5

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_6

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_2

    packed-switch v6, :pswitch_data_0

    .line 3014
    iput v4, p1, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    return-void

    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    .line 2989
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    .line 2992
    :cond_2
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2995
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 2997
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v3

    .line 3002
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v2, v5

    move v4, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v4, 0x1

    .line 2986
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :cond_6
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 2980
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v4

    :goto_4
    move v4, v2

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v5

    .line 3006
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 3010
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move v4, v6

    move v2, v7

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v4, 0x1

    .line 2983
    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v4

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    .line 2470
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2471
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    iget-short p2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    iput-short p2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    :cond_0
    return-void
.end method

.method private createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 0

    .line 2456
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    .line 2457
    iget-short p2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 p2, p2, -0x2

    int-to-short p2, p2

    iput-short p2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    return-object p1
.end method

.method private getTypeAnnotationBytecodeOffset([II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 2598
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget v0, p1, p2

    .line 2600
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2603
    :cond_0
    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 11

    move-object v0, p1

    move-object v1, p2

    .line 3287
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3288
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 3289
    invoke-virtual/range {v4 .. v10}, Lnet/bytebuddy/jar/asm/Attribute;->read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3293
    :cond_1
    new-instance v4, Lnet/bytebuddy/jar/asm/Attribute;

    invoke-direct {v4, p2}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v4 .. v10}, Lnet/bytebuddy/jar/asm/Attribute;->read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    return-object v0
.end method

.method private readBootstrapMethodsAttribute(I)[I
    .locals 6

    .line 3234
    new-array p1, p1, [C

    .line 3235
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    .line 3237
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    .line 3239
    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    .line 3240
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x6

    const-string v5, "BootstrapMethods"

    .line 3242
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3244
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    new-array v1, p1, [I

    add-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_0

    .line 3248
    aput v0, v1, v2

    add-int/lit8 v3, v0, 0x2

    .line 3252
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    add-int v0, v4, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private readCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;I)V
    .locals 38

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v12, v8, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 1301
    iget-object v13, v10, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 1302
    invoke-virtual {v8, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    add-int/lit8 v0, v11, 0x2

    .line 1303
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    add-int/lit8 v0, v11, 0x4

    .line 1304
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v16, v11, 0x8

    add-int v6, v16, v7

    add-int/lit8 v0, v7, 0x1

    .line 1310
    new-array v5, v0, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    move/from16 v0, v16

    :cond_0
    :goto_0
    const/16 v4, 0x84

    const/16 v3, 0x8

    if-ge v0, v6, :cond_3

    sub-int v1, v0, v16

    .line 1313
    aget-byte v2, v12, v0

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v2, v0, 0x1

    .line 1503
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    .line 1509
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_1
    :pswitch_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_3
    add-int/lit8 v1, v0, 0x1

    .line 1513
    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v4, :cond_2

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 1531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :goto_1
    :pswitch_4
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :pswitch_5
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 1551
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    add-int/lit8 v2, v0, 0x4

    .line 1552
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v0, v3

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 1556
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    add-int/lit8 v0, v0, 0x8

    move v2, v3

    goto :goto_2

    :pswitch_6
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 1538
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    add-int/lit8 v2, v0, 0x8

    .line 1539
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0xc

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 1543
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    add-int/lit8 v0, v0, 0x4

    move v2, v3

    goto :goto_3

    :pswitch_7
    add-int/lit8 v2, v0, 0x1

    .line 1482
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    :goto_4
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1607
    :cond_3
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_5
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4

    .line 1610
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    add-int/lit8 v3, v0, 0x2

    .line 1611
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-direct {v8, v3, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v3

    add-int/lit8 v4, v0, 0x4

    .line 1612
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {v8, v4, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    move/from16 v19, v2

    iget-object v2, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    move/from16 v20, v6

    add-int/lit8 v6, v0, 0x6

    .line 1613
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v2, v2, v6

    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x8

    .line 1615
    invoke-virtual {v9, v1, v3, v4, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V

    move/from16 v1, v19

    move/from16 v6, v20

    const/16 v3, 0x8

    const/16 v4, 0x84

    goto :goto_5

    :cond_4
    move/from16 v20, v6

    .line 1643
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_6
    add-int/lit8 v26, v1, -0x1

    if-lez v1, :cond_10

    .line 1647
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v0, 0x2

    .line 1648
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v28

    add-int/lit8 v6, v0, 0x6

    const-string v4, "LocalVariableTable"

    .line 1650
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1651
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 1655
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_7
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_5

    .line 1658
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1659
    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    move-object/from16 v30, v2

    add-int/lit8 v2, v0, 0x2

    .line 1660
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1661
    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v0, v0, 0xa

    move v1, v4

    move-object/from16 v2, v30

    goto :goto_7

    :cond_5
    move-object/from16 v30, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v24, v18

    goto :goto_9

    :cond_6
    move-object/from16 v30, v2

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_8
    move-object/from16 v30, v2

    const-string v2, "LocalVariableTypeTable"

    .line 1666
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v25, v18

    goto/16 :goto_b

    :cond_9
    const-string v2, "LineNumberTable"

    .line 1670
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1671
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    .line 1674
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_8
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 1677
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v4, v0, 0x2

    .line 1678
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    .line 1680
    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createDebugLabel(I[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1681
    aget-object v1, v5, v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/Label;->addLineNumber(I)V

    move v1, v2

    goto :goto_8

    :cond_a
    const-string v2, "RuntimeVisibleTypeAnnotations"

    .line 1684
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 1686
    invoke-direct {v8, v9, v10, v6, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I

    move-result-object v0

    move-object v2, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    :goto_9
    move/from16 v34, v7

    move/from16 v33, v20

    goto :goto_c

    :cond_b
    const/4 v2, 0x1

    const-string v4, "RuntimeInvisibleTypeAnnotations"

    .line 1693
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    .line 1695
    invoke-direct {v8, v9, v10, v6, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    const-string v2, "StackMapTable"

    .line 1697
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1698
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v28

    move/from16 v19, v0

    move/from16 v22, v1

    goto :goto_a

    :cond_d
    const-string v2, "StackMap"

    .line 1711
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1712
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v28

    move/from16 v19, v0

    move/from16 v22, v1

    move v3, v4

    :cond_e
    :goto_a
    move-object/from16 v17, v5

    move/from16 v18, v6

    :goto_b
    move/from16 v34, v7

    move/from16 v33, v20

    move-object/from16 v2, v30

    :goto_c
    const/16 v9, 0x8

    goto :goto_d

    .line 1722
    :cond_f
    iget-object v2, v10, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    move-object/from16 v0, p0

    move-object/from16 v29, v1

    move-object v1, v2

    move-object/from16 v11, v30

    move-object/from16 v2, v29

    move/from16 v31, v3

    const/16 v9, 0x8

    move v3, v6

    move/from16 v4, v28

    move-object/from16 v17, v5

    move-object v5, v13

    move/from16 v18, v6

    move/from16 v33, v20

    move/from16 v6, p3

    move/from16 v34, v7

    move-object/from16 v7, v17

    .line 1723
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    move-object/from16 v7, v23

    .line 1731
    iput-object v7, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move-object/from16 v23, v0

    move-object v2, v11

    move/from16 v3, v31

    :goto_d
    add-int v0, v18, v28

    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v5, v17

    move/from16 v1, v26

    move/from16 v20, v33

    move/from16 v7, v34

    goto/16 :goto_6

    :cond_10
    move-object v11, v2

    move/from16 v31, v3

    move-object/from16 v17, v5

    move/from16 v34, v7

    move/from16 v33, v20

    move-object/from16 v7, v23

    const/16 v9, 0x8

    .line 1739
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_e

    :cond_11
    const/4 v6, 0x0

    :goto_e
    const/4 v5, -0x1

    if-eqz v19, :cond_16

    .line 1744
    iput v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    const/4 v4, 0x0

    .line 1745
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 1746
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 1747
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 1748
    new-array v0, v15, [Ljava/lang/Object;

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    .line 1749
    iput v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    .line 1750
    new-array v0, v14, [Ljava/lang/Object;

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    if-eqz v6, :cond_12

    .line 1752
    invoke-direct {v8, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->computeImplicitFrame(Lnet/bytebuddy/jar/asm/Context;)V

    :cond_12
    move/from16 v0, v19

    :goto_f
    move/from16 v3, v22

    add-int/lit8 v1, v3, -0x2

    if-ge v0, v1, :cond_15

    .line 1762
    aget-byte v1, v12, v0

    if-ne v1, v9, :cond_14

    add-int/lit8 v1, v0, 0x1

    .line 1763
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-ltz v1, :cond_14

    move/from16 v2, v34

    if-ge v1, v2, :cond_13

    add-int v18, v16, v1

    .line 1764
    aget-byte v4, v12, v18

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_13

    move-object/from16 v5, v17

    .line 1768
    invoke-direct {v8, v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    goto :goto_10

    :cond_13
    move-object/from16 v5, v17

    goto :goto_10

    :cond_14
    move-object/from16 v5, v17

    move/from16 v2, v34

    :goto_10
    add-int/lit8 v0, v0, 0x1

    move/from16 v34, v2

    move/from16 v22, v3

    move-object/from16 v17, v5

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_f

    :cond_15
    move-object/from16 v5, v17

    goto :goto_11

    :cond_16
    move-object/from16 v5, v17

    move/from16 v3, v22

    :goto_11
    move/from16 v2, v34

    if-eqz v6, :cond_17

    .line 1773
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v20, v2

    move v2, v15

    move v9, v3

    move-object v3, v4

    move-object/from16 v23, v7

    const/4 v7, 0x0

    move/from16 v4, v17

    move-object/from16 v35, v5

    move-object/from16 v5, v18

    .line 1780
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_12

    :cond_17
    move/from16 v20, v2

    move v9, v3

    move-object/from16 v35, v5

    move-object/from16 v23, v7

    const/4 v7, 0x0

    .line 1791
    :goto_12
    invoke-direct {v8, v11, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v0

    move-object/from16 v5, v21

    .line 1797
    invoke-direct {v8, v5, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v1

    .line 1805
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_18

    const/16 v4, 0x21

    move/from16 v17, v4

    goto :goto_13

    :cond_18
    move/from16 v17, v7

    :goto_13
    move/from16 v18, v0

    move v4, v7

    move/from16 v21, v4

    move/from16 v26, v21

    move/from16 v3, v16

    move/from16 v0, v19

    move/from16 v19, v1

    :goto_14
    move/from16 v2, v33

    if-ge v3, v2, :cond_33

    sub-int v1, v3, v16

    move/from16 p3, v0

    move-object/from16 v7, v35

    .line 1813
    aget-object v0, v7, v1

    move/from16 v33, v2

    if-eqz v0, :cond_1a

    .line 1815
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v2, v2, 0x2

    move/from16 v22, v14

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_15

    :cond_19
    const/4 v2, 0x0

    :goto_15
    const/16 v27, 0x8

    move-object/from16 v14, p1

    invoke-virtual {v0, v14, v2}, Lnet/bytebuddy/jar/asm/Label;->accept(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V

    goto :goto_16

    :cond_1a
    move/from16 v22, v14

    const/16 v27, 0x8

    move-object/from16 v14, p1

    :goto_16
    move v0, v4

    move/from16 v4, p3

    :goto_17
    if-eqz v4, :cond_21

    .line 1819
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    if-eq v2, v1, :cond_1c

    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    move/from16 v28, v15

    const/4 v15, -0x1

    if-ne v2, v15, :cond_1b

    goto :goto_18

    :cond_1b
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move v11, v1

    goto/16 :goto_1d

    :cond_1c
    move/from16 v28, v15

    const/4 v15, -0x1

    .line 1824
    :goto_18
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    if-eq v2, v15, :cond_1f

    move/from16 v2, v31

    if-eqz v2, :cond_1e

    if-eqz v6, :cond_1d

    goto :goto_19

    .line 1833
    :cond_1d
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    iget v15, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    move/from16 v29, v3

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move/from16 p3, v4

    iget v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    move-object/from16 v30, v5

    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v34, v11

    move v11, v1

    move/from16 v1, v31

    move/from16 v31, v33

    move-object/from16 v33, v13

    move v13, v2

    move v2, v15

    move/from16 v15, v29

    move/from16 v14, p3

    move-object/from16 v36, v30

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_1e
    :goto_19
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move/from16 v31, v33

    move v11, v1

    move-object/from16 v33, v13

    move v13, v2

    const/4 v1, -0x1

    .line 1826
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    iget v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    iget-object v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_1a
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1f
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move v11, v1

    move/from16 v37, v33

    move-object/from16 v33, v13

    move/from16 v13, v31

    move/from16 v31, v37

    :goto_1b
    if-ge v14, v9, :cond_20

    .line 1846
    invoke-direct {v8, v14, v13, v6, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readStackMapFrame(IZZLnet/bytebuddy/jar/asm/Context;)I

    move-result v4

    move-object/from16 v14, p1

    move v1, v11

    move v3, v15

    move/from16 v15, v28

    move-object/from16 v11, v34

    move-object/from16 v5, v36

    goto :goto_1c

    :cond_20
    move-object/from16 v14, p1

    move v1, v11

    move v3, v15

    move/from16 v15, v28

    move-object/from16 v11, v34

    move-object/from16 v5, v36

    const/4 v4, 0x0

    :goto_1c
    move/from16 v37, v31

    move/from16 v31, v13

    move-object/from16 v13, v33

    move/from16 v33, v37

    goto/16 :goto_17

    :cond_21
    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move/from16 v28, v15

    move v11, v1

    move v15, v3

    :goto_1d
    move/from16 v37, v33

    move-object/from16 v33, v13

    move/from16 v13, v31

    move/from16 v31, v37

    if-eqz v0, :cond_23

    .line 1855
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_22

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    .line 1856
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_22
    const/16 v29, 0x0

    goto :goto_1e

    :cond_23
    move/from16 v29, v0

    .line 1862
    :goto_1e
    aget-byte v0, v12, v15

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0xc8

    packed-switch v5, :pswitch_data_3

    .line 2258
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    add-int/lit8 v3, v15, 0x1

    .line 2103
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/2addr v1, v11

    aget-object v1, v7, v1

    move/from16 v30, v14

    move-object/from16 v14, p1

    .line 2102
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v3, v15, 0x5

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v13, v33

    const/4 v4, 0x1

    goto/16 :goto_24

    :pswitch_c
    move/from16 v30, v14

    move-object/from16 v14, p1

    const/16 v1, 0xda

    if-ge v5, v1, :cond_24

    add-int/lit8 v5, v5, -0x31

    goto :goto_1f

    :cond_24
    add-int/lit8 v5, v5, -0x14

    :goto_1f
    add-int/lit8 v3, v15, 0x1

    .line 2080
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v1, v11

    aget-object v1, v7, v1

    const/16 v2, 0xa7

    if-eq v5, v2, :cond_27

    const/16 v3, 0xa8

    if-ne v5, v3, :cond_25

    goto :goto_21

    :cond_25
    if-ge v5, v2, :cond_26

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    xor-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v2

    goto :goto_20

    :cond_26
    xor-int/lit8 v3, v5, 0x1

    :goto_20
    add-int/lit8 v2, v11, 0x3

    .line 2089
    invoke-direct {v8, v2, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    .line 2090
    invoke-virtual {v14, v3, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    .line 2091
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    const/4 v2, 0x1

    goto :goto_22

    :cond_27
    :goto_21
    add-int/lit8 v5, v5, 0x21

    .line 2083
    invoke-virtual {v14, v5, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    move/from16 v2, v29

    :goto_22
    add-int/lit8 v3, v15, 0x3

    move v4, v2

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    goto :goto_23

    :pswitch_d
    move/from16 v30, v14

    move-object/from16 v14, p1

    sub-int v5, v5, v17

    add-int/lit8 v3, v15, 0x1

    .line 2048
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    .line 2046
    invoke-virtual {v14, v5, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v3, v15, 0x5

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v4, v29

    :goto_23
    move-object/from16 v13, v33

    :goto_24
    const/16 v32, 0x84

    move/from16 v33, v9

    goto/16 :goto_31

    :pswitch_e
    move/from16 v30, v14

    move-object/from16 v14, p1

    add-int/lit8 v3, v15, 0x1

    move-object/from16 v4, v33

    .line 2254
    invoke-virtual {v8, v3, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v15, 0x3

    aget-byte v1, v12, v3

    and-int/lit16 v1, v1, 0xff

    .line 2253
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    add-int/lit8 v3, v15, 0x4

    move/from16 p3, v6

    move/from16 v33, v9

    :goto_25
    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    const/16 v32, 0x84

    move-object v13, v4

    goto/16 :goto_30

    :pswitch_f
    move/from16 v30, v14

    move-object/from16 v4, v33

    move-object/from16 v14, p1

    add-int/lit8 v3, v15, 0x1

    .line 2112
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x84

    if-ne v0, v3, :cond_28

    add-int/lit8 v0, v15, 0x2

    .line 2115
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v15, 0x4

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v1

    .line 2114
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v0, v15, 0x6

    goto :goto_26

    :cond_28
    add-int/lit8 v1, v15, 0x2

    .line 2118
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v0, v15, 0x4

    goto :goto_26

    :pswitch_10
    move/from16 v30, v14

    move-object/from16 v4, v33

    const/16 v3, 0x84

    move-object/from16 v14, p1

    add-int/lit8 v0, v15, 0x1

    .line 2244
    invoke-virtual {v8, v0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v0, v15, 0x3

    :goto_26
    move/from16 v32, v3

    move/from16 p3, v6

    move/from16 v33, v9

    move/from16 v35, v13

    move/from16 v1, v21

    move v3, v0

    move-object v13, v4

    move/from16 v0, v18

    goto/16 :goto_30

    :pswitch_11
    move/from16 v30, v14

    move-object/from16 v4, v33

    const/16 v3, 0x84

    move-object/from16 v14, p1

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v15, 0x1

    .line 2220
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v0, 0x2

    .line 2221
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 2222
    invoke-virtual {v8, v1, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 2223
    invoke-virtual {v8, v1, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v8, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    .line 2224
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget v0, v5, v0

    .line 2226
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v8, v5, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/jar/asm/Handle;

    add-int/lit8 v3, v0, 0x2

    .line 2228
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    move/from16 p3, v6

    new-array v6, v3, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x4

    move/from16 v33, v9

    const/4 v9, 0x0

    :goto_27
    if-ge v9, v3, :cond_29

    move/from16 v35, v3

    .line 2232
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v8, v3, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v9

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v35

    goto :goto_27

    .line 2235
    :cond_29
    invoke-virtual {v14, v2, v1, v5, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v3, v15, 0x5

    goto/16 :goto_25

    :pswitch_12
    move/from16 p3, v6

    move/from16 v30, v14

    move-object/from16 v4, v33

    move-object/from16 v14, p1

    move/from16 v33, v9

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, v15, 0x1

    .line 2199
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v0, 0x2

    .line 2200
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 2201
    invoke-virtual {v8, v0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    .line 2202
    invoke-virtual {v8, v1, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    .line 2203
    invoke-virtual {v8, v1, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xb6

    if-ge v5, v1, :cond_2a

    .line 2205
    invoke-virtual {v14, v5, v2, v3, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move/from16 v35, v13

    const/16 v32, 0x84

    move-object v13, v4

    goto :goto_29

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    .line 2207
    aget-byte v0, v12, v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2b

    const/4 v9, 0x1

    goto :goto_28

    :cond_2b
    const/4 v9, 0x0

    :goto_28
    move-object/from16 v0, p1

    move v1, v5

    const/16 v32, 0x84

    move/from16 v35, v13

    move-object v13, v4

    move-object v4, v6

    move v6, v5

    move v5, v9

    .line 2209
    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_29
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_2e

    add-int/lit8 v3, v15, 0x5

    goto/16 :goto_2f

    :pswitch_13
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    and-int/lit8 v0, v11, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v3, v15, v0

    .line 2144
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    add-int/lit8 v1, v3, 0x4

    .line 2145
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x8

    .line 2147
    new-array v2, v1, [I

    .line 2148
    new-array v4, v1, [Lnet/bytebuddy/jar/asm/Label;

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v1, :cond_2c

    .line 2150
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v6, v3, 0x4

    .line 2151
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v11

    aget-object v6, v7, v6

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 2154
    :cond_2c
    invoke-virtual {v14, v0, v2, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    goto/16 :goto_2f

    :pswitch_14
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    and-int/lit8 v0, v11, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v3, v15, v0

    .line 2127
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    add-int/lit8 v1, v3, 0x4

    .line 2128
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v2, v3, 0x8

    .line 2129
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v2

    add-int/lit8 v3, v3, 0xc

    sub-int v4, v2, v1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2131
    new-array v5, v4, [Lnet/bytebuddy/jar/asm/Label;

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v4, :cond_2d

    .line 2133
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v11

    aget-object v9, v7, v9

    aput-object v9, v5, v6

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 2136
    :cond_2d
    invoke-virtual {v14, v1, v2, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    goto/16 :goto_2f

    :pswitch_15
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2041
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    .line 2040
    invoke-virtual {v14, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    goto/16 :goto_2c

    :pswitch_16
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2248
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v15, 0x2

    aget-byte v1, v12, v3

    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    goto/16 :goto_2c

    :pswitch_17
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v5, v6, -0x3b

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x36

    and-int/lit8 v1, v5, 0x3

    .line 2019
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2e

    :pswitch_18
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v5, v6, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v5, 0x3

    .line 1995
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2e

    :pswitch_19
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2168
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v14, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2d

    :pswitch_1a
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2187
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_2c

    :pswitch_1b
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2181
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    .line 2182
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    .line 2181
    invoke-virtual {v14, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_2d

    :pswitch_1c
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2177
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v14, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_2e
    :goto_2c
    add-int/lit8 v3, v15, 0x3

    goto :goto_2f

    :pswitch_1d
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 2173
    aget-byte v0, v12, v3

    invoke-virtual {v14, v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_2d
    add-int/lit8 v3, v15, 0x2

    goto :goto_2f

    :pswitch_1e
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    .line 1971
    invoke-virtual {v14, v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    :goto_2e
    add-int/lit8 v3, v15, 0x1

    :goto_2f
    move/from16 v0, v18

    move/from16 v1, v21

    :goto_30
    move/from16 v4, v29

    :goto_31
    move-object/from16 v9, v34

    if-eqz v34, :cond_30

    .line 2262
    array-length v2, v9

    if-ge v1, v2, :cond_30

    if-gt v0, v11, :cond_30

    if-ne v0, v11, :cond_2f

    .line 2267
    aget v0, v9, v1

    .line 2268
    invoke-direct {v8, v10, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 2271
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 2274
    iget v5, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v6, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    const/4 v15, 0x1

    .line 2275
    invoke-virtual {v14, v5, v6, v2, v15}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    .line 2274
    invoke-direct {v8, v2, v0, v15, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 2285
    invoke-direct {v8, v9, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v0

    move-object/from16 v34, v9

    goto :goto_31

    :cond_30
    move/from16 v2, v19

    move/from16 v5, v26

    move-object/from16 v15, v36

    :goto_32
    if-eqz v15, :cond_32

    .line 2290
    array-length v6, v15

    if-ge v5, v6, :cond_32

    if-gt v2, v11, :cond_32

    if-ne v2, v11, :cond_31

    .line 2295
    aget v2, v15, v5

    .line 2296
    invoke-direct {v8, v10, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v2

    .line 2299
    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, 0x2

    move/from16 v18, v0

    .line 2302
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    move/from16 v19, v1

    iget-object v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    move/from16 v21, v11

    const/4 v11, 0x0

    .line 2303
    invoke-virtual {v14, v0, v1, v6, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x1

    .line 2302
    invoke-direct {v8, v0, v2, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    goto :goto_33

    :cond_31
    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v21, v11

    const/4 v11, 0x0

    :goto_33
    add-int/lit8 v5, v5, 0x1

    .line 2313
    invoke-direct {v8, v15, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->getTypeAnnotationBytecodeOffset([II)I

    move-result v2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v11, v21

    goto :goto_32

    :cond_32
    move/from16 v18, v0

    move/from16 v19, v1

    const/4 v11, 0x0

    move/from16 v6, p3

    move/from16 v26, v5

    move-object v5, v15

    move/from16 v21, v19

    move/from16 v14, v22

    move/from16 v15, v28

    move/from16 v0, v30

    move/from16 v19, v2

    move/from16 v37, v35

    move-object/from16 v35, v7

    move v7, v11

    move-object v11, v9

    move/from16 v9, v33

    move/from16 v33, v31

    move/from16 v31, v37

    goto/16 :goto_14

    :cond_33
    move-object v9, v11

    move/from16 v22, v14

    move/from16 v28, v15

    move-object/from16 v14, p1

    move-object v15, v5

    move v11, v7

    move-object/from16 v7, v35

    .line 2317
    aget-object v0, v7, v20

    if-eqz v0, :cond_34

    .line 2318
    invoke-virtual {v14, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_34
    move/from16 v4, v24

    if-eqz v4, :cond_39

    .line 2322
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_39

    move/from16 v0, v25

    if-eqz v0, :cond_36

    .line 2326
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v6, v1, [I

    add-int/lit8 v25, v0, 0x2

    move/from16 v0, v25

    :goto_34
    if-lez v1, :cond_35

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v0, 0x6

    .line 2331
    aput v3, v6, v2

    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v0, 0x8

    .line 2332
    invoke-virtual {v8, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aput v3, v6, v2

    add-int/lit8 v1, v1, -0x3

    .line 2333
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_34

    :cond_35
    move-object v12, v6

    goto :goto_35

    :cond_36
    const/4 v12, 0x0

    .line 2337
    :goto_35
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v24, v4, 0x2

    move/from16 v1, v24

    :goto_36
    add-int/lit8 v16, v0, -0x1

    if-lez v0, :cond_39

    .line 2340
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x2

    .line 2341
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    .line 2342
    invoke-virtual {v8, v3, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x6

    .line 2343
    invoke-virtual {v8, v4, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x8

    .line 2344
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v17, v1, 0xa

    if-eqz v12, :cond_38

    move v1, v11

    .line 2348
    :goto_37
    array-length v5, v12

    if-ge v1, v5, :cond_38

    .line 2349
    aget v5, v12, v1

    if-ne v5, v0, :cond_37

    add-int/lit8 v5, v1, 0x1

    aget v5, v12, v5

    if-ne v5, v6, :cond_37

    add-int/lit8 v1, v1, 0x2

    .line 2350
    aget v1, v12, v1

    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_38

    :cond_37
    add-int/lit8 v1, v1, 0x3

    goto :goto_37

    :cond_38
    const/4 v5, 0x0

    .line 2355
    :goto_38
    aget-object v18, v7, v0

    add-int/2addr v0, v2

    aget-object v19, v7, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_36

    :cond_39
    const/16 v12, 0x41

    const/16 v7, 0x40

    if-eqz v9, :cond_3c

    .line 2362
    array-length v6, v9

    move v5, v11

    :goto_39
    if-ge v5, v6, :cond_3c

    aget v0, v9, v5

    .line 2363
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v1

    if-eq v1, v7, :cond_3b

    if-ne v1, v12, :cond_3a

    goto :goto_3a

    :cond_3a
    move/from16 v18, v5

    move/from16 v19, v6

    move v12, v7

    move/from16 v16, v11

    goto :goto_3b

    .line 2367
    :cond_3b
    :goto_3a
    invoke-direct {v8, v10, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 2369
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v4, v0, 0x2

    .line 2372
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v7, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v17, 0x1

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move v11, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object v5, v7

    move/from16 v19, v6

    move-object/from16 v6, v16

    const/16 v12, 0x40

    const/16 v16, 0x0

    move/from16 v7, v17

    .line 2373
    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x1

    .line 2372
    invoke-direct {v8, v0, v11, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    :goto_3b
    add-int/lit8 v5, v18, 0x1

    move v7, v12

    move/from16 v11, v16

    move/from16 v6, v19

    const/16 v12, 0x41

    goto :goto_39

    :cond_3c
    move v12, v7

    move/from16 v16, v11

    if-eqz v15, :cond_3f

    .line 2390
    array-length v9, v15

    move/from16 v11, v16

    :goto_3c
    if-ge v11, v9, :cond_3f

    aget v0, v15, v11

    .line 2391
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v7, 0x41

    if-eq v1, v12, :cond_3e

    if-ne v1, v7, :cond_3d

    goto :goto_3d

    :cond_3d
    move/from16 v17, v7

    const/4 v1, 0x1

    goto :goto_3e

    .line 2395
    :cond_3e
    :goto_3d
    invoke-direct {v8, v10, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 2397
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v0, 0x2

    .line 2400
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v12, v5

    move-object/from16 v5, v17

    move/from16 v17, v7

    move/from16 v7, v16

    .line 2401
    invoke-virtual/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x1

    .line 2400
    invoke-direct {v8, v0, v12, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    :goto_3e
    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x40

    goto :goto_3c

    :cond_3f
    move-object/from16 v0, v23

    :goto_3f
    if-eqz v0, :cond_40

    .line 2419
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v2, 0x0

    .line 2420
    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 2421
    invoke-virtual {v14, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    move-object v0, v1

    goto :goto_3f

    :cond_40
    move/from16 v0, v22

    move/from16 v1, v28

    .line 2426
    invoke-virtual {v14, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1d
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_10
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private readConstantDynamic(I[C)Lnet/bytebuddy/jar/asm/ConstantDynamic;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 3537
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3541
    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x2

    .line 3542
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    .line 3543
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 3544
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->bootstrapMethodOffsets:[I

    .line 3545
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v3, v1

    .line 3546
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/jar/asm/Handle;

    add-int/lit8 v4, v1, 0x2

    .line 3547
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 3550
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantDynamicValues:[Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 3553
    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-direct {v1, v2, v0, v3, v5}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    aput-object v1, p2, p1

    return-object v1
.end method

.method private readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I
    .locals 10

    const/16 v0, 0x5b

    const/16 v1, 0x65

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 2786
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x5

    return p2

    :cond_1
    add-int/2addr p2, v4

    .line 2792
    invoke-direct {p0, p3, p2, v3, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 2790
    invoke-direct {p0, p3, p2, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    :cond_3
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    add-int/lit8 v6, p2, 0x1

    .line 2797
    aget-byte v5, v5, p2

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v2, :cond_1b

    const/16 v2, 0x46

    if-eq v5, v2, :cond_1a

    const/16 v7, 0x53

    if-eq v5, v7, :cond_19

    const/16 v8, 0x63

    if-eq v5, v8, :cond_18

    if-eq v5, v1, :cond_17

    const/16 v1, 0x73

    if-eq v5, v1, :cond_16

    const/16 v1, 0x49

    if-eq v5, v1, :cond_1a

    const/16 v8, 0x4a

    if-eq v5, v8, :cond_1a

    const/16 v9, 0x5a

    if-eq v5, v9, :cond_14

    if-eq v5, v0, :cond_4

    packed-switch v5, :pswitch_data_0

    .line 2943
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 2805
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-char p4, p4

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    .line 2804
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 2800
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-byte p4, p4

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    .line 2799
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 p2, p2, 0x3

    goto/16 :goto_c

    .line 2854
    :cond_4
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, p2, 0x3

    if-nez v0, :cond_5

    .line 2858
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    add-int/2addr p2, v4

    .line 2857
    invoke-direct {p0, p1, p2, v3, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p1

    return p1

    :cond_5
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 2863
    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    if-eq v6, v2, :cond_12

    if-eq v6, v7, :cond_10

    if-eq v6, v9, :cond_d

    if-eq v6, v1, :cond_b

    if-eq v6, v8, :cond_9

    packed-switch v6, :pswitch_data_1

    .line 2935
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    add-int/2addr p2, v4

    .line 2934
    invoke-direct {p0, p1, p2, v3, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p2

    goto/16 :goto_c

    .line 2923
    :pswitch_2
    new-array p2, v0, [D

    :goto_1
    if-ge v3, v0, :cond_6

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2927
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    .line 2926
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    aput-wide v1, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2930
    :cond_6
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2889
    :pswitch_3
    new-array p2, v0, [C

    :goto_2
    if-ge v3, v0, :cond_7

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2891
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-char p4, p4

    aput-char p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2894
    :cond_7
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2865
    :pswitch_4
    new-array p2, v0, [B

    :goto_3
    if-ge v3, v0, :cond_8

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2867
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2870
    :cond_8
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    move p2, v5

    goto/16 :goto_c

    .line 2905
    :cond_9
    new-array p2, v0, [J

    :goto_5
    if-ge v3, v0, :cond_a

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2907
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    aput-wide v1, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2910
    :cond_a
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2897
    :cond_b
    new-array p2, v0, [I

    :goto_6
    if-ge v3, v0, :cond_c

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2899
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    aput p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2902
    :cond_c
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2873
    :cond_d
    new-array p2, v0, [Z

    move p4, v3

    :goto_7
    if-ge p4, v0, :cond_f

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v2, v5, 0x1

    .line 2875
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    if-eqz v1, :cond_e

    move v1, v4

    goto :goto_8

    :cond_e
    move v1, v3

    :goto_8
    aput-boolean v1, p2, p4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    .line 2878
    :cond_f
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2881
    :cond_10
    new-array p2, v0, [S

    :goto_9
    if-ge v3, v0, :cond_11

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2883
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-short p4, p4

    aput-short p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2886
    :cond_11
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 2913
    :cond_12
    new-array p2, v0, [F

    :goto_a
    if-ge v3, v0, :cond_13

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v1, v5, 0x1

    .line 2917
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget p4, p4, v1

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    .line 2916
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    aput p4, p2, v3

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2920
    :cond_13
    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_14
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 2825
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    if-nez p4, :cond_15

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_15
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2823
    :goto_b
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2831
    :cond_16
    invoke-virtual {p0, v6, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2837
    :cond_17
    invoke-virtual {p0, v6, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x3

    .line 2838
    invoke-virtual {p0, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    .line 2835
    invoke-virtual {p1, p3, v0, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x5

    goto :goto_c

    .line 2842
    :cond_18
    invoke-virtual {p0, v6, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 2818
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p4, p4, v0

    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p4

    int-to-short p4, p4

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    .line 2817
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2813
    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p4

    .line 2812
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2848
    :cond_1b
    invoke-virtual {p0, v6, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    add-int/lit8 p2, p2, 0x3

    .line 2847
    invoke-direct {p0, p1, p2, v4, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p2

    :goto_c
    return p2

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I
    .locals 1

    .line 2747
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-eqz p3, :cond_0

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    .line 2752
    invoke-virtual {p0, p2, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x2

    .line 2754
    invoke-direct {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2760
    invoke-direct {p0, p1, p2, v0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 2764
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    :cond_2
    return p2
.end method

.method private readField(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    .line 826
    iget-object v10, v9, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 830
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 831
    invoke-virtual {v8, v2, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v0, 0x4

    .line 832
    invoke-virtual {v8, v2, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x6

    .line 853
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x8

    const/4 v15, 0x0

    const/4 v12, 0x0

    move v11, v1

    move v4, v12

    move v5, v4

    move v6, v5

    move v7, v6

    move-object v3, v15

    move-object/from16 v16, v3

    move-object/from16 v17, v16

    :goto_0
    add-int/lit8 v18, v2, -0x1

    if-lez v2, :cond_9

    .line 857
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v0, 0x2

    .line 858
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v19

    add-int/lit8 v1, v0, 0x6

    const-string v0, "ConstantValue"

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v17, v15

    goto :goto_1

    .line 864
    :cond_0
    invoke-virtual {v8, v0, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_1

    :cond_1
    const-string v0, "Signature"

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {v8, v1, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    :goto_1
    move/from16 v23, v1

    goto/16 :goto_3

    :cond_2
    const-string v0, "Deprecated"

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x20000

    or-int/2addr v0, v11

    :goto_2
    move v11, v0

    goto :goto_1

    :cond_3
    const-string v0, "Synthetic"

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit16 v0, v11, 0x1000

    goto :goto_2

    :cond_4
    const-string v0, "RuntimeVisibleAnnotations"

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, v1

    move/from16 v23, v7

    goto/16 :goto_3

    :cond_5
    const-string v0, "RuntimeVisibleTypeAnnotations"

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v5, v1

    move/from16 v23, v5

    goto :goto_3

    :cond_6
    const-string v0, "RuntimeInvisibleAnnotations"

    .line 875
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v6, v1

    move/from16 v23, v6

    goto :goto_3

    :cond_7
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    .line 877
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v4, v1

    move/from16 v23, v4

    goto :goto_3

    .line 880
    :cond_8
    iget-object v0, v9, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v23, v1

    move-object/from16 v1, v22

    move-object/from16 v24, v3

    move/from16 v3, v23

    move/from16 v25, v4

    move/from16 v4, v19

    move/from16 v26, v5

    move-object v5, v10

    move v9, v6

    move/from16 v6, v20

    move/from16 p3, v9

    move v9, v7

    move-object/from16 v7, v21

    .line 881
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v3

    move-object/from16 v1, v24

    .line 889
    iput-object v1, v3, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move/from16 v6, p3

    move v7, v9

    move/from16 v4, v25

    move/from16 v5, v26

    :goto_3
    add-int v0, v23, v19

    move-object/from16 v9, p2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_9
    move-object v1, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 p3, v6

    move v9, v7

    move v2, v11

    move-object/from16 v11, p1

    move v3, v12

    move v12, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 897
    invoke-virtual/range {v11 .. v16}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v4

    if-nez v4, :cond_a

    return v0

    :cond_a
    const/4 v5, 0x1

    if-eqz v9, :cond_b

    .line 904
    invoke-virtual {v8, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v9, 0x2

    :goto_4
    add-int/lit8 v9, v6, -0x1

    if-lez v6, :cond_b

    .line 908
    invoke-virtual {v8, v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x2

    .line 913
    invoke-virtual {v4, v6, v5}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v6

    .line 912
    invoke-direct {v8, v6, v7, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v7

    move v6, v9

    goto :goto_4

    :cond_b
    if-eqz p3, :cond_c

    move/from16 v12, p3

    .line 922
    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_5
    add-int/lit8 v9, v6, -0x1

    if-lez v6, :cond_c

    .line 926
    invoke-virtual {v8, v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x2

    .line 931
    invoke-virtual {v4, v6, v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v6

    .line 930
    invoke-direct {v8, v6, v7, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v7

    move v6, v9

    goto :goto_5

    :cond_c
    move/from16 v12, v26

    if-eqz v12, :cond_d

    .line 940
    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v12, 0x2

    :goto_6
    add-int/lit8 v9, v6, -0x1

    if-lez v6, :cond_d

    move-object/from16 v6, p2

    .line 944
    invoke-direct {v8, v6, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v7

    .line 946
    invoke-virtual {v8, v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v7, v7, 0x2

    .line 949
    iget v12, v6, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v13, v6, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 951
    invoke-virtual {v4, v12, v13, v11, v5}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v11

    .line 950
    invoke-direct {v8, v11, v7, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v7

    move v6, v9

    goto :goto_6

    :cond_d
    move-object/from16 v6, p2

    move/from16 v12, v25

    if-eqz v12, :cond_e

    .line 964
    invoke-virtual {v8, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v9, v12, 0x2

    :goto_7
    add-int/lit8 v11, v7, -0x1

    if-lez v7, :cond_e

    .line 968
    invoke-direct {v8, v6, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v7

    .line 970
    invoke-virtual {v8, v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v7, 0x2

    .line 973
    iget v12, v6, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v13, v6, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 975
    invoke-virtual {v4, v12, v13, v9, v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v9

    .line 974
    invoke-direct {v8, v9, v7, v5, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v9

    move v7, v11

    goto :goto_7

    :cond_e
    :goto_8
    move-object v3, v1

    if-eqz v3, :cond_f

    .line 989
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 990
    iput-object v2, v3, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 991
    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    goto :goto_8

    .line 996
    :cond_f
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    return v0
.end method

.method private readMethod(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 34

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v8, p3

    .line 1010
    iget-object v11, v10, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 1014
    invoke-virtual {v9, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    iput v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    add-int/lit8 v0, v8, 0x2

    .line 1015
    invoke-virtual {v9, v0, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    add-int/lit8 v12, v8, 0x4

    .line 1016
    invoke-virtual {v9, v12, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    add-int/lit8 v0, v8, 0x6

    .line 1051
    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v8, 0x8

    move v15, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    add-int/lit8 v22, v0, -0x1

    const/high16 v23, 0x20000

    if-lez v0, :cond_f

    .line 1055
    invoke-virtual {v9, v15, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v14, v15, 0x2

    .line 1056
    invoke-virtual {v9, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v14

    move/from16 v25, v7

    add-int/lit8 v7, v15, 0x6

    move/from16 v26, v1

    const-string v1, "Code"

    .line 1060
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move/from16 v21, v7

    move/from16 v24, v21

    :goto_1
    move/from16 v7, v25

    move/from16 v1, v26

    goto/16 :goto_6

    :cond_0
    move/from16 v27, v2

    goto :goto_3

    :cond_1
    const-string v1, "Exceptions"

    .line 1064
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1066
    invoke-virtual {v9, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    add-int/lit8 v15, v15, 0x8

    move/from16 v27, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 1069
    invoke-virtual {v9, v15, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v18, v1

    move/from16 v17, v7

    move/from16 v24, v17

    goto :goto_4

    :cond_3
    move/from16 v27, v2

    const-string v1, "Signature"

    .line 1072
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1073
    invoke-virtual {v9, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v24, v7

    move/from16 v1, v26

    move/from16 v2, v27

    move v7, v0

    goto/16 :goto_6

    :cond_4
    const-string v1, "Deprecated"

    .line 1074
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1075
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    or-int v0, v0, v23

    iput v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    :goto_3
    move/from16 v24, v7

    :goto_4
    move/from16 v7, v25

    move/from16 v1, v26

    :goto_5
    move/from16 v2, v27

    goto/16 :goto_6

    :cond_5
    const-string v1, "RuntimeVisibleAnnotations"

    .line 1076
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v7

    move/from16 v24, v4

    goto :goto_4

    :cond_6
    const-string v1, "RuntimeVisibleTypeAnnotations"

    .line 1078
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v7

    move/from16 v24, v2

    goto :goto_1

    :cond_7
    const-string v1, "AnnotationDefault"

    .line 1080
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v6, v7

    move/from16 v24, v6

    goto :goto_4

    :cond_8
    const-string v1, "Synthetic"

    .line 1082
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1084
    iget v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    move/from16 v24, v7

    move/from16 v7, v25

    move/from16 v1, v26

    move/from16 v2, v27

    const/16 v16, 0x1

    goto/16 :goto_6

    :cond_9
    const-string v1, "RuntimeInvisibleAnnotations"

    .line 1085
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v7

    move/from16 v24, v3

    goto :goto_4

    :cond_a
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    .line 1087
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v7

    move/from16 v24, v1

    move/from16 v7, v25

    goto :goto_5

    :cond_b
    const-string v1, "RuntimeVisibleParameterAnnotations"

    .line 1089
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v19, v7

    move/from16 v24, v19

    goto :goto_4

    :cond_c
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    .line 1091
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v20, v7

    move/from16 v24, v20

    goto :goto_4

    :cond_d
    const-string v1, "MethodParameters"

    .line 1093
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v5, v7

    move/from16 v24, v5

    goto/16 :goto_4

    .line 1096
    :cond_e
    iget-object v1, v10, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v15, -0x1

    const/16 v23, 0x0

    move-object v2, v0

    move-object/from16 v0, p0

    move/from16 v28, v26

    move/from16 v29, v27

    move/from16 v30, v3

    move v3, v7

    move/from16 v31, v4

    move v4, v14

    move/from16 v32, v5

    move-object v5, v11

    move/from16 v33, v6

    move v6, v15

    move/from16 v24, v7

    move/from16 v15, v25

    move-object/from16 v7, v23

    .line 1097
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    .line 1105
    iput-object v13, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move-object v13, v0

    move v7, v15

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    :goto_6
    add-int v15, v24, v14

    move/from16 v0, v22

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    .line 1112
    iget v2, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodName:Ljava/lang/String;

    iget-object v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodDescriptor:Ljava/lang/String;

    if-nez v7, :cond_10

    const/4 v5, 0x0

    goto :goto_7

    .line 1117
    :cond_10
    invoke-virtual {v9, v7, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_7
    move-object/from16 v1, p1

    move-object/from16 v6, v18

    .line 1113
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v14

    if-nez v14, :cond_11

    return v15

    .line 1127
    :cond_11
    instance-of v0, v14, Lnet/bytebuddy/jar/asm/MethodWriter;

    if-eqz v0, :cond_13

    .line 1128
    move-object v0, v14

    check-cast v0, Lnet/bytebuddy/jar/asm/MethodWriter;

    sub-int v3, v15, v8

    .line 1129
    iget v1, v10, Lnet/bytebuddy/jar/asm/Context;->currentMethodAccessFlags:I

    and-int v1, v1, v23

    if-eqz v1, :cond_12

    const/4 v5, 0x1

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    .line 1135
    :goto_8
    invoke-virtual {v9, v12}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v8, v17

    .line 1129
    invoke-virtual/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/MethodWriter;->canCopyMethodAttributes(Lnet/bytebuddy/jar/asm/ClassReader;IIZZIII)Z

    move-result v0

    if-eqz v0, :cond_13

    return v15

    :cond_13
    move/from16 v5, v32

    if-eqz v5, :cond_14

    .line 1144
    invoke-virtual {v9, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v5, v1

    :goto_9
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_14

    .line 1149
    invoke-virtual {v9, v5, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v5, 0x2

    .line 1150
    invoke-virtual {v9, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1148
    invoke-virtual {v14, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x4

    move v0, v1

    goto :goto_9

    :cond_14
    move/from16 v6, v33

    if-eqz v6, :cond_15

    .line 1157
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v1, 0x0

    .line 1158
    invoke-direct {v9, v0, v6, v1, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValue(Lnet/bytebuddy/jar/asm/AnnotationVisitor;ILjava/lang/String;[C)I

    if-eqz v0, :cond_15

    .line 1160
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    :cond_15
    move/from16 v4, v31

    if-eqz v4, :cond_16

    .line 1166
    invoke-virtual {v9, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_16

    .line 1170
    invoke-virtual {v9, v4, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x1

    .line 1175
    invoke-virtual {v14, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 1174
    invoke-direct {v9, v0, v4, v2, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v4

    move v0, v1

    goto :goto_a

    :cond_16
    move/from16 v3, v30

    if-eqz v3, :cond_17

    .line 1184
    invoke-virtual {v9, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_17

    .line 1188
    invoke-virtual {v9, v3, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x2

    const/4 v2, 0x0

    .line 1193
    invoke-virtual {v14, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v2, 0x1

    .line 1192
    invoke-direct {v9, v0, v3, v2, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v3

    move v0, v1

    goto :goto_b

    :cond_17
    move/from16 v2, v29

    if-eqz v2, :cond_18

    .line 1202
    invoke-virtual {v9, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x2

    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_18

    .line 1206
    invoke-direct {v9, v10, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 1208
    invoke-virtual {v9, v0, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 1211
    iget v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    const/4 v5, 0x1

    .line 1213
    invoke-virtual {v14, v3, v4, v2, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    .line 1212
    invoke-direct {v9, v2, v0, v5, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v2

    move v0, v1

    goto :goto_c

    :cond_18
    move/from16 v1, v28

    if-eqz v1, :cond_19

    .line 1226
    invoke-virtual {v9, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_19

    .line 1230
    invoke-direct {v9, v10, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 1232
    invoke-virtual {v9, v0, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 1235
    iget v3, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v10, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    const/4 v5, 0x0

    .line 1237
    invoke-virtual {v14, v3, v4, v1, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    const/4 v3, 0x1

    .line 1236
    invoke-direct {v9, v1, v0, v3, v11}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_d

    :cond_19
    const/4 v3, 0x1

    const/4 v5, 0x0

    move/from16 v0, v19

    if-eqz v0, :cond_1a

    .line 1250
    invoke-direct {v9, v14, v10, v0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V

    :cond_1a
    move/from16 v0, v20

    if-eqz v0, :cond_1b

    .line 1256
    invoke-direct {v9, v14, v10, v0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V

    :cond_1b
    :goto_e
    if-eqz v13, :cond_1c

    .line 1266
    iget-object v0, v13, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v1, 0x0

    .line 1267
    iput-object v1, v13, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 1268
    invoke-virtual {v14, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    move-object v13, v0

    goto :goto_e

    :cond_1c
    move/from16 v13, v21

    if-eqz v13, :cond_1d

    .line 1274
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1275
    invoke-direct {v9, v14, v10, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;I)V

    .line 1279
    :cond_1d
    invoke-virtual {v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    return v15
.end method

.method private readModuleAttributes(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;IILjava/lang/String;)V
    .locals 7

    .line 707
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 711
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p3, 0x2

    .line 712
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, p3, 0x4

    .line 713
    invoke-virtual {p0, v2, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p3, 0x6

    .line 715
    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lnet/bytebuddy/jar/asm/ModuleVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 722
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 727
    invoke-virtual {p0, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p5

    add-int/lit8 p4, p4, 0x2

    :goto_0
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_2

    .line 730
    invoke-virtual {p0, p4, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x2

    move p5, v0

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x8

    :goto_1
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_3

    .line 740
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v0, p3, 0x2

    .line 741
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    .line 742
    invoke-virtual {p0, v1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p3, p3, 0x6

    .line 744
    invoke-virtual {p1, p4, v0, v1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    move p4, p5

    goto :goto_1

    .line 748
    :cond_3
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_2
    add-int/lit8 p5, p4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p4, :cond_5

    .line 753
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v2, p3, 0x2

    .line 754
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    .line 755
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    if-eqz v3, :cond_4

    .line 759
    new-array v0, v3, [Ljava/lang/String;

    :goto_3
    if-ge v1, v3, :cond_4

    .line 761
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 765
    :cond_4
    invoke-virtual {p1, p4, v2, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    move p4, p5

    goto :goto_2

    .line 769
    :cond_5
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_4
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_8

    .line 773
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readPackage(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v2, p3, 0x2

    .line 774
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    .line 775
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 p3, p3, 0x6

    if-eqz v3, :cond_6

    .line 779
    new-array v4, v3, [Ljava/lang/String;

    move v5, v1

    :goto_5
    if-ge v5, v3, :cond_7

    .line 781
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readModule(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move-object v4, v0

    .line 785
    :cond_7
    invoke-virtual {p1, p4, v2, v4}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    move p4, p5

    goto :goto_4

    .line 789
    :cond_8
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_6
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_9

    .line 792
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2

    move p4, p5

    goto :goto_6

    .line 797
    :cond_9
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    add-int/lit8 p3, p3, 0x2

    :goto_7
    add-int/lit8 p5, p4, -0x1

    if-lez p4, :cond_b

    .line 801
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v0, p3, 0x2

    .line 802
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 p3, p3, 0x4

    .line 804
    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_8
    if-ge v3, v0, :cond_a

    .line 806
    invoke-virtual {p0, p3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 809
    :cond_a
    invoke-virtual {p1, p4, v2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    move p4, p5

    goto :goto_7

    .line 813
    :cond_b
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitEnd()V

    return-void
.end method

.method private readParameterAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .line 2705
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 2706
    invoke-virtual {p1, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 2707
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 2709
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 2713
    invoke-virtual {p0, v1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 2718
    invoke-virtual {p1, v0, v2, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v2

    const/4 v4, 0x1

    .line 2717
    invoke-direct {p0, v2, v1, v4, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readStackMapFrame(IZZLnet/bytebuddy/jar/asm/Context;)I
    .locals 11

    .line 3040
    iget-object v6, p4, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 3041
    iget-object v7, p4, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    const/16 v0, 0xff

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    .line 3045
    aget-byte p1, p2, p1

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 3048
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    move v1, p1

    move p1, v0

    :goto_0
    const/4 p2, 0x0

    .line 3051
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    const/4 v2, 0x3

    const/16 v3, 0x40

    const/4 v8, 0x1

    if-ge p1, v3, :cond_1

    .line 3054
    iput v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3055
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto/16 :goto_7

    :cond_1
    const/16 v3, 0x80

    const/4 v9, 0x4

    if-ge p1, v3, :cond_2

    add-int/lit8 p1, p1, -0x40

    .line 3058
    iget-object v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    .line 3059
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v1

    .line 3061
    iput v9, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3062
    iput v8, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto/16 :goto_7

    :cond_2
    const/16 v3, 0xf7

    if-lt p1, v3, :cond_b

    .line 3064
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    add-int/lit8 v4, v1, 0x2

    if-ne p1, v3, :cond_4

    .line 3067
    iget-object v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v4

    move-object v4, v6

    move-object v5, v7

    .line 3068
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v1

    .line 3070
    iput v9, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3071
    iput v8, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    :cond_3
    :goto_1
    move p1, v10

    goto/16 :goto_7

    :cond_4
    const/16 v3, 0xf8

    const/4 v9, 0x2

    const/16 v5, 0xfb

    if-lt p1, v3, :cond_5

    if-ge p1, v5, :cond_5

    .line 3073
    iput v9, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    rsub-int p1, p1, 0xfb

    .line 3074
    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3075
    iget p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget p3, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    sub-int/2addr p1, p3

    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3076
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto :goto_2

    :cond_5
    if-ne p1, v5, :cond_6

    .line 3078
    iput v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3079
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    :goto_2
    move v1, v4

    goto :goto_1

    :cond_6
    if-ge p1, v0, :cond_9

    if-eqz p3, :cond_7

    .line 3081
    iget p3, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    goto :goto_3

    :cond_7
    move p3, p2

    :goto_3
    add-int/lit16 p1, p1, -0xfb

    move v3, p3

    move v1, v4

    move p3, p1

    :goto_4
    if-lez p3, :cond_8

    .line 3083
    iget-object v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    .line 3084
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v1

    add-int/lit8 p3, p3, -0x1

    move v3, v9

    goto :goto_4

    .line 3087
    :cond_8
    iput v8, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3088
    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3089
    iget p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    iget p3, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    add-int/2addr p1, p3

    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    .line 3090
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    goto :goto_1

    .line 3092
    :cond_9
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/lit8 v1, v1, 0x4

    .line 3094
    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameType:I

    .line 3095
    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCountDelta:I

    .line 3096
    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalCount:I

    move p3, p2

    :goto_5
    if-ge p3, p1, :cond_a

    .line 3098
    iget-object v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameLocalTypes:[Ljava/lang/Object;

    move-object v0, p0

    move v3, p3

    move-object v4, v6

    move-object v5, v7

    .line 3099
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 3102
    :cond_a
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    add-int/2addr v1, v9

    .line 3104
    iput p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackCount:I

    :goto_6
    if-ge p2, p1, :cond_3

    .line 3106
    iget-object v2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameStackTypes:[Ljava/lang/Object;

    move-object v0, p0

    move v3, p2

    move-object v4, v6

    move-object v5, v7

    .line 3107
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I

    move-result v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 3114
    :goto_7
    iget p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    add-int/2addr p1, v8

    add-int/2addr p2, p1

    iput p2, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    .line 3115
    iget p1, p4, Lnet/bytebuddy/jar/asm/Context;->currentFrameOffset:I

    invoke-direct {p0, p1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    return v1

    .line 3112
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static readStream(Ljava/io/InputStream;Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 303
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 306
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 307
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 315
    :cond_2
    throw v0

    .line 300
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readStringish(I[C)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3481
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I
    .locals 9

    .line 2619
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/high16 v3, -0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 2677
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    :pswitch_1
    and-int/2addr v0, v3

    goto :goto_1

    :pswitch_2
    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x1

    .line 2636
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 2638
    new-array v3, v1, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    .line 2639
    new-array v3, v1, [Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    .line 2640
    new-array v3, v1, [I

    iput-object v3, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 2642
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    .line 2643
    invoke-virtual {p0, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 2644
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 p2, p2, 0x6

    .line 2646
    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeStarts:[Lnet/bytebuddy/jar/asm/Label;

    iget-object v8, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    .line 2647
    invoke-direct {p0, v4, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v8

    aput-object v8, v7, v3

    .line 2648
    iget-object v7, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeEnds:[Lnet/bytebuddy/jar/asm/Label;

    add-int/2addr v4, v5

    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    .line 2649
    invoke-direct {p0, v4, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    aput-object v4, v7, v3

    .line 2650
    iget-object v4, p1, Lnet/bytebuddy/jar/asm/Context;->currentLocalVariableAnnotationRangeIndices:[I

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_3
    and-int/2addr v0, v3

    add-int/2addr p2, v2

    goto :goto_2

    :pswitch_4
    and-int/lit16 v0, v0, -0x100

    :goto_1
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    :cond_0
    :pswitch_5
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    .line 2679
    :cond_1
    :goto_2
    iput v0, p1, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    .line 2681
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 2682
    :cond_2
    new-instance v1, Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    invoke-direct {v1, v3, p2}, Lnet/bytebuddy/jar/asm/TypePath;-><init>([BI)V

    :goto_3
    iput-object v1, p1, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    add-int/2addr p2, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readTypeAnnotations(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/jar/asm/Context;IZ)[I
    .locals 10

    .line 2498
    iget-object v0, p2, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 2501
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2505
    aput p3, v2, v3

    .line 2508
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0x17

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 2551
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 v6, p3, 0x1

    .line 2514
    invoke-virtual {p0, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 p3, p3, 0x3

    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_1

    .line 2517
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v8, p3, 0x2

    .line 2518
    invoke-virtual {p0, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    add-int/lit8 p3, p3, 0x6

    .line 2521
    iget-object v9, p2, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p0, v6, v9}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    add-int/2addr v6, v8

    .line 2522
    iget-object v8, p2, Lnet/bytebuddy/jar/asm/Context;->currentMethodLabels:[Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p0, v6, v8}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move v6, v7

    goto :goto_1

    :cond_0
    :pswitch_2
    add-int/lit8 p3, p3, 0x3

    .line 2555
    :cond_1
    :goto_2
    invoke-virtual {p0, p3}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v6

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v7, :cond_3

    if-nez v6, :cond_2

    goto :goto_3

    .line 2558
    :cond_2
    new-instance v8, Lnet/bytebuddy/jar/asm/TypePath;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    invoke-direct {v8, v5, p3}, Lnet/bytebuddy/jar/asm/TypePath;-><init>([BI)V

    :goto_3
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    add-int/2addr p3, v6

    .line 2561
    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p3, p3, 0x2

    and-int/lit16 v4, v4, -0x100

    .line 2566
    invoke-virtual {p1, v4, v8, v5, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v4

    .line 2565
    invoke-direct {p0, v4, p3, v9, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    goto :goto_4

    :cond_3
    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    add-int/2addr p3, v6

    .line 2579
    invoke-direct {p0, v8, p3, v9, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readUtf(II[C)Ljava/lang/String;
    .locals 7

    add-int/2addr p2, p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v3, p1, 0x1

    .line 3449
    aget-byte v4, v0, p1

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_0

    add-int/lit8 p1, v2, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-char v4, v4

    .line 3451
    aput-char v4, p3, v2

    move v2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 p1, p1, 0x2

    .line 3453
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, p1, 0x2

    .line 3456
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v4, v3

    add-int/lit8 p1, p1, 0x3

    aget-byte v3, v0, v6

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v4, v3

    int-to-char v3, v4

    aput-char v3, p3, v2

    :goto_1
    move v2, v5

    goto :goto_0

    .line 3463
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method private readVerificationTypeInfo(I[Ljava/lang/Object;I[C[Lnet/bytebuddy/jar/asm/Label;)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    add-int/lit8 v1, p1, 0x1

    .line 3140
    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 3172
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3168
    :pswitch_0
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p4

    invoke-direct {p0, p4, p5}, Lnet/bytebuddy/jar/asm/ClassReader;->createLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object p4

    aput-object p4, p2, p3

    goto :goto_0

    .line 3164
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    :goto_0
    add-int/lit8 v1, p1, 0x3

    goto :goto_1

    .line 3161
    :pswitch_2
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3158
    :pswitch_3
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3155
    :pswitch_4
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3152
    :pswitch_5
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3149
    :pswitch_6
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3146
    :pswitch_7
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 3143
    :pswitch_8
    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object p1, p2, p3

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    .line 391
    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lnet/bytebuddy/jar/asm/ClassVisitor;[Lnet/bytebuddy/jar/asm/Attribute;I)V
    .locals 39

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    .line 412
    new-instance v11, Lnet/bytebuddy/jar/asm/Context;

    invoke-direct {v11}, Lnet/bytebuddy/jar/asm/Context;-><init>()V

    move-object/from16 v12, p2

    .line 413
    iput-object v12, v11, Lnet/bytebuddy/jar/asm/Context;->attributePrototypes:[Lnet/bytebuddy/jar/asm/Attribute;

    .line 414
    iput v10, v11, Lnet/bytebuddy/jar/asm/Context;->parsingOptions:I

    iget v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    .line 415
    new-array v0, v0, [C

    iput-object v0, v11, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    .line 418
    iget-object v13, v11, Lnet/bytebuddy/jar/asm/Context;->charBuffer:[C

    iget v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    .line 420
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 421
    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x4

    .line 422
    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v0, 0x6

    .line 423
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    move v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 426
    invoke-virtual {v8, v5, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    .line 465
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v3, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_1
    if-lez v16, :cond_12

    .line 467
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v0, 0x2

    .line 468
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v0, v0, 0x6

    move-object/from16 v32, v1

    const-string v1, "SourceFile"

    .line 472
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move-object v2, v1

    :goto_2
    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v1, v32

    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_1
    const-string v1, "InnerClasses"

    .line 474
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v29, v0

    move/from16 v35, v29

    goto :goto_2

    :cond_2
    const-string v1, "EnclosingMethod"

    .line 476
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v22, v0

    move/from16 v35, v22

    goto :goto_2

    :cond_3
    const-string v1, "NestHost"

    .line 478
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move-object/from16 v21, v1

    goto :goto_2

    :cond_4
    const-string v1, "NestMembers"

    .line 480
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v27, v0

    move/from16 v35, v27

    goto :goto_2

    :cond_5
    const-string v1, "Signature"

    .line 482
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 483
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    :goto_4
    move/from16 v35, v0

    goto :goto_2

    :cond_6
    const-string v1, "RuntimeVisibleAnnotations"

    .line 484
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v23, v0

    move/from16 v35, v23

    goto :goto_2

    :cond_7
    const-string v1, "RuntimeVisibleTypeAnnotations"

    .line 486
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v25, v0

    move/from16 v35, v25

    goto :goto_2

    :cond_8
    const-string v1, "Deprecated"

    .line 488
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v1, 0x20000

    or-int/2addr v3, v1

    goto :goto_4

    :cond_9
    const-string v1, "Synthetic"

    .line 490
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v3, v3, 0x1000

    goto :goto_4

    :cond_a
    const-string v1, "SourceDebugExtension"

    .line 492
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 493
    new-array v1, v6, [C

    .line 494
    invoke-direct {v8, v0, v6, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    goto/16 :goto_3

    :cond_b
    const-string v1, "RuntimeInvisibleAnnotations"

    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v24, v0

    move/from16 v35, v24

    goto/16 :goto_2

    :cond_c
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    .line 497
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v26, v0

    move/from16 v35, v26

    goto/16 :goto_2

    :cond_d
    const-string v1, "Module"

    .line 499
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move/from16 v17, v0

    move/from16 v35, v17

    goto/16 :goto_2

    :cond_e
    const-string v1, "ModuleMainClass"

    .line 501
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 502
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    :cond_f
    const-string v1, "ModulePackages"

    .line 503
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v19, v0

    move/from16 v35, v19

    goto/16 :goto_2

    :cond_10
    const-string v1, "BootstrapMethods"

    .line 505
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v33, -0x1

    const/16 v34, 0x0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v36, v32

    move-object/from16 v1, p2

    move-object/from16 v37, v2

    move-object v2, v4

    move/from16 v32, v3

    move/from16 v3, v35

    move v4, v6

    move/from16 v38, v5

    move-object v5, v13

    move/from16 v30, v6

    const/4 v12, 0x0

    move/from16 v6, v33

    move-object/from16 v31, v7

    move-object/from16 v7, v34

    .line 508
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readAttribute([Lnet/bytebuddy/jar/asm/Attribute;Ljava/lang/String;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;

    move-result-object v0

    move-object/from16 v7, v28

    .line 516
    iput-object v7, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    move-object/from16 v28, v0

    move/from16 v3, v32

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    goto :goto_5

    :cond_11
    move/from16 v35, v0

    move-object/from16 v37, v2

    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v36, v32

    const/4 v12, 0x0

    move/from16 v32, v3

    move-object/from16 v1, v36

    :goto_5
    add-int v0, v35, v30

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v12, p2

    move-object/from16 v7, v31

    move/from16 v5, v38

    goto/16 :goto_1

    :cond_12
    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move/from16 v32, v3

    move/from16 v38, v5

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    const/4 v12, 0x0

    iget-object v0, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v6, 0x1

    .line 524
    aget v0, v0, v6

    add-int/lit8 v0, v0, -0x7

    .line 525
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v32

    move-object v3, v14

    move-object/from16 v4, v18

    move-object v5, v15

    move v14, v6

    move-object/from16 v6, v31

    .line 524
    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_14

    move-object/from16 v2, v37

    move-object/from16 v1, v36

    if-nez v2, :cond_13

    if-eqz v1, :cond_14

    .line 530
    :cond_13
    invoke-virtual {v9, v2, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v5, v20

    .line 535
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readModuleAttributes(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;IILjava/lang/String;)V

    :cond_15
    move-object/from16 v4, v21

    if-eqz v4, :cond_16

    .line 541
    invoke-virtual {v9, v4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    :cond_16
    move/from16 v6, v22

    if-eqz v6, :cond_19

    .line 546
    invoke-virtual {v8, v6, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, 0x2

    .line 547
    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-nez v1, :cond_17

    const/4 v4, 0x0

    goto :goto_6

    :cond_17
    iget-object v2, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 548
    aget v2, v2, v1

    invoke-virtual {v8, v2, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    :goto_6
    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_7

    :cond_18
    iget-object v2, v8, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 549
    aget v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 550
    :goto_7
    invoke-virtual {v9, v0, v4, v1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move/from16 v6, v23

    if-eqz v6, :cond_1a

    .line 555
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v23, v6, 0x2

    move/from16 v1, v23

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1a

    .line 559
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    .line 564
    invoke-virtual {v9, v0, v14}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 563
    invoke-direct {v8, v0, v1, v14, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_8

    :cond_1a
    move/from16 v6, v24

    if-eqz v6, :cond_1b

    .line 573
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v24, v6, 0x2

    move/from16 v1, v24

    :goto_9
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1b

    .line 577
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    .line 582
    invoke-virtual {v9, v0, v12}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    .line 581
    invoke-direct {v8, v0, v1, v14, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_9

    :cond_1b
    move/from16 v6, v25

    if-eqz v6, :cond_1c

    .line 591
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v25, v6, 0x2

    move/from16 v1, v25

    :goto_a
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1c

    .line 595
    invoke-direct {v8, v11, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 597
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 600
    iget v3, v11, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v11, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 602
    invoke-virtual {v9, v3, v4, v1, v14}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 601
    invoke-direct {v8, v1, v0, v14, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_a

    :cond_1c
    move/from16 v6, v26

    if-eqz v6, :cond_1d

    .line 615
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v26, v6, 0x2

    move/from16 v1, v26

    :goto_b
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1d

    .line 619
    invoke-direct {v8, v11, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readTypeAnnotationTarget(Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v0

    .line 621
    invoke-virtual {v8, v0, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 624
    iget v3, v11, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTarget:I

    iget-object v4, v11, Lnet/bytebuddy/jar/asm/Context;->currentTypeAnnotationTargetPath:Lnet/bytebuddy/jar/asm/TypePath;

    .line 626
    invoke-virtual {v9, v3, v4, v1, v12}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v1

    .line 625
    invoke-direct {v8, v1, v0, v14, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readElementValues(Lnet/bytebuddy/jar/asm/AnnotationVisitor;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_b

    :cond_1d
    :goto_c
    if-eqz v7, :cond_1e

    .line 640
    iget-object v0, v7, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v1, 0x0

    .line 641
    iput-object v1, v7, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 642
    invoke-virtual {v9, v7}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    move-object v7, v0

    goto :goto_c

    :cond_1e
    move/from16 v6, v27

    if-eqz v6, :cond_1f

    .line 648
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v27, v6, 0x2

    move/from16 v1, v27

    :goto_d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1f

    .line 651
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    move v0, v2

    goto :goto_d

    :cond_1f
    move/from16 v6, v29

    if-eqz v6, :cond_20

    .line 658
    invoke-virtual {v8, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v29, v6, 0x2

    move/from16 v1, v29

    :goto_e
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_20

    .line 662
    invoke-virtual {v8, v1, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x2

    .line 663
    invoke-virtual {v8, v3, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    .line 664
    invoke-virtual {v8, v4, v13}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x6

    .line 665
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 661
    invoke-virtual {v9, v0, v3, v4, v5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x8

    move v0, v2

    goto :goto_e

    :cond_20
    move/from16 v0, v38

    .line 671
    invoke-virtual {v8, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/lit8 v5, v0, 0x2

    :goto_f
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_21

    .line 674
    invoke-direct {v8, v9, v11, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readField(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v5

    move v1, v0

    goto :goto_f

    .line 676
    :cond_21
    invoke-virtual {v8, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_22

    .line 679
    invoke-direct {v8, v9, v11, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readMethod(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/jar/asm/Context;I)I

    move-result v5

    move v0, v1

    goto :goto_10

    .line 683
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public getAccess()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    .line 330
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    .line 341
    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getFirstAttributeOffset()I
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    .line 3189
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 3192
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x6

    .line 3199
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, v1, 0x2

    .line 3207
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 3212
    :cond_1
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x6

    .line 3215
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x8

    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v1, 0x2

    .line 3218
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 366
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 367
    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_0

    iget v3, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    .line 369
    new-array v3, v3, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 372
    invoke-virtual {p0, v0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3319
    aget p1, v0, p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3306
    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->maxStringLength:I

    .line 353
    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 3341
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 0

    .line 3495
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3571
    aget v0, v0, p1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    add-int/lit8 v2, v0, -0x1

    .line 3572
    aget-byte v1, v1, v2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 3600
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3598
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConstantDynamic(I[C)Lnet/bytebuddy/jar/asm/ConstantDynamic;

    move-result-object p1

    return-object p1

    .line 3586
    :pswitch_1
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    .line 3588
    :pswitch_2
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v1

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 3589
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    add-int/lit8 v3, p1, 0x2

    .line 3590
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v0, v0, v3

    .line 3591
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 3592
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x2

    .line 3593
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    sub-int/2addr p1, v2

    .line 3594
    aget-byte p1, v0, p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v5, p1

    .line 3596
    :goto_0
    new-instance p1, Lnet/bytebuddy/jar/asm/Handle;

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    .line 3584
    :pswitch_3
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3582
    :pswitch_4
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    .line 3580
    :pswitch_5
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 3578
    :pswitch_6
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 3576
    :pswitch_7
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 3574
    :pswitch_8
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 3377
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method protected readLabel(I[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    .line 2440
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2441
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2443
    :cond_0
    aget-object p1, p2, p1

    return-object p1
.end method

.method public readLong(I)J
    .locals 6

    .line 3391
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    .line 3392
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readModule(I[C)Ljava/lang/String;
    .locals 0

    .line 3509
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readPackage(I[C)Ljava/lang/String;
    .locals 0

    .line 3523
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readStringish(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readShort(I)S
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 3365
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 1

    .line 3408
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3412
    :cond_0
    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readUnsignedShort(I)I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    .line 3353
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method final readUtf(I[C)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ClassReader;->constantUtf8Values:[Ljava/lang/String;

    .line 3425
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/ClassReader;->cpInfoOffsets:[I

    .line 3429
    aget v1, v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 3431
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method
