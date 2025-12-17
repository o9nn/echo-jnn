.class Lorg/bouncycastle/pqc/crypto/sike/P434;
.super Lorg/bouncycastle/pqc/crypto/sike/Internal;


# direct methods
.method constructor <init>(Z)V
    .locals 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sike/Internal;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->COMPRESS:Z

    const/16 v0, 0x176

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x14a

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_BYTES:I

    const/16 v2, 0x15a

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_CIPHERTEXTBYTES:I

    if-eqz p1, :cond_0

    const/16 v2, 0x15e

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_SECRETKEYBYTES:I

    const/16 v2, 0xc5

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v2, 0xec

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->CRYPTO_CIPHERTEXTBYTES:I

    :cond_0
    const/4 v2, 0x7

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS_FIELD:I

    const/4 v3, 0x3

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIME_ZERO_WORDS:I

    const/16 v4, 0x1b2

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_FIELD:I

    const/16 v4, 0x1c0

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAXBITS_FIELD:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAXBITS_FIELD:I

    add-int/lit8 v4, v4, 0x3f

    div-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAXWORDS_FIELD:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_FIELD:I

    add-int/lit8 v4, v4, 0x3f

    div-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const/16 v4, 0x100

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_ORDER:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_ORDER:I

    add-int/lit8 v4, v4, 0x3f

    div-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS_ORDER:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_ORDER:I

    add-int/lit8 v4, v4, 0x3f

    div-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_ORDER:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_ORDER:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAXBITS_ORDER:I

    const/4 v4, 0x0

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ALICE:I

    const/4 v5, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->BOB:I

    const/16 v6, 0xd8

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    const/16 v6, 0xda

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OBOB_BITS:I

    const/16 v6, 0x89

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OBOB_EXPON:I

    const/16 v7, 0xff

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MASK_ALICE:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MASK_BOB:I

    const/4 v7, 0x6

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PARAM_A:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PARAM_C:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAX_INT_POINTS_ALICE:I

    const/16 v8, 0x8

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAX_INT_POINTS_BOB:I

    const/16 v9, 0x6c

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAX_Alice:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MAX_Bob:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MSG_BYTES:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    add-int/2addr v6, v2

    div-int/2addr v6, v8

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->SECRETKEY_A_BYTES:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OBOB_BITS:I

    add-int/lit8 v6, v6, 0x6

    div-int/2addr v6, v8

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->SECRETKEY_B_BYTES:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NBITS_FIELD:I

    add-int/2addr v6, v2

    div-int/2addr v6, v8

    const/4 v9, 0x2

    mul-int/2addr v6, v9

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->FP2_ENCODED_BYTES:I

    new-array v6, v2, [J

    fill-array-data v6, :array_0

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIME:[J

    new-array v6, v2, [J

    fill-array-data v6, :array_1

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIMEx2:[J

    new-array v6, v2, [J

    fill-array-data v6, :array_2

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIMEx4:[J

    new-array v6, v2, [J

    fill-array-data v6, :array_3

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIMEp1:[J

    const/16 v6, 0xe

    new-array v6, v6, [J

    fill-array-data v6, :array_4

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PRIMEx16p:[J

    const/4 v6, 0x4

    new-array v10, v6, [J

    fill-array-data v10, :array_5

    iput-object v10, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Alice_order:[J

    new-array v10, v6, [J

    fill-array-data v10, :array_6

    iput-object v10, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Bob_order:[J

    const/16 v10, 0x2a

    new-array v11, v10, [J

    fill-array-data v11, :array_7

    iput-object v11, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->A_gen:[J

    new-array v10, v10, [J

    fill-array-data v10, :array_8

    iput-object v10, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->B_gen:[J

    new-array v10, v2, [J

    fill-array-data v10, :array_9

    iput-object v10, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Montgomery_R2:[J

    new-array v2, v2, [J

    fill-array-data v2, :array_a

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Montgomery_one:[J

    const/16 v2, 0x6b

    new-array v2, v2, [I

    fill-array-data v2, :array_b

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->strat_Alice:[I

    const/16 v2, 0x88

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->strat_Bob:[I

    if-eqz p1, :cond_1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MASK2_BOB:I

    const/16 p1, 0x7f

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->MASK3_BOB:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->SECRETKEY_A_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ORDER_A_ENCODED_BYTES:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->SECRETKEY_B_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ORDER_B_ENCODED_BYTES:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr p1, v6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, v2

    add-int/2addr p1, v9

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PARTIALLY_COMPRESSED_CHUNK_CT:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr p1, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, v2

    add-int/2addr p1, v9

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->COMPRESSED_CHUNK_CT:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->UNCOMPRESSEDPK_BYTES:I

    const/16 p1, 0x11

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_R_LEN:I

    const/16 p1, 0x22

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_V_LEN:I

    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_V3_LEN:I

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_2:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_3:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_2:I

    shl-int p1, v5, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL2_W:I

    const/16 p1, 0x1b

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL3_W:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_2:I

    rem-int/2addr p1, v0

    shl-int p1, v5, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL2_EMODW:I

    const/16 p1, 0x9

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL3_EMODW:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_2:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_2:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_2:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OBOB_EXPON:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_3:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->W_3:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_3:I

    const/16 p1, 0x37

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_2:I

    const/16 p1, 0x2f

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_3:I

    const-class p1, Lorg/bouncycastle/pqc/crypto/sike/P434;

    const-string v0, "p434.properties"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "ph2_path"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_2:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadIntsFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_path:[I

    const-string p1, "ph3_path"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_3:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadIntsFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph3_path:[I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v7

    const-string v2, "A_gen"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->A_gen:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v7

    const-string v2, "B_gen"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->B_gen:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v9

    const-string v2, "XQB3"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->XQB3:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v8

    const-string v2, "A_basis_zero"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->A_basis_zero:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v8

    const-string v2, "B_basis_zero"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->B_basis_zero:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "B_gen_3_tors"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->B_gen_3_tors:[J

    const-string p1, "g_R_S_im"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->g_R_S_im:[J

    const-string p1, "g_phiR_phiS_re"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->g_phiR_phiS_re:[J

    const-string p1, "g_phiR_phiS_im"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->g_phiR_phiS_im:[J

    const-string p1, "Montgomery_RB1"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Montgomery_RB1:[J

    const-string p1, "Montgomery_RB2"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->Montgomery_RB2:[J

    const-string p1, "threeinv"

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->threeinv:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v9

    const-string v1, "u_entang"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->u_entang:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v9

    const-string v1, "u0_entang"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->u0_entang:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_R_LEN:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const-string v2, "table_r_qr"

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->table_r_qr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_R_LEN:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const-string v2, "table_r_qnr"

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->table_r_qnr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_V_LEN:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const-string v2, "table_v_qr"

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->table_v_qr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_V_LEN:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const-string v2, "table_v_qnr"

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->table_v_qnr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->TABLE_V3_LEN:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    const-string v2, "v_3_torsion"

    invoke-static {v0, v2, p1, v9, v1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;III)[[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->v_3_torsion:[[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OBOB_EXPON:I

    sub-int/2addr p1, v5

    mul-int/2addr p1, v7

    add-int/2addr p1, v6

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "T_tate3"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->T_tate3:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v6

    const-string v1, "T_tate2_firststep_P"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->T_tate2_firststep_P:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    sub-int/2addr p1, v9

    mul-int/2addr p1, v3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "T_tate2_P"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->T_tate2_P:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v6

    const-string v1, "T_tate2_firststep_Q"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->T_tate2_firststep_Q:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->OALICE_BITS:I

    sub-int/2addr p1, v9

    mul-int/2addr p1, v3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "T_tate2_Q"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->T_tate2_Q:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL2_W:I

    ushr-int/2addr v1, v5

    mul-int/2addr p1, v1

    mul-int/2addr p1, v9

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph2_T"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_T:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_3:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL3_W:I

    ushr-int/2addr v1, v5

    mul-int/2addr p1, v1

    mul-int/2addr p1, v9

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph3_T1"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph3_T1:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_3:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL3_W:I

    ushr-int/2addr v1, v5

    mul-int/2addr p1, v1

    mul-int/2addr p1, v9

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph3_T2"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph3_T2:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_2:I

    sub-int/2addr p1, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL2_W:I

    div-int/2addr v0, v9

    mul-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_path:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_2:I

    sub-int/2addr v1, v5

    aget v0, v0, v1

    sub-int/2addr v0, v5

    add-int/2addr p1, v0

    mul-int/2addr p1, v9

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_T1:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_2:I

    sub-int/2addr p1, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL2_W:I

    div-int/2addr v0, v9

    mul-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_path:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_2:I

    sub-int/2addr v1, v5

    aget v0, v0, v1

    sub-int/2addr v0, v5

    add-int/2addr p1, v0

    mul-int/2addr p1, v9

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph2_T2:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->DLEN_3:I

    sub-int/2addr p1, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ELL3_W:I

    div-int/2addr v0, v9

    mul-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph3_path:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->PLEN_3:I

    sub-int/2addr v1, v5

    aget v0, v0, v1

    sub-int/2addr v0, v5

    add-int/2addr p1, v0

    mul-int/2addr p1, v9

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P434;->ph3_T:[J

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to load Picnic properties: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x23e89851d000001L    # -5.710313113183895E297
        0x7bc65c783158aea3L    # 1.7024765885953292E288
        0x6cfc5fd681c52056L    # 9.781446301074431E216
        0x2341f27177344L
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x47d130a3a000001L    # -9.00567189869048E286
        -0x873470f9d4ea2b9L    # -7.409129075257406E267
        -0x26074052fc75bf54L    # -2.617647704514566E125
        0x4683e4e2ee688L
    .end array-data

    :array_2
    .array-data 8
        -0x4
        -0x1
        -0x1
        -0x8fa261474000001L
        -0x10e68e1f3a9d4571L    # -1.5069415367337987E227
        -0x4c0e80a5f8eb7ea7L    # -1.7421921175402653E-58
        0x8d07c9c5dcd11L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        -0x23e89851d000000L    # -5.710313113183896E297
        0x7bc65c783158aea3L    # 1.7024765885953292E288
        0x6cfc5fd681c52056L    # 9.781446301074431E216
        0x2341f27177344L
    .end array-data

    :array_4
    .array-data 8
        0x10
        0x0
        0x0
        0x47d130a3a0000000L    # 9.139769954729856E37
        -0x78cb8f062b15d480L    # -5.904086670543843E-274
        0x6074052fc75bf530L    # 4.294844876061144E156
        0x54497c1b1d119772L    # 1.0887035663793026E98
        -0x3aa0c8c2d3235beeL    # -1.5095023619455544E26
        0x732ca2221c664b96L
        0x6445ab96af6359a5L    # 1.0719432179972443E175
        0x221708ab42abe1b4L
        -0x51c2c2ff9cdbb0ffL    # -5.879131522264464E-86
        0x18b920f2ecf68816L
        0x4db194809dL
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x1000000
    .end array-data

    :array_6
    .array-data 8
        0x58aea3fdc1767ae3L    # 1.5453449558865275E119
        -0x3adfa98439a387cfL    # -9.875609937156696E24
        0x1773446cfc5fd681L
        0x2341f27
    .end array-data

    :array_7
    .array-data 8
        0x5adf455c5c345bfL
        -0x6e6ca3a3389853d5L    # -5.230537554052157E-224
        -0x501b17866ae0fda9L    # -5.642685021571642E-78
        0x70e792dc89fa27b1L    # 7.495385306235626E235
        -0x8680ad944b73733L
        0x2181db6131af621fL    # 2.793054793618057E-147
        0xa1c08b1ecc4L
        0x74840eb87cda7788L    # 1.8381596436243335E253
        0x2971aa0ecf9f9d0bL    # 4.700864439273915E-109
        -0x34a8cd420be8ea2bL    # -8.887788713082294E54
        -0x73271ae085530056L    # -8.901350392146102E-247
        -0x580bdb8cf281be61L    # -3.195011896190273E-116
        -0x298e146e65e86174L    # -2.630395649027886E108
        0xffa26c5a924aL
        -0x13919ba7748d8c5L
        -0x2d59d928b3440e3aL    # -1.4101205032781703E90
        -0x70a70f8587f6739L    # -4.665077301040313E274
        -0x1dc6be0b8f7be4fdL    # -1.4544886716465238E165
        0x1b63eda2045538ddL    # 9.835621134908636E-177
        0x735cfeb0ffd49215L    # 5.068248413227775E247
        0x1c4cb77542876L
        -0x524f08cc3e80022aL    # -1.3325740873574586E-88
        0x6affbd037da0a050L    # 2.5474235967142614E207
        0x680ec43db144e02fL    # 1.754632899875075E193
        0x1e2e5d5ff524e374L
        -0x1d225eead9f1d66bL    # -1.7471811991323242E168
        -0x591b4aad1d121af8L
        0x18eccddf4b53eL
        0x1ba4db518cd6c7dL
        0x2cb0251fe3cc0611L    # 1.934995156875529E-93
        0x259b0c6949a9121bL    # 1.560862824487705E-127
        0x60e17ac16d2f82adL    # 4.799733059736216E158
        0x3aa41f1ce175d92dL    # 3.2508092146681017E-26
        0x413fbe6a9b9bc4f3L    # 2080362.6078456014
        0x22a81d8d55643L
        -0x4752438f037d1ab6L    # -1.1185477258046573E-35
        -0x1063224f2a052213L    # -4.376460498537542E229
        0x5820c734c80096a0L    # 3.305463679546582E116
        0x7799994baa96e0e4L    # 1.3206749769074763E268
        0x44961599e379af8L
        -0x24d46b040f60d81eL    # -1.5295138075472276E131
        0xb87fc716c0c6L
    .end array-data

    :array_8
    .array-data 8
        0x6e5497556edd48a3L    # 2.9772640028993693E223
        0x2a61b501546f1c05L
        -0x146e6bb92fb67783L    # -1.4448282832763836E210
        0x5864a4a69d450c4fL    # 6.507057657341476E117
        -0x477c0d8959b6f2d5L    # -1.8758184272885164E-36
        0x22cc287022d5f5b9L    # 4.618205416206357E-141
        0x1bed4772e551fL
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x51d5c06c2749472L    # -8.662115994982114E283
        0x494871f51700fe1cL    # 1.0902899456646347E45
        -0x10e56bdd7bec3d84L
        0x498ff4a4af60bd62L    # 2.2804305227109592E46
        -0x4ff52d58f7d98176L    # -2.895584381049525E-77
        -0xbcd7d6b1fe87c81L    # -5.301085217151521E251
        0x34080181d8aeL
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x283b34fafefdc8e4L    # 6.904966909635139E-115
        -0x6df70bb6883c19b9L    # -8.629341513588313E-222
        0x7deae962816f4e9aL    # 3.520028637906976E298
        0x68a2ba8aa262ec9dL    # 1.0937405533216823E196
        -0x7e890eed15bc0ba5L
        0x2106d022634f504L
        0x7e8a50f02e37L
        -0x4c87483e25dd334fL    # -9.61370360019161E-61
        0x6d089c99ad1d9230L    # 1.6968711079769676E217
        -0x141ea8ee7ec1dc97L    # -4.560566981703382E211
        0x2b35a68239d48a53L    # 1.546635145108695E-100
        0x445f6fd138407c93L    # 2.3196253973718308E21
        -0x4106c4d65c094ab5L    # -2.406225598654736E-5
        0x173fa910377d3L
    .end array-data

    :array_9
    .array-data 8
        0x28e55b65dcd69b30L
        -0x53138c988978673eL    # -2.7278832801451472E-92
        -0x54d868c07cee9773L    # -8.426250517470739E-101
        0x175cc6af8d6c7c0bL
        -0x54326d40d221cb82L    # -1.0816585159651483E-97
        0x69e16a61c7686d9aL    # 1.0664596153497006E202
        0x25a89bcdd12aL
    .end array-data

    :array_a
    .array-data 8
        0x742c
        0x0
        0x0
        -0x46f00bfb04000000L    # -7.692453341483096E-34
        -0x27fe5b04aa60532cL    # -8.690339057518102E115
        -0x16cdababa088bef4L    # -5.480569619145363E198
        0xeceea7bd2edaL
    .end array-data

    :array_b
    .array-data 4
        0x30
        0x1c
        0x10
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0xd
        0x7
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x5
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x15
        0xc
        0x7
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x5
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x9
        0x5
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x42
        0x21
        0x11
        0x9
        0x5
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x8
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x10
        0x8
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x20
        0x10
        0x8
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x10
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x8
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
    .end array-data
.end method
