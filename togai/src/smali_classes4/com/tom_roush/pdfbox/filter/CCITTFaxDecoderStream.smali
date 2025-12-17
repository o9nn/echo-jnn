.class final Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;
.super Ljava/io/FilterInputStream;
.source "CCITTFaxDecoderStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;,
        Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;
    }
.end annotation


# static fields
.field static final BLACK_CODES:[[S

.field static final BLACK_RUN_LENGTHS:[[S

.field static final EOL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

.field static final FILL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

.field static final VALUE_EOL:I = -0x7d0

.field static final VALUE_FILL:I = -0x3e8

.field static final VALUE_HMODE:I = -0xfa0

.field static final VALUE_PASSMODE:I = -0xbb8

.field public static final WHITE_CODES:[[S

.field public static final WHITE_RUN_LENGTHS:[[S

.field static final blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

.field static final codeTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

.field static final eolOnlyTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

.field static final whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;


# instance fields
.field buffer:I

.field bufferPos:I

.field private changesCurrentRow:[I

.field private changesCurrentRowCount:I

.field private changesReferenceRow:[I

.field private changesReferenceRowCount:I

.field private final columns:I

.field private decodedLength:I

.field private decodedPos:I

.field private final decodedRow:[B

.field private lastChangingElement:I

.field private final optionByteAligned:Z

.field private final optionG32D:Z

.field private final optionG3Fill:Z

.field private final optionUncompressed:Z

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xc

    new-array v1, v0, [[S

    const/4 v2, 0x2

    new-array v3, v2, [S

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [S

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [S

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v5, [S

    const/4 v6, 0x3

    aput-short v6, v3, v4

    aput-object v3, v1, v6

    new-array v3, v2, [S

    fill-array-data v3, :array_3

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v6, [S

    fill-array-data v3, :array_4

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [S

    fill-array-data v3, :array_5

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v5, [S

    const/16 v10, 0x18

    aput-short v10, v3, v4

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v8, [S

    fill-array-data v3, :array_6

    const/16 v11, 0x8

    aput-object v3, v1, v11

    const/16 v3, 0xa

    new-array v12, v3, [S

    fill-array-data v12, :array_7

    const/16 v13, 0x9

    aput-object v12, v1, v13

    const/16 v12, 0x36

    new-array v14, v12, [S

    fill-array-data v14, :array_8

    aput-object v14, v1, v3

    const/16 v14, 0x14

    new-array v15, v14, [S

    fill-array-data v15, :array_9

    const/16 v16, 0xb

    aput-object v15, v1, v16

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    new-array v1, v0, [[S

    new-array v15, v2, [S

    fill-array-data v15, :array_a

    aput-object v15, v1, v4

    new-array v15, v2, [S

    fill-array-data v15, :array_b

    aput-object v15, v1, v5

    new-array v15, v2, [S

    fill-array-data v15, :array_c

    aput-object v15, v1, v2

    new-array v15, v5, [S

    aput-short v10, v15, v4

    aput-object v15, v1, v6

    new-array v15, v2, [S

    fill-array-data v15, :array_d

    aput-object v15, v1, v7

    new-array v15, v6, [S

    fill-array-data v15, :array_e

    aput-object v15, v1, v8

    new-array v15, v2, [S

    fill-array-data v15, :array_f

    aput-object v15, v1, v9

    new-array v15, v5, [S

    const/16 v17, 0xf

    aput-short v17, v15, v4

    aput-object v15, v1, v10

    new-array v15, v8, [S

    fill-array-data v15, :array_10

    aput-object v15, v1, v11

    new-array v15, v3, [S

    fill-array-data v15, :array_11

    aput-object v15, v1, v13

    new-array v12, v12, [S

    fill-array-data v12, :array_12

    aput-object v12, v1, v3

    new-array v12, v14, [S

    fill-array-data v12, :array_13

    aput-object v12, v1, v16

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_RUN_LENGTHS:[[S

    new-array v1, v13, [[S

    new-array v12, v9, [S

    fill-array-data v12, :array_14

    aput-object v12, v1, v4

    new-array v12, v9, [S

    fill-array-data v12, :array_15

    aput-object v12, v1, v5

    new-array v12, v13, [S

    fill-array-data v12, :array_16

    aput-object v12, v1, v2

    new-array v12, v0, [S

    fill-array-data v12, :array_17

    aput-object v12, v1, v6

    const/16 v12, 0x2a

    new-array v14, v12, [S

    fill-array-data v14, :array_18

    aput-object v14, v1, v7

    const/16 v14, 0x10

    new-array v15, v14, [S

    fill-array-data v15, :array_19

    aput-object v15, v1, v8

    new-array v15, v4, [S

    aput-object v15, v1, v9

    new-array v15, v6, [S

    fill-array-data v15, :array_1a

    aput-object v15, v1, v10

    new-array v15, v3, [S

    fill-array-data v15, :array_1b

    aput-object v15, v1, v11

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    new-array v1, v13, [[S

    new-array v15, v9, [S

    fill-array-data v15, :array_1c

    aput-object v15, v1, v4

    new-array v15, v9, [S

    fill-array-data v15, :array_1d

    aput-object v15, v1, v5

    new-array v13, v13, [S

    fill-array-data v13, :array_1e

    aput-object v13, v1, v2

    new-array v13, v0, [S

    fill-array-data v13, :array_1f

    aput-object v13, v1, v6

    new-array v12, v12, [S

    fill-array-data v12, :array_20

    aput-object v12, v1, v7

    new-array v12, v14, [S

    fill-array-data v12, :array_21

    aput-object v12, v1, v8

    new-array v8, v4, [S

    aput-object v8, v1, v9

    new-array v8, v6, [S

    fill-array-data v8, :array_22

    aput-object v8, v1, v10

    new-array v3, v3, [S

    fill-array-data v3, :array_23

    aput-object v3, v1, v11

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_RUN_LENGTHS:[[S

    .line 751
    new-instance v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->EOL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 752
    iput-boolean v5, v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    const/16 v8, -0x7d0

    .line 753
    iput v8, v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    .line 754
    new-instance v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    invoke-direct {v8, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->FILL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/16 v11, -0x3e8

    .line 755
    iput v11, v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    .line 756
    iput-object v8, v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->left:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 757
    iput-object v1, v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->right:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 759
    new-instance v11, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    invoke-direct {v11, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v11, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->eolOnlyTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 761
    :try_start_0
    invoke-virtual {v11, v0, v4, v8}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V

    .line 762
    invoke-virtual {v11, v0, v5, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 768
    new-instance v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    invoke-direct {v1, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    move v1, v4

    :goto_0
    :try_start_1
    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    .line 770
    array-length v8, v8

    if-ge v1, v8, :cond_1

    move v8, v4

    :goto_1
    sget-object v11, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    .line 771
    aget-object v11, v11, v1

    array-length v12, v11

    if-ge v8, v12, :cond_0

    sget-object v12, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    add-int/lit8 v13, v1, 0x2

    .line 772
    aget-short v11, v11, v8

    sget-object v14, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_RUN_LENGTHS:[[S

    aget-object v14, v14, v1

    aget-short v14, v14, v8

    invoke-virtual {v12, v13, v11, v14}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->FILL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 775
    invoke-virtual {v1, v0, v4, v8}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V

    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->EOL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 776
    invoke-virtual {v1, v0, v5, v8}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 782
    new-instance v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    invoke-direct {v1, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    move v1, v4

    :goto_2
    :try_start_2
    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    .line 784
    array-length v8, v8

    if-ge v1, v8, :cond_3

    move v8, v4

    :goto_3
    sget-object v11, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    .line 785
    aget-object v11, v11, v1

    array-length v12, v11

    if-ge v8, v12, :cond_2

    sget-object v12, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    add-int/lit8 v13, v1, 0x4

    .line 786
    aget-short v11, v11, v8

    sget-object v14, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_RUN_LENGTHS:[[S

    aget-object v14, v14, v1

    aget-short v14, v14, v8

    invoke-virtual {v12, v13, v11, v14}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->FILL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 790
    invoke-virtual {v1, v0, v4, v8}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V

    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->EOL:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 791
    invoke-virtual {v1, v0, v5, v8}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(IILcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 797
    new-instance v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    invoke-direct {v0, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;-><init>(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$1;)V

    sput-object v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->codeTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    const/16 v1, -0xbb8

    .line 799
    :try_start_3
    invoke-virtual {v0, v7, v5, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    const/16 v1, -0xfa0

    .line 800
    invoke-virtual {v0, v6, v5, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    .line 801
    invoke-virtual {v0, v5, v5, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    .line 802
    invoke-virtual {v0, v6, v6, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    .line 803
    invoke-virtual {v0, v9, v6, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    .line 804
    invoke-virtual {v0, v10, v6, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    const/4 v1, -0x1

    .line 805
    invoke-virtual {v0, v6, v2, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    const/4 v1, -0x2

    .line 806
    invoke-virtual {v0, v9, v2, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V

    const/4 v1, -0x3

    .line 807
    invoke-virtual {v0, v10, v2, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->fill(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 810
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    .line 794
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    .line 779
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    .line 765
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :array_0
    .array-data 2
        0x2s
        0x3s
    .end array-data

    :array_1
    .array-data 2
        0x2s
        0x3s
    .end array-data

    :array_2
    .array-data 2
        0x2s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x4s
        0x5s
    .end array-data

    :array_4
    .array-data 2
        0x4s
        0x5s
        0x7s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x4s
        0x7s
    .end array-data

    :array_6
    .array-data 2
        0x17s
        0x18s
        0x37s
        0x8s
        0xfs
    .end array-data

    nop

    :array_7
    .array-data 2
        0x17s
        0x18s
        0x28s
        0x37s
        0x67s
        0x68s
        0x6cs
        0x8s
        0xcs
        0xds
    .end array-data

    :array_8
    .array-data 2
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x24s
        0x27s
        0x28s
        0x2bs
        0x2cs
        0x33s
        0x34s
        0x35s
        0x37s
        0x38s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0xc8s
        0xc9s
        0xcas
        0xcbs
        0xccs
        0xcds
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd6s
        0xd7s
        0xdas
        0xdbs
    .end array-data

    :array_9
    .array-data 2
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x52s
        0x53s
        0x54s
        0x55s
        0x5as
        0x5bs
        0x64s
        0x65s
        0x6cs
        0x6ds
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
    .end array-data

    :array_a
    .array-data 2
        0x3s
        0x2s
    .end array-data

    :array_b
    .array-data 2
        0x1s
        0x4s
    .end array-data

    :array_c
    .array-data 2
        0x6s
        0x5s
    .end array-data

    :array_d
    .array-data 2
        0x9s
        0x8s
    .end array-data

    :array_e
    .array-data 2
        0xas
        0xbs
        0xcs
    .end array-data

    nop

    :array_f
    .array-data 2
        0xds
        0xes
    .end array-data

    :array_10
    .array-data 2
        0x10s
        0x11s
        0x0s
        0x12s
        0x40s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x18s
        0x19s
        0x17s
        0x16s
        0x13s
        0x14s
        0x15s
        0x700s
        0x740s
        0x780s
    .end array-data

    :array_12
    .array-data 2
        0x7c0s
        0x800s
        0x840s
        0x880s
        0x8c0s
        0x900s
        0x940s
        0x980s
        0x9c0s
        0xa00s
        0x34s
        0x37s
        0x38s
        0x3bs
        0x3cs
        0x140s
        0x180s
        0x1c0s
        0x35s
        0x36s
        0x32s
        0x33s
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x39s
        0x3as
        0x3ds
        0x100s
        0x30s
        0x31s
        0x3es
        0x3fs
        0x1es
        0x1fs
        0x20s
        0x21s
        0x28s
        0x29s
        0x80s
        0xc0s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x2as
        0x2bs
    .end array-data

    :array_13
    .array-data 2
        0x280s
        0x2c0s
        0x300s
        0x340s
        0x500s
        0x540s
        0x580s
        0x5c0s
        0x600s
        0x640s
        0x680s
        0x6c0s
        0x200s
        0x240s
        0x380s
        0x3c0s
        0x400s
        0x440s
        0x480s
        0x4c0s
    .end array-data

    :array_14
    .array-data 2
        0x7s
        0x8s
        0xbs
        0xcs
        0xes
        0xfs
    .end array-data

    :array_15
    .array-data 2
        0x12s
        0x13s
        0x14s
        0x1bs
        0x7s
        0x8s
    .end array-data

    :array_16
    .array-data 2
        0x17s
        0x18s
        0x2as
        0x2bs
        0x3s
        0x34s
        0x35s
        0x7s
        0x8s
    .end array-data

    nop

    :array_17
    .array-data 2
        0x13s
        0x17s
        0x18s
        0x24s
        0x27s
        0x28s
        0x2bs
        0x3s
        0x37s
        0x4s
        0x8s
        0xcs
    .end array-data

    :array_18
    .array-data 2
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x1as
        0x1bs
        0x2s
        0x24s
        0x25s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x3s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x4s
        0x4as
        0x4bs
        0x5s
        0x52s
        0x53s
        0x54s
        0x55s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x64s
        0x65s
        0x67s
        0x68s
        0xas
        0xbs
    .end array-data

    :array_19
    .array-data 2
        0x98s
        0x99s
        0x9as
        0x9bs
        0xccs
        0xcds
        0xd2s
        0xd3s
        0xd4s
        0xd5s
        0xd6s
        0xd7s
        0xd8s
        0xd9s
        0xdas
        0xdbs
    .end array-data

    :array_1a
    .array-data 2
        0x8s
        0xcs
        0xds
    .end array-data

    nop

    :array_1b
    .array-data 2
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x1cs
        0x1ds
        0x1es
        0x1fs
    .end array-data

    :array_1c
    .array-data 2
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
    .end array-data

    :array_1d
    .array-data 2
        0x80s
        0x8s
        0x9s
        0x40s
        0xas
        0xbs
    .end array-data

    :array_1e
    .array-data 2
        0xc0s
        0x680s
        0x10s
        0x11s
        0xds
        0xes
        0xfs
        0x1s
        0xcs
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x1as
        0x15s
        0x1cs
        0x1bs
        0x12s
        0x18s
        0x19s
        0x16s
        0x100s
        0x17s
        0x14s
        0x13s
    .end array-data

    :array_20
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x1fs
        0x20s
        0x1ds
        0x35s
        0x36s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x1es
        0x3ds
        0x3es
        0x3fs
        0x0s
        0x140s
        0x180s
        0x2ds
        0x3bs
        0x3cs
        0x2es
        0x31s
        0x32s
        0x33s
        0x34s
        0x37s
        0x38s
        0x39s
        0x3as
        0x1c0s
        0x200s
        0x280s
        0x240s
        0x2fs
        0x30s
    .end array-data

    :array_21
    .array-data 2
        0x5c0s
        0x600s
        0x640s
        0x6c0s
        0x2c0s
        0x300s
        0x340s
        0x380s
        0x3c0s
        0x400s
        0x440s
        0x480s
        0x4c0s
        0x500s
        0x540s
        0x580s
    .end array-data

    :array_22
    .array-data 2
        0x700s
        0x740s
        0x780s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x7c0s
        0x800s
        0x840s
        0x880s
        0x8c0s
        0x900s
        0x940s
        0x980s
        0x9c0s
        0xa00s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;IIJZ)V
    .locals 5

    .line 91
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->lastChangingElement:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->buffer:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    iput p3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->type:I

    add-int/lit8 v0, p2, 0x7

    .line 97
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    const/4 v0, 0x2

    add-int/2addr p2, v0

    .line 98
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    .line 99
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    if-eq p3, v0, :cond_6

    const/4 p2, 0x3

    const-wide/16 v0, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eq p3, p2, :cond_2

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    iput-boolean p6, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG32D:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG3Fill:Z

    and-long p2, p4, v0

    cmp-long p2, p2, v3

    if-eqz p2, :cond_0

    move p1, v2

    :cond_0
    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionUncompressed:Z

    goto :goto_2

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Illegal parameter: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-boolean p6, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    const-wide/16 p2, 0x1

    and-long/2addr p2, p4

    cmp-long p2, p2, v3

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG32D:Z

    const-wide/16 p2, 0x4

    and-long/2addr p2, p4

    cmp-long p2, p2, v3

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG3Fill:Z

    and-long p2, p4, v0

    cmp-long p2, p2, v3

    if-eqz p2, :cond_5

    move p1, v2

    :cond_5
    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionUncompressed:Z

    goto :goto_2

    :cond_6
    iput-boolean p6, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG32D:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG3Fill:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionUncompressed:Z

    :goto_2
    return-void
.end method

.method private decode1D()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 161
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRun(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;)I

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 164
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRun(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;)I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iget v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    .line 168
    aput v0, v2, v3

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    if-lt v0, v2, :cond_0

    return-void
.end method

.method private decode2D()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRowCount:I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    iput-object v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    if-ge v0, v3, :cond_9

    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->codeTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 187
    iget-object v3, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->readBit()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v4, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    if-eqz v4, :cond_0

    .line 196
    iget v4, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    const/16 v5, -0xfa0

    if-eq v4, v5, :cond_6

    const/16 v5, -0xbb8

    if-eq v4, v5, :cond_4

    .line 222
    invoke-direct {p0, v0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->getNextChangingElement(IZ)I

    move-result v0

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRowCount:I

    if-ge v0, v4, :cond_3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    .line 228
    aget v0, v4, v0

    iget v3, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    .line 225
    iget v3, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    .line 231
    aput v0, v3, v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->getNextChangingElement(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRowCount:I

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    .line 215
    aget v0, v3, v0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 199
    :goto_3
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRun(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    .line 201
    aput v0, v3, v4

    if-eqz v2, :cond_8

    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->blackRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->whiteRunTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 203
    :goto_4
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRun(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    .line 205
    aput v0, v3, v4

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private decodeRow()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRowType6()V

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRowType4()V

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRowType2()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->lastChangingElement:I

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRowCount:I

    const/4 v6, 0x7

    if-gt v2, v5, :cond_c

    iget v7, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    if-eq v2, v5, :cond_3

    iget-object v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesCurrentRow:[I

    .line 330
    aget v5, v5, v2

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    if-le v5, v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v5

    .line 337
    :goto_3
    div-int/lit8 v5, v3, 0x8

    .line 339
    :goto_4
    rem-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_6

    sub-int v9, v7, v3

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    .line 340
    aget-byte v10, v9, v5

    if-eqz v4, :cond_5

    move v8, v0

    goto :goto_5

    :cond_5
    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v1, v8

    :goto_5
    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v9, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    if-nez v8, :cond_8

    .line 345
    div-int/lit8 v5, v3, 0x8

    if-eqz v4, :cond_7

    move v8, v0

    goto :goto_6

    :cond_7
    const/16 v8, 0xff

    :goto_6
    int-to-byte v8, v8

    :goto_7
    sub-int v9, v7, v3

    if-le v9, v6, :cond_8

    iget-object v9, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    .line 349
    aput-byte v8, v9, v5

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    sub-int v6, v7, v3

    if-lez v6, :cond_b

    .line 356
    rem-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_9

    iget-object v8, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    .line 357
    aput-byte v0, v8, v5

    :cond_9
    iget-object v8, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    .line 360
    aget-byte v9, v8, v5

    if-eqz v4, :cond_a

    move v6, v0

    goto :goto_9

    :cond_a
    rsub-int/lit8 v6, v6, 0x7

    shl-int v6, v1, v6

    :goto_9
    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    if-ne v3, v0, :cond_d

    add-int/2addr v3, v6

    .line 371
    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    return-void

    .line 368
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sum of run-lengths does not equal scan line width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeRowType2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->resetBuffer()V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decode1D()V

    return-void
.end method

.method private decodeRowType4()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->resetBuffer()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->eolOnlyTree:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;

    .line 277
    iget-object v0, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->readBit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 286
    :cond_2
    iget-boolean v1, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionG32D:Z

    if-eqz v0, :cond_4

    .line 292
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->readBit()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decode2D()V

    goto :goto_2

    .line 293
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decode1D()V

    :goto_2
    return-void
.end method

.method private decodeRowType6()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->optionByteAligned:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->resetBuffer()V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decode2D()V

    return-void
.end method

.method private decodeRun(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    const/4 v1, 0x0

    .line 380
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->readBit()Z

    move-result v2

    .line 381
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->walk(Z)Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 387
    iget-boolean v2, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->isLeaf:Z

    if-eqz v2, :cond_0

    .line 388
    iget v2, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    add-int/2addr v1, v2

    .line 389
    iget v2, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 390
    iget-object v0, p1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Tree;->root:Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;

    goto :goto_0

    .line 392
    :cond_1
    iget p1, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream$Node;->value:I

    if-ltz p1, :cond_2

    return v1

    :cond_2
    iget p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->columns:I

    return p1

    .line 384
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unknown code in Huffman RLE stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodeRow()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    if-nez v2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    :goto_0
    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    goto :goto_1

    .line 140
    :cond_0
    throw v1

    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed CCITT stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private getNextChangingElement(IZ)I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->lastChangingElement:I

    and-int/lit8 v0, v0, -0x2

    xor-int/lit8 p2, p2, 0x1

    add-int/2addr v0, p2

    const/4 p2, 0x2

    if-le v0, p2, :cond_0

    add-int/lit8 v0, v0, -0x2

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    :goto_0
    iget p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRowCount:I

    if-ge v0, p2, :cond_3

    iget-object p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->changesReferenceRow:[I

    .line 255
    aget p2, p2, v0

    if-ge p1, p2, :cond_2

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->lastChangingElement:I

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private readBit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->buffer:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->buffer:I

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    shl-int/2addr v0, v3

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->buffer:I

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    return v1

    .line 414
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of Huffman RLE stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetBuffer()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->bufferPos:I

    return-void
.end method


# virtual methods
.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    if-lt v2, v0, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->fetch()V

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    .line 441
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    add-int v0, p2, p3

    .line 447
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return p3

    :cond_0
    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    if-lt v2, v0, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->fetch()V

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    if-gez v0, :cond_1

    add-int v0, p2, p3

    .line 455
    invoke-static {p1, p2, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return p3

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    sub-int/2addr v0, v1

    .line 460
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedRow:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    .line 461
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    return p3
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 494
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    iget v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    if-lt v3, v0, :cond_1

    .line 474
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->fetch()V

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedLength:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 481
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->decodedPos:I

    int-to-long p1, p1

    return-wide p1
.end method
