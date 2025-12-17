.class abstract Lorg/bouncycastle/pqc/crypto/sike/Internal;
.super Ljava/lang/Object;


# static fields
.field protected static final LOG2RADIX:I = 0x6

.field protected static final RADIX:I = 0x40


# instance fields
.field protected ALICE:I

.field protected A_basis_zero:[J

.field protected A_gen:[J

.field protected Alice_order:[J

.field protected BOB:I

.field protected B_basis_zero:[J

.field protected B_gen:[J

.field protected B_gen_3_tors:[J

.field protected Bob_order:[J

.field protected COMPRESS:Z

.field protected COMPRESSED_CHUNK_CT:I

.field protected CRYPTO_BYTES:I

.field protected CRYPTO_CIPHERTEXTBYTES:I

.field protected CRYPTO_PUBLICKEYBYTES:I

.field protected CRYPTO_SECRETKEYBYTES:I

.field protected DLEN_2:I

.field protected DLEN_3:I

.field protected ELL2_EMODW:I

.field protected ELL2_W:I

.field protected ELL3_EMODW:I

.field protected ELL3_W:I

.field protected FP2_ENCODED_BYTES:I

.field protected MASK2_BOB:I

.field protected MASK3_BOB:I

.field protected MASK_ALICE:I

.field protected MASK_BOB:I

.field protected MAXBITS_FIELD:I

.field protected MAXBITS_ORDER:I

.field protected MAXWORDS_FIELD:I

.field protected MAX_Alice:I

.field protected MAX_Bob:I

.field protected MAX_INT_POINTS_ALICE:I

.field protected MAX_INT_POINTS_BOB:I

.field protected MSG_BYTES:I

.field protected Montgomery_R:[J

.field protected Montgomery_R2:[J

.field protected Montgomery_RB1:[J

.field protected Montgomery_RB2:[J

.field protected Montgomery_one:[J

.field protected NBITS_FIELD:I

.field protected NBITS_ORDER:I

.field protected NWORDS64_FIELD:I

.field protected NWORDS64_ORDER:I

.field protected NWORDS_FIELD:I

.field protected NWORDS_ORDER:I

.field protected OALICE_BITS:I

.field protected OBOB_BITS:I

.field protected OBOB_EXPON:I

.field protected ORDER_A_ENCODED_BYTES:I

.field protected ORDER_B_ENCODED_BYTES:I

.field protected PARAM_A:I

.field protected PARAM_C:I

.field protected PARTIALLY_COMPRESSED_CHUNK_CT:I

.field protected PLEN_2:I

.field protected PLEN_3:I

.field protected PRIME:[J

.field protected PRIME_ZERO_WORDS:I

.field protected PRIMEp1:[J

.field protected PRIMEp1x64:[J

.field protected PRIMEx16p:[J

.field protected PRIMEx2:[J

.field protected PRIMEx4:[J

.field protected SECRETKEY_A_BYTES:I

.field protected SECRETKEY_B_BYTES:I

.field protected TABLE_R_LEN:I

.field protected TABLE_V3_LEN:I

.field protected TABLE_V_LEN:I

.field protected T_tate2_P:[J

.field protected T_tate2_Q:[J

.field protected T_tate2_firststep_P:[J

.field protected T_tate2_firststep_Q:[J

.field protected T_tate3:[J

.field protected UNCOMPRESSEDPK_BYTES:I

.field protected W_2:I

.field protected W_3:I

.field protected XQB3:[J

.field protected g_R_S_im:[J

.field protected g_phiR_phiS_im:[J

.field protected g_phiR_phiS_re:[J

.field protected ph2_T:[J

.field protected ph2_T1:[J

.field protected ph2_T2:[J

.field protected ph2_path:[I

.field protected ph3_T:[J

.field protected ph3_T1:[J

.field protected ph3_T2:[J

.field protected ph3_path:[I

.field protected strat_Alice:[I

.field protected strat_Bob:[I

.field protected table_r_qnr:[[J

.field protected table_r_qr:[[J

.field protected table_v_qnr:[[J

.field protected table_v_qr:[[J

.field protected threeinv:[J

.field protected u0_entang:[J

.field protected u_entang:[J

.field protected v_3_torsion:[[[J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-array p1, p2, [J

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    if-ge p2, v0, :cond_0

    mul-int/lit8 v0, p2, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    aput-wide v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J
    .locals 4

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    filled-new-array {p2, p3}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    if-ge p2, v0, :cond_0

    div-int v0, p2, p3

    rem-int v1, p2, p3

    aget-object v0, p1, v0

    mul-int/lit8 v2, p2, 0x8

    invoke-static {p0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;III)[[[J
    .locals 5

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    filled-new-array {p2, p3, p4}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[J

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    if-ge p2, v0, :cond_0

    mul-int v0, p3, p4

    div-int v1, p2, v0

    rem-int v0, p2, v0

    div-int/2addr v0, p4

    rem-int v2, p2, p4

    aget-object v1, p1, v1

    aget-object v0, v1, v0

    mul-int/lit8 v1, p2, 0x8

    invoke-static {p0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected static ReadIntsFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 1

    new-array p2, p2, [I

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-eq p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
