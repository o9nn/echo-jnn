.class Lnet/bytebuddy/jar/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final APPEND_FRAME:I = 0xfc

.field private static final ARRAY_OF:I = 0x10000000

.field private static final BOOLEAN:I = 0x1000009

.field private static final BYTE:I = 0x100000a

.field private static final CHAR:I = 0x100000b

.field static final CHOP_FRAME:I = 0xf8

.field private static final CONSTANT_KIND:I = 0x1000000

.field private static final DIM_MASK:I = -0x10000000

.field private static final DIM_SHIFT:I = 0x1c

.field private static final DOUBLE:I = 0x1000003

.field private static final ELEMENT_OF:I = -0x10000000

.field private static final FLAGS_MASK:I = 0xf00000

.field private static final FLOAT:I = 0x1000002

.field static final FULL_FRAME:I = 0xff

.field private static final INTEGER:I = 0x1000001

.field private static final ITEM_ASM_BOOLEAN:I = 0x9

.field private static final ITEM_ASM_BYTE:I = 0xa

.field private static final ITEM_ASM_CHAR:I = 0xb

.field private static final ITEM_ASM_SHORT:I = 0xc

.field static final ITEM_DOUBLE:I = 0x3

.field static final ITEM_FLOAT:I = 0x2

.field static final ITEM_INTEGER:I = 0x1

.field static final ITEM_LONG:I = 0x4

.field static final ITEM_NULL:I = 0x5

.field static final ITEM_OBJECT:I = 0x7

.field static final ITEM_TOP:I = 0x0

.field static final ITEM_UNINITIALIZED:I = 0x8

.field static final ITEM_UNINITIALIZED_THIS:I = 0x6

.field private static final KIND_MASK:I = 0xf000000

.field private static final LOCAL_KIND:I = 0x4000000

.field private static final LONG:I = 0x1000004

.field private static final NULL:I = 0x1000005

.field private static final REFERENCE_KIND:I = 0x2000000

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7

.field private static final SHORT:I = 0x100000c

.field private static final STACK_KIND:I = 0x5000000

.field private static final TOP:I = 0x1000000

.field private static final TOP_IF_LONG_OR_DOUBLE_FLAG:I = 0x100000

.field private static final UNINITIALIZED_KIND:I = 0x3000000

.field private static final UNINITIALIZED_THIS:I = 0x1000006

.field private static final VALUE_MASK:I = 0xfffff


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field private inputLocals:[I

.field private inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackStart:S

.field private outputStackTop:S

.field owner:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method

.method private addInitializedType(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    .line 614
    array-length v0, v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 617
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    .line 618
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    .line 622
    aput p1, v0, v1

    return-void
.end method

.method static getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I
    .locals 1

    .line 274
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 275
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 p1, 0x1000000

    or-int/2addr p0, p1

    return p0

    .line 276
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 278
    invoke-static {p0, p1, v0}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 280
    :cond_1
    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    const-string v0, ""

    .line 281
    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result p0

    const/high16 p1, 0x3000000

    or-int/2addr p0, p1

    return p0
.end method

.method private static getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 309
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x1000002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_c

    const/high16 v5, 0x2000000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_b

    const v7, 0x1000001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_a

    const/16 v9, 0x56

    if-eq v2, v9, :cond_9

    const/16 v9, 0x49

    if-eq v2, v9, :cond_a

    const v10, 0x1000004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_8

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_a

    const v13, 0x1000003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    return v13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 329
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v8, :cond_5

    if-eq v14, v12, :cond_4

    if-eq v14, v9, :cond_3

    if-eq v14, v11, :cond_2

    packed-switch v14, :pswitch_data_1

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    move v3, v13

    goto :goto_1

    :pswitch_2
    const v3, 0x100000b

    goto :goto_1

    :pswitch_3
    const v3, 0x100000a

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    const v3, 0x1000009

    goto :goto_1

    :cond_5
    const v3, 0x100000c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 359
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_7
    :goto_1
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1c

    or-int/2addr v0, v3

    return v0

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_4
    return v7

    :cond_b
    add-int/lit8 v2, p2, 0x1

    .line 325
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I
    .locals 1

    const/high16 v0, 0x2000000

    .line 295
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I
    .locals 8

    const v0, 0x1000006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    const/high16 v2, 0x3000000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    .line 638
    aget v2, v2, v1

    const/high16 v3, -0x10000000

    and-int/2addr v3, v2

    const/high16 v4, 0xf000000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x4000000

    if-ne v4, v7, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 643
    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x5000000

    if-ne v4, v7, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 645
    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x2000000

    if-ne p2, v0, :cond_3

    .line 649
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    :cond_3
    and-int/2addr p2, v5

    .line 652
    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method private getLocal(I)I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/high16 v1, 0x4000000

    if-eqz v0, :cond_2

    .line 474
    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    .line 483
    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method private static merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z
    .locals 11

    .line 1263
    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    move p1, v3

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1277
    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, -0x10000000

    and-int v5, v0, v4

    const/high16 v6, 0x1000000

    const/high16 v7, 0xf000000

    const/high16 v8, 0x2000000

    if-nez v5, :cond_7

    and-int v9, v0, v7

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_e

    and-int p0, p1, v4

    if-nez p0, :cond_6

    and-int p0, p1, v7

    if-ne p0, v8, :cond_5

    goto :goto_0

    :cond_5
    move p1, v6

    :cond_6
    :goto_0
    move v6, p1

    goto :goto_3

    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    return v1

    :cond_8
    const/high16 v3, -0x1000000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_a

    and-int v3, v0, v7

    if-ne v3, v8, :cond_9

    and-int v3, p1, v4

    or-int/2addr v3, v8

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    .line 1294
    invoke-virtual {p0, p1, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addMergedType(II)I

    move-result p0

    or-int v6, v3, p0

    goto :goto_3

    :cond_9
    and-int/2addr p1, v4

    add-int/2addr p1, v4

    or-int/2addr p1, v8

    .line 1299
    invoke-virtual {p0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    :goto_2
    or-int v6, p1, p0

    goto :goto_3

    :cond_a
    and-int v3, p1, v4

    if-nez v3, :cond_b

    and-int v9, p1, v7

    if-ne v9, v8, :cond_e

    :cond_b
    if-eqz v3, :cond_c

    and-int/2addr p1, v7

    if-eq p1, v8, :cond_c

    add-int/2addr v3, v4

    :cond_c
    if-eqz v5, :cond_d

    and-int p1, v0, v7

    if-eq p1, v8, :cond_d

    add-int/2addr v5, v4

    .line 1315
    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    or-int/2addr p1, v8

    invoke-virtual {p0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_e
    :goto_3
    if-eq v6, v0, :cond_f

    .line 1330
    aput v6, p2, p3

    return v2

    :cond_f
    return v1
.end method

.method private pop()I
    .locals 2

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 560
    aget v0, v1, v0

    return v0

    :cond_0
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    neg-int v0, v0

    const/high16 v1, 0x5000000

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .locals 2

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    const/4 p1, 0x0

    iput-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    :goto_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    .line 591
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    .line 593
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    :goto_1
    return-void
.end method

.method private push(I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 520
    array-length v0, v0

    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 522
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    .line 523
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 527
    aput p1, v0, v1

    iget-short p1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    .line 531
    iget-short v0, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    .line 532
    iput-short p1, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    :cond_2
    return-void
.end method

.method private push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_0
    invoke-static {p1, p2, v0}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 546
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    const p2, 0x1000004

    if-eq p1, p2, :cond_1

    const p2, 0x1000003

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, 0x1000000

    .line 548
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    :cond_2
    return-void
.end method

.method static putAbstractType(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7

    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x7

    const/high16 v2, 0x2000000

    const/high16 v3, 0xf000000

    const v4, 0xfffff

    if-nez v0, :cond_3

    and-int v0, p1, v4

    and-int/2addr p1, v3

    const/high16 v3, 0x1000000

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const/high16 v1, 0x3000000

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    .line 1417
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget-wide v0, p0, Lnet/bytebuddy/jar/asm/Symbol;->data:J

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    .line 1420
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1413
    :cond_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    .line 1414
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    .line 1409
    :cond_2
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto/16 :goto_2

    .line 1424
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_4

    const/16 v0, 0x5b

    .line 1426
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v6

    goto :goto_0

    :cond_4
    and-int v0, p1, v3

    if-ne v0, v2, :cond_5

    const/16 v0, 0x4c

    .line 1430
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/2addr p1, v4

    .line 1431
    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3b

    .line 1432
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    and-int/2addr p1, v4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 1460
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p1, 0x53

    .line 1445
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x43

    .line 1442
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x42

    .line 1439
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x5a

    .line 1436
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 p1, 0x4a

    .line 1454
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 p1, 0x44

    .line 1457
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 p1, 0x46

    .line 1451
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 p1, 0x49

    .line 1448
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1464
    :goto_1
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    .line 1465
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p0

    iget p0, p0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setLocal(II)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 500
    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 502
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    .line 503
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 507
    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method final accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V
    .locals 13

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1355
    :goto_0
    array-length v5, v0

    const v6, 0x1000003

    const/4 v7, 0x2

    const v8, 0x1000004

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    .line 1356
    aget v5, v0, v2

    if-eq v5, v8, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v9

    :cond_1
    :goto_1
    add-int/2addr v2, v7

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    move v4, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    move v4, v1

    move v5, v4

    .line 1369
    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_6

    .line 1370
    aget v10, v2, v4

    if-eq v10, v8, :cond_5

    if-ne v10, v6, :cond_4

    goto :goto_3

    :cond_4
    move v10, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v7

    :goto_4
    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    .line 1375
    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v4, v3, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v4

    move v10, v1

    :goto_5
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    .line 1378
    aget v3, v0, v10

    if-eq v3, v8, :cond_8

    if-ne v3, v6, :cond_7

    goto :goto_6

    :cond_7
    move v12, v9

    goto :goto_7

    :cond_8
    :goto_6
    move v12, v7

    :goto_7
    add-int/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    .line 1380
    invoke-virtual {p1, v4, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitAbstractType(II)V

    move v3, v11

    move v4, v12

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    .line 1384
    aget v3, v2, v1

    if-eq v3, v8, :cond_b

    if-ne v3, v6, :cond_a

    goto :goto_9

    :cond_a
    move v5, v9

    goto :goto_a

    :cond_b
    :goto_9
    move v5, v7

    :goto_a
    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 1386
    invoke-virtual {p1, v4, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitAbstractType(II)V

    move v4, v5

    move v5, v0

    goto :goto_8

    .line 1388
    :cond_c
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    return-void
.end method

.method final copyFrom(Lnet/bytebuddy/jar/asm/Frame;)V
    .locals 1

    .line 248
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 249
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 v0, 0x0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    .line 251
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 252
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 253
    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 254
    iget v0, p1, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    .line 255
    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    return-void
.end method

.method execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v6, 0x1000002

    const/high16 v7, 0x2000000

    const v8, 0x1000001

    const v9, 0x1000003

    const v10, 0x1000004

    const/high16 v11, 0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v12, 0x5000000

    const/high16 v14, 0x4000000

    const/high16 v15, 0xf000000

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_2

    const/16 v12, 0x5b

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v5, 0x4

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 1098
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1094
    :pswitch_0
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1095
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1085
    :pswitch_1
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1086
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1087
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_0

    .line 1088
    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1090
    :cond_0
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 1076
    :pswitch_2
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1077
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1078
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_1

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    const/high16 v2, 0x12000000

    .line 1081
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 1045
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    packed-switch v2, :pswitch_data_5

    .line 1072
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_4
    const v1, 0x11000004

    .line 1069
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_5
    const v1, 0x11000001

    .line 1060
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_6
    const v1, 0x1100000c

    .line 1057
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_7
    const v1, 0x1100000a

    .line 1054
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_8
    const v1, 0x11000003

    .line 1066
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_9
    const v1, 0x11000002

    .line 1063
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_a
    const v1, 0x1100000b

    .line 1051
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_b
    const v1, 0x11000009

    .line 1048
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 1042
    :pswitch_c
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x3000000

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 1038
    :pswitch_d
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1039
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1028
    :pswitch_e
    iget-object v2, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_2

    .line 1030
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_2

    .line 1031
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_2

    .line 1032
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->addInitializedType(I)V

    .line 1035
    :cond_2
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1021
    :pswitch_f
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1022
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    goto/16 :goto_7

    .line 1017
    :pswitch_10
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1018
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1014
    :pswitch_11
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1011
    :pswitch_12
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1009
    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1004
    :pswitch_14
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1005
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_15
    const/4 v1, 0x2

    goto/16 :goto_5

    .line 998
    :pswitch_16
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 999
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_17
    const/4 v1, 0x2

    goto/16 :goto_3

    .line 991
    :pswitch_18
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 992
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 993
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 986
    :pswitch_19
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 987
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 981
    :pswitch_1a
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 982
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 983
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 977
    :pswitch_1b
    invoke-direct {v0, v2, v8}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    .line 972
    :pswitch_1c
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 973
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 974
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 965
    :pswitch_1d
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 966
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 967
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_1e
    const/4 v1, 0x2

    goto/16 :goto_4

    .line 945
    :pswitch_1f
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 946
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 947
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_20
    const/4 v1, 0x2

    goto/16 :goto_6

    .line 910
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 911
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 912
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 913
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 898
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 899
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 900
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    .line 901
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v4

    .line 902
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 903
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 904
    invoke-direct {v0, v4}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 905
    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 906
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 907
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 888
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 889
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 890
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    .line 891
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 892
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 893
    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 894
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 895
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 880
    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 881
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 882
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 883
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 884
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 885
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 871
    :pswitch_25
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 872
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 873
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v3

    .line 874
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 875
    invoke-direct {v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 876
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 877
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 864
    :pswitch_26
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 865
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v2

    .line 866
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 867
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 868
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 859
    :pswitch_27
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 860
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 861
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    :pswitch_28
    const/4 v1, 0x2

    .line 856
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    .line 843
    :pswitch_29
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    .line 824
    :pswitch_2a
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    .line 820
    :pswitch_2b
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto/16 :goto_7

    .line 798
    :pswitch_2c
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 800
    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    add-int/lit8 v1, v2, 0x1

    .line 801
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    .line 803
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_5

    if-ne v2, v9, :cond_3

    goto :goto_0

    :cond_3
    and-int v3, v2, v15

    if-eq v3, v14, :cond_4

    if-ne v3, v12, :cond_a

    :cond_4
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 810
    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    .line 805
    :cond_5
    :goto_0
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    .line 782
    :pswitch_2d
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    .line 783
    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    if-lez v2, :cond_a

    add-int/lit8 v1, v2, -0x1

    .line 785
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v2

    if-eq v2, v10, :cond_8

    if-ne v2, v9, :cond_6

    goto :goto_1

    :cond_6
    and-int v3, v2, v15

    if-eq v3, v14, :cond_7

    if-ne v3, v12, :cond_a

    :cond_7
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 792
    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    .line 787
    :cond_8
    :goto_1
    invoke-direct {v0, v1, v11}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto/16 :goto_7

    .line 775
    :pswitch_2e
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v1

    const v2, 0x1000005

    if-ne v1, v2, :cond_9

    goto :goto_2

    :cond_9
    const/high16 v2, -0x10000000

    add-int/2addr v1, v2

    .line 777
    :goto_2
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 770
    :goto_3
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 771
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 772
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 957
    :goto_4
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 958
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 764
    :goto_5
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 765
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 766
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 934
    :goto_6
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 935
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 760
    :pswitch_2f
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto/16 :goto_7

    .line 725
    :pswitch_30
    iget v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    .line 756
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 753
    :pswitch_31
    iget-object v1, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    .line 747
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    .line 750
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_34
    const-string v1, "java/lang/String"

    .line 744
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_35
    const-string v1, "java/lang/Class"

    .line 741
    invoke-virtual {v4, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 737
    :pswitch_36
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 738
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 730
    :pswitch_37
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 731
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 734
    :pswitch_38
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 727
    :pswitch_39
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 721
    :pswitch_3a
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 722
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 716
    :pswitch_3b
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 709
    :pswitch_3c
    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 710
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    .line 704
    :pswitch_3d
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    goto :goto_7

    :pswitch_3e
    const v1, 0x1000005

    .line 692
    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    :cond_a
    :goto_7
    :pswitch_3f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_17
        :pswitch_2e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_20
        :pswitch_1e
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_16
        :pswitch_29
        :pswitch_1
        :pswitch_16
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method final getInputStackSize()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 460
    array-length v0, v0

    return v0
.end method

.method final merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1125
    array-length v4, v4

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1126
    array-length v5, v5

    .line 1127
    iget-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    if-nez v6, :cond_0

    .line 1128
    new-array v6, v4, [I

    iput-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const/high16 v10, 0x5000000

    const/high16 v11, 0x4000000

    const/high16 v12, 0xf000000

    const/high16 v13, -0x10000000

    const v14, 0x1000003

    const v15, 0x1000004

    const/high16 v16, 0x100000

    const v17, 0xfffff

    if-ge v9, v4, :cond_8

    iget-object v8, v0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-eqz v8, :cond_6

    .line 1133
    array-length v7, v8

    if-ge v9, v7, :cond_6

    .line 1134
    aget v7, v8, v9

    if-nez v7, :cond_1

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1138
    aget v15, v7, v9

    goto :goto_3

    :cond_1
    and-int v8, v7, v13

    and-int/2addr v12, v7

    if-ne v12, v11, :cond_4

    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    and-int v11, v7, v17

    .line 1146
    aget v10, v10, v11

    add-int/2addr v8, v10

    and-int v7, v7, v16

    if-eqz v7, :cond_3

    if-eq v8, v15, :cond_2

    if-ne v8, v14, :cond_3

    :cond_2
    :goto_2
    const/high16 v15, 0x1000000

    goto :goto_3

    :cond_3
    move v15, v8

    goto :goto_3

    :cond_4
    if-ne v12, v10, :cond_5

    iget-object v10, v0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int v11, v7, v17

    sub-int v11, v5, v11

    .line 1155
    aget v10, v10, v11

    add-int/2addr v8, v10

    and-int v7, v7, v16

    if-eqz v7, :cond_3

    if-eq v8, v15, :cond_2

    if-ne v8, v14, :cond_3

    goto :goto_2

    :cond_5
    move v15, v7

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1167
    aget v15, v7, v9

    :goto_3
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v7, :cond_7

    .line 1173
    invoke-direct {v0, v1, v15}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v15

    .line 1175
    :cond_7
    iget-object v7, v2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {v1, v15, v7, v9}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    if-lez v3, :cond_b

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1185
    aget v7, v7, v5

    iget-object v8, v2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {v1, v7, v8, v5}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1187
    :cond_9
    iget-object v4, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v4, :cond_a

    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 1188
    iput-object v5, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    move v7, v4

    goto :goto_5

    :cond_a
    move v7, v6

    .line 1191
    :goto_5
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 v8, 0x0

    invoke-static {v1, v3, v2, v8}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v1

    or-int/2addr v1, v7

    return v1

    :cond_b
    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1198
    array-length v3, v3

    iget-short v7, v0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr v3, v7

    .line 1199
    iget-object v7, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v7, :cond_c

    iget-short v6, v0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/2addr v6, v3

    .line 1200
    new-array v6, v6, [I

    iput-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    move v7, v4

    goto :goto_6

    :cond_c
    move v7, v6

    :goto_6
    move v4, v8

    :goto_7
    if-ge v4, v3, :cond_e

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1207
    aget v6, v6, v4

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v9, :cond_d

    .line 1209
    invoke-direct {v0, v1, v6}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v6

    .line 1211
    :cond_d
    iget-object v9, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    invoke-static {v1, v6, v9, v4}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v6

    or-int/2addr v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-ge v8, v4, :cond_14

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 1217
    aget v4, v4, v8

    and-int v6, v4, v13

    and-int v9, v4, v12

    if-ne v9, v11, :cond_11

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    and-int v18, v4, v17

    .line 1221
    aget v9, v9, v18

    add-int/2addr v6, v9

    and-int v4, v4, v16

    if-eqz v4, :cond_10

    if-eq v6, v15, :cond_f

    if-ne v6, v14, :cond_10

    :cond_f
    :goto_9
    const/high16 v4, 0x1000000

    goto :goto_a

    :cond_10
    move v4, v6

    goto :goto_a

    :cond_11
    if-ne v9, v10, :cond_12

    iget-object v9, v0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int v18, v4, v17

    sub-int v18, v5, v18

    .line 1227
    aget v9, v9, v18

    add-int/2addr v6, v9

    and-int v4, v4, v16

    if-eqz v4, :cond_10

    if-eq v6, v15, :cond_f

    if-ne v6, v14, :cond_10

    goto :goto_9

    :cond_12
    :goto_a
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v6, :cond_13

    .line 1236
    invoke-direct {v0, v1, v4}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v4

    .line 1238
    :cond_13
    iget-object v6, v2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int v9, v3, v8

    .line 1239
    invoke-static {v1, v4, v6, v9}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v4

    or-int/2addr v7, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_14
    return v7
.end method

.method final setInputFrameFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/high16 v3, 0x1000000

    if-ge v1, p2, :cond_2

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v5, v2, 0x1

    .line 433
    aget-object v6, p3, v1

    invoke-static {p1, v6}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v2

    .line 434
    aget-object v4, p3, v1

    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v4, v6, :cond_1

    aget-object v4, p3, v1

    sget-object v6, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v2, v2, 0x2

    .line 435
    aput v3, v4, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 438
    array-length p3, p2

    if-ge v2, p3, :cond_3

    add-int/lit8 p3, v2, 0x1

    .line 439
    aput v3, p2, v2

    move v2, p3

    goto :goto_3

    :cond_3
    move p2, v0

    move p3, p2

    :goto_4
    if-ge p2, p4, :cond_6

    .line 443
    aget-object v1, p5, p2

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_4

    aget-object v1, p5, p2

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_5

    :cond_4
    add-int/lit8 p3, p3, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_6
    add-int/2addr p3, p4

    .line 447
    new-array p2, p3, [I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    move p2, v0

    move p3, p2

    :goto_5
    if-ge p2, p4, :cond_9

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 v2, p3, 0x1

    .line 450
    aget-object v4, p5, p2

    invoke-static {p1, v4}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, p3

    .line 451
    aget-object v1, p5, p2

    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v4, :cond_8

    aget-object v1, p5, p2

    sget-object v4, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v4, :cond_7

    goto :goto_6

    :cond_7
    move p3, v2

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 p3, p3, 0x2

    .line 452
    aput v3, v1, v2

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    return-void
.end method

.method final setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V
    .locals 8

    .line 390
    new-array v0, p4, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 396
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result p2

    const/high16 v3, 0x2000000

    or-int/2addr p2, v3

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x1000006

    .line 398
    aput p2, v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 401
    :goto_0
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p2

    array-length p3, p2

    move v0, v1

    :goto_1
    const/high16 v3, 0x1000000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    .line 403
    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v6, v2, 0x1

    .line 404
    aput v4, v5, v2

    const v7, 0x1000004

    if-eq v4, v7, :cond_3

    const v7, 0x1000003

    if-ne v4, v7, :cond_2

    goto :goto_2

    :cond_2
    move v2, v6

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 406
    aput v3, v5, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 p2, v2, 0x1

    .line 410
    aput v3, p1, v2

    move v2, p2

    goto :goto_4

    :cond_5
    return-void
.end method
