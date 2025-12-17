.class Lorg/bouncycastle/pqc/crypto/sike/P751;
.super Lorg/bouncycastle/pqc/crypto/sike/Internal;


# direct methods
.method constructor <init>(Z)V
    .locals 9

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sike/Internal;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->COMPRESS:Z

    const/16 v0, 0x284

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x234

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v1, 0x20

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_BYTES:I

    const/16 v2, 0x254

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_CIPHERTEXTBYTES:I

    if-eqz p1, :cond_0

    const/16 p1, 0x25a

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_SECRETKEYBYTES:I

    const/16 p1, 0x14f

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_PUBLICKEYBYTES:I

    const/16 p1, 0x19a

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->CRYPTO_CIPHERTEXTBYTES:I

    :cond_0
    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS_FIELD:I

    const/4 v2, 0x5

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIME_ZERO_WORDS:I

    const/16 v2, 0x2ef

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_FIELD:I

    const/16 v2, 0x300

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAXBITS_FIELD:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAXBITS_FIELD:I

    add-int/lit8 v2, v2, 0x3f

    div-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAXWORDS_FIELD:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_FIELD:I

    add-int/lit8 v2, v2, 0x3f

    div-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const/16 v2, 0x180

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_ORDER:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_ORDER:I

    add-int/lit8 v2, v2, 0x3f

    div-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS_ORDER:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_ORDER:I

    add-int/lit8 v2, v2, 0x3f

    div-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_ORDER:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_ORDER:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAXBITS_ORDER:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ALICE:I

    const/4 v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->BOB:I

    const/16 v4, 0x174

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    const/16 v4, 0x17b

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OBOB_BITS:I

    const/16 v4, 0xef

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OBOB_EXPON:I

    const/16 v5, 0xf

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MASK_ALICE:I

    const/4 v5, 0x3

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MASK_BOB:I

    const/4 v6, 0x6

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PARAM_A:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PARAM_C:I

    const/16 v7, 0x8

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAX_INT_POINTS_ALICE:I

    const/16 v8, 0xa

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAX_INT_POINTS_BOB:I

    const/16 v8, 0xba

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAX_Alice:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MAX_Bob:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MSG_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v7

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->SECRETKEY_A_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OBOB_BITS:I

    add-int/lit8 v1, v1, 0x6

    div-int/2addr v1, v7

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->SECRETKEY_B_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NBITS_FIELD:I

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v7

    const/4 v4, 0x2

    mul-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->FP2_ENCODED_BYTES:I

    new-array v1, p1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIME:[J

    new-array v1, p1, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIMEx2:[J

    new-array v1, p1, [J

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIMEx4:[J

    new-array v1, p1, [J

    fill-array-data v1, :array_3

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIMEp1:[J

    const/16 v1, 0x18

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PRIMEx16p:[J

    new-array v1, v6, [J

    fill-array-data v1, :array_5

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Alice_order:[J

    new-array v1, v6, [J

    fill-array-data v1, :array_6

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Bob_order:[J

    const/16 v1, 0x48

    new-array v8, v1, [J

    fill-array-data v8, :array_7

    iput-object v8, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->A_gen:[J

    new-array v1, v1, [J

    fill-array-data v1, :array_8

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->B_gen:[J

    new-array v1, p1, [J

    fill-array-data v1, :array_9

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_R2:[J

    new-array p1, p1, [J

    fill-array-data p1, :array_a

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_one:[J

    const/16 p1, 0xb9

    new-array p1, p1, [I

    fill-array-data p1, :array_b

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->strat_Alice:[I

    const/16 p1, 0xee

    new-array p1, p1, [I

    fill-array-data p1, :array_c

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->strat_Bob:[I

    iget-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->COMPRESS:Z

    if-eqz p1, :cond_1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MASK2_BOB:I

    const/16 p1, 0xff

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->MASK3_BOB:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->SECRETKEY_A_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ORDER_A_ENCODED_BYTES:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->SECRETKEY_B_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ORDER_B_ENCODED_BYTES:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ORDER_A_ENCODED_BYTES:I

    const/4 v1, 0x4

    mul-int/2addr p1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, v2

    add-int/2addr p1, v4

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PARTIALLY_COMPRESSED_CHUNK_CT:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ORDER_A_ENCODED_BYTES:I

    mul-int/2addr p1, v5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->FP2_ENCODED_BYTES:I

    add-int/2addr p1, v2

    add-int/2addr p1, v4

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->COMPRESSED_CHUNK_CT:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->UNCOMPRESSEDPK_BYTES:I

    const/16 p1, 0x11

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_R_LEN:I

    const/16 p1, 0x22

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_V_LEN:I

    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_V3_LEN:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_2:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_3:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_2:I

    shl-int p1, v3, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL2_W:I

    const/16 p1, 0x1b

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL3_W:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_2:I

    rem-int/2addr p1, v0

    shl-int p1, v3, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL2_EMODW:I

    const/16 p1, 0x9

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL3_EMODW:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_2:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_2:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_2:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OBOB_EXPON:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_3:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->W_3:I

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_3:I

    const/16 p1, 0x5e

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_2:I

    const/16 p1, 0x51

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_3:I

    const-class p1, Lorg/bouncycastle/pqc/crypto/sike/P751;

    const-string v0, "p751.properties"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "ph2_path"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_2:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadIntsFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_path:[I

    const-string p1, "ph3_path"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_3:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadIntsFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph3_path:[I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v6

    const-string v2, "A_gen"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->A_gen:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v6

    const-string v2, "B_gen"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->B_gen:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v4

    const-string v2, "XQB3"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->XQB3:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v7

    const-string v2, "A_basis_zero"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->A_basis_zero:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v7

    const-string v2, "B_basis_zero"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->B_basis_zero:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/lit8 p1, p1, 0x10

    const-string v2, "B_gen_3_tors"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->B_gen_3_tors:[J

    const-string p1, "g_R_S_im"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->g_R_S_im:[J

    const-string p1, "Montgomery_R2"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_R2:[J

    const-string p1, "Montgomery_RB1"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_RB1:[J

    const-string p1, "Montgomery_RB2"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_RB2:[J

    const-string p1, "Montgomery_one"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_one:[J

    const-string p1, "threeinv"

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->threeinv:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v4

    const-string v2, "u_entang"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->u_entang:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v4

    const-string v2, "u0_entang"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->u0_entang:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_R_LEN:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const-string v7, "table_r_qr"

    invoke-static {v0, v7, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->table_r_qr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_R_LEN:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const-string v7, "table_r_qnr"

    invoke-static {v0, v7, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->table_r_qnr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_V_LEN:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const-string v7, "table_v_qr"

    invoke-static {v0, v7, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->table_v_qr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_V_LEN:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const-string v7, "table_v_qnr"

    invoke-static {v0, v7, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;II)[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->table_v_qnr:[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->TABLE_V3_LEN:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    const-string v7, "v_3_torsion"

    invoke-static {v0, v7, p1, v4, v2}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;III)[[[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->v_3_torsion:[[[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OBOB_EXPON:I

    sub-int/2addr p1, v3

    mul-int/2addr p1, v6

    add-int/2addr p1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v2

    const-string v2, "T_tate3"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->T_tate3:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v2, "T_tate2_firststep_P"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->T_tate2_firststep_P:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    sub-int/2addr p1, v4

    mul-int/2addr p1, v5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v2

    const-string v2, "T_tate2_P"

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->T_tate2_P:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "T_tate2_firststep_Q"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->T_tate2_firststep_Q:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->OALICE_BITS:I

    sub-int/2addr p1, v4

    mul-int/2addr p1, v5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "T_tate2_Q"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->T_tate2_Q:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL2_W:I

    ushr-int/2addr v1, v3

    mul-int/2addr p1, v1

    mul-int/2addr p1, v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph2_T"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_T:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_3:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL3_W:I

    shr-int/2addr v1, v3

    mul-int/2addr p1, v1

    mul-int/2addr p1, v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph3_T1"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph3_T1:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_3:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL3_W:I

    shr-int/2addr v1, v3

    mul-int/2addr p1, v1

    mul-int/2addr p1, v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v1

    const-string v1, "ph3_T2"

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/sike/Internal;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph3_T2:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->Montgomery_R:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_2:I

    sub-int/2addr p1, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL2_W:I

    div-int/2addr v0, v4

    mul-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_path:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_2:I

    sub-int/2addr v1, v3

    aget v0, v0, v1

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    mul-int/2addr p1, v4

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_T1:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_2:I

    sub-int/2addr p1, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL2_W:I

    div-int/2addr v0, v4

    mul-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_path:[I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->PLEN_2:I

    sub-int/2addr v1, v3

    aget v0, v0, v1

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    mul-int/2addr p1, v4

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph2_T2:[J

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->DLEN_3:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ELL3_W:I

    shr-int/2addr v0, v3

    mul-int/2addr p1, v0

    mul-int/2addr p1, v4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->NWORDS64_FIELD:I

    mul-int/2addr p1, v0

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/P751;->ph3_T:[J

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
        -0x1
        -0x1
        -0x1150000000000001L    # -1.4805966303832138E225
        -0x1c13697ab6078758L    # -2.209585758075013E173
        -0x256a64e5ec08338aL
        0x84e9867d6ebe876L
        -0x7a9d4afba34da8b8L
        0xe12909f97badc66L    # 6.960443539131342E-241
        0x6fe5d541f71cL
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x22a0000000000001L    # -6.0971651373359216E141
        -0x3826d2f56c0f0eafL    # -1.338582711938441E38
        -0x4ad4c9cbd8106713L    # -1.4205187610280608E-52
        0x109d30cfadd7d0edL
        0xac56a08b964ae90L    # 8.91364785992388E-257
        0x1c25213f2f75b8cdL    # 4.271587774226014E-173
        0xdfcbaa83ee38L
    .end array-data

    :array_2
    .array-data 8
        -0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x4540000000000001L    # -1.0339757656912845E-25
        -0x704da5ead81e1d5dL    # -4.617469667794166E-233
        0x6a566c684fdf31dbL    # 1.7575991465638286E204
        0x213a619f5bafa1dbL
        0x158ad41172c95d20L
        0x384a427e5eeb719aL    # 1.5434088461702877E-37
        0x1bf975507dc70L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1150000000000000L    # -1.480596630383214E225
        -0x1c13697ab6078758L    # -2.209585758075013E173
        -0x256a64e5ec08338aL
        0x84e9867d6ebe876L
        -0x7a9d4afba34da8b8L
        0xe12909f97badc66L    # 6.960443539131342E-241
        0x6fe5d541f71cL
    .end array-data

    :array_4
    .array-data 8
        0x10
        0x0
        0x0
        0x0
        0x0
        0x2a00000000000000L
        -0x7d92d0a93f0f151eL    # -5.578183007725302E-297
        -0x52b363427ef98eddL    # -1.7557536375178425E-90
        -0x9d30cfadd7d0edcL
        0x53a95f7469b516feL    # 1.058517998711228E95
        0x3dadec0d08a4732fL    # 1.3606983829678918E-11
        0x58ad934557c11c7eL    # 1.4916163087257787E119
        0x7f731b89b2da43f2L    # 8.386119914403952E305
        0x51ae9f5f5f6aff3bL    # 2.974473669315377E85
        -0x28bce65936435c8bL    # -2.296710959937552E112
        0x5bab790796cf84d4L    # 3.900053630874267E133
        -0x5bdeaab01d1b6358L    # -1.192372505675967E-134
        0x20ad617c8df437cfL
        0x3ab06e7a12f5ff7bL    # 5.309320219389772E-26
        0x70a25e037e40347eL    # 3.649980627196748E234
        0x51f1d323fb4c1151L    # 5.540419502270705E86
        -0x51f26655b7ca0127L    # -7.439893308106135E-87
        -0x20abd669f2dac94aL    # -1.6499890220943107E151
        0x30e91d466L
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x10000000000000L
    .end array-data

    :array_6
    .array-data 8
        -0x3697ab6078757115L    # -4.340716814756467E45
        0x59b1a13f7cc76e3eL
        -0x1679829141789257L    # -2.151869998978926E200
        0x2b5045cb25748084L    # 4.649853018762608E-100
        0x2909f97badc66856L    # 5.400320450448526E-111
        0x6fe5d541f71c0e1L
    .end array-data

    :array_7
    .array-data 8
        -0x77b0b948bfff4558L
        -0x45ad9cf06c6213e0L    # -9.283040700168945E-28
        -0x3e90468458eb5fb3L    # -1.6632797221267844E7
        0x82536745b1ab3dbL
        0x1117157f446f9e82L
        -0x2d0d829de5fe7b70L    # -3.766434330922016E91
        0x6b24ab523d544bcdL    # 1.327184146159372E208
        -0x6cf82955d157a36cL    # -5.402473981777839E-217
        -0x1e5f698d6ad70df1L    # -1.865664222041783E162
        -0x769bb907970cdaa4L    # -2.0123447533760004E-263
        0x2401d996b1bff8a5L
        0xef8786a5c0aL    # 8.13248600033E-311
        -0x514874c4690a6c6cL    # -1.2119346796897927E-83
        -0x54d997e1d636f48cL    # -8.003308531483686E-101
        -0x1adf53cf023b530fL    # -1.351236461631205E179
        -0x78f5551c5b47eee5L    # -9.628017223868882E-275
        -0x78a4248c729b101L
        0x50109a7ecd7ed6bcL    # 4.806384118716532E77
        0x4cc64848ff0c56fbL    # 7.161275632454648E61
        -0x19e83493ae6efd37L    # -6.319113767860888E183
        -0x638b4c7ca6de19f7L
        -0x36e2251b5ca58ebaL    # -1.6644747265098432E44
        0x7fc82a155c1b9129L    # 3.393762123365527E307
        0x214fa6b980b3L
        0xf93cc38680a8ca9L
        0x762e733822e7fed7L    # 1.8727276783534039E261
        -0x1ab60ffa53f52499L    # -8.408470250162739E179
        -0x6b58e022d3bc5b13L    # -3.516938575511696E-209
        -0x2b79ba3d4fb8de3bL    # -1.5223608143512773E99
        0x432da1fe4d4ca4dcL    # 4.170443957621358E15
        -0x43669aa055857f18L    # -8.811004355386123E-17
        -0x4d392afd4302b7ddL    # -4.3360699250721966E-64
        -0x116d0bf35d137425L    # -4.384721639638555E224
        0x7b074132efb6d16cL    # 4.3225134415480455E284
        0x3340b46fa38a7633L    # 8.12143771905475E-62
        0x215749657f6cL
        -0x1300c8a40cf860b4L    # -1.0761122639252355E217
        -0x4018b4fbc17f10dL
        0x17376cbe3c5c7ad1L    # 7.834266191064557E-197
        -0x3f9cd8581d63240eL    # -153.2392437995582
        0x2111649c438bf3d4L
        -0x3e06d67d9e45d169L    # -6.754412059636374E9
        0x1f9fece869cfd1c2L
        0x1a39b4fc9346d62L
        0x147cd1d3e82a3c9fL    # 5.478877396327431E-210
        -0x217b162db61acc12L    # -2.0891605398920772E147
        0x1c48a5adfb7c578dL
        0x61aca0b82e1dL
        0x1600c525d41059f1L    # 1.069766018710857E-202
        -0x5a697665f5e27c09L    # -1.300551984491934E-127
        0x6bfdeed6d2b23f35L    # 1.574514661472586E212
        0x5c7e707270c23910L    # 3.5399076629069478E137
        0x276ca1a4e8369411L    # 8.870225232765869E-119
        -0x4e6c9ae59fd6da60L    # -7.025371817366482E-70
        0x243d239f1ca1f04aL
        0x543dc6da457860adL    # 6.360279054087117E97
        -0x325a6f0cdae7e217L    # -1.1355935039460633E66
        -0x2c548530257f4c6bL    # -1.1464131987001108E95
        0x6c97468580fddf7bL    # 1.2537053143881865E215
        0x352a3e5c4c77L
        -0x6486b0602e33c118L
        -0x24cd1bf564d02dc2L
        0x26192a2542e42b67L    # 3.717512008352098E-125
        -0x5e716b035fba4319L    # -4.783411305499384E-147
        -0x6923e43c718325d3L    # -1.4688579900006392E-198
        -0x65e26e48adb7821eL
        -0x339c89c678bc925dL    # -9.773103574152734E59
        0x1316717aaccc551dL
        -0x3b3c975b9cd5018eL    # -1.8331053983381258E23
        0x4b6ea85c9ccd5710L    # 2.3491366038994406E55
        0x7a12cad582c7bc9aL    # 1.0659980091048197E280
        0x1c7e240149bfL
    .end array-data

    :array_8
    .array-data 8
        -0x7a96e550bfea0774L
        0x7478c5b8c36e9631L    # 1.1351247460127356E253
        0x7ef2a185de4dd6e2L    # 3.1941155403323954E303
        -0x6bc4411b94146239L
        0x1a3ec62798792d22L
        0x791bc4b084b31d69L    # 2.4035083516879193E275
        0x3dbe6522cea17c4L
        0x4749aa65d665d83L
        0x3d52b5c45ef450f3L    # 2.6588548440112673E-13
        0xb4219848e36947dL
        -0x5b308f8fb99421d9L    # -2.214642204801223E-131
        0x334b1fa6d193L
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x71834c05acdeecc0L    # -6.887336838533022E-239
        -0x29831ab085fa1120L    # -4.241430323035394E108
        -0x223d37431b903c8L
        0x8587fae3110df1eL
        -0x2947db905dd4fa75L    # -5.6699286274876975E109
        0x4dac3acc905a5dbdL    # 1.4864663521401047E66
        0x51d0bf2fadced3e8L    # 1.301341149216828E86
        -0x1a5dbf9209b7bbdbL    # -3.786781077634922E181
        -0x6f80e88a7b098e48L
        0x4738a2ffcced051cL    # 1.2792114156355012E35
        0x2b0067b4177e4853L
        0x2806ac948d3dL
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4a9ba8fe92e292e4L    # -1.6988648359361262E-51
        0x3deccb38f39c491L
        -0x2046ef5375aa6baeL    # -1.3127675224434035E153
        -0x562f0e82e00db77dL
        -0x7a9d4450aea3db74L
        0x249b2a6ddb1cb67dL
        0x3131af96fb46835cL    # 1.0009863274590306E-71
        -0x1efda7c67b7f3c1fL    # -2.0149145113479134E159
        -0x154a1d478d2b054fL    # -1.0978829584995276E206
        -0x48e19c78a0514e21L    # -3.406700551831928E-43
        -0x7c7b2b0ec8a830aL
        0x361ec9b09912L
        0x58c967899ed16ef4L    # 5.12504856021491E119
        -0x7e667c89239dd5b5L    # -5.952712897469033E-301
        0x3d1c1dcfe0b12681L    # 2.4972426981426574E-14
        -0x6cb821446ac1e8d0L    # -8.655386036130892E-216
        -0x6544cbb2c57d3d29L    # -6.556019121434127E-180
        -0x1b77e42d7dfaad4eL
        0x37247923d90266L
        0x2e3156edb157e5a5L    # 3.486578372784402E-86
        -0x795b958af97dc09L
        -0x701aadc58480e304L    # -4.291657891232778E-232
        -0x5c3005c7c8d0985L    # -6.579802218536986E280
        0x692dce85ffbdL
    .end array-data

    :array_9
    .array-data 8
        0x233046449dad4058L
        -0x24fefe9e5969bad6L    # -2.3575173453666125E130
        0x5e36941472e3fd8eL    # 7.048420304742959E145
        -0xbf401df7d5d18faL
        0x4932cca8904f8751L    # 4.192416791630404E44
        0x1f735f1f1ee7fc81L
        -0x5db0b27f3efb71e8L
        -0x4a93c7c33249f83bL    # -2.357017466367237E-51
        0x441dd47b735f9c90L    # 1.3756663408755973E20
        0x5673ed2c6a6ac82aL    # 2.9248835898536576E108
        0x6c905261132294bL
        0x41ad830f1f35L
    .end array-data

    :array_a
    .array-data 8
        0x249ad
        0x0
        0x0
        0x0
        0x0
        -0x7cf0000000000000L    # -6.26302612502804E-294
        0x5527b1e4375c6c66L    # 1.658453189206107E102
        0x697797bf3f4f24d0L    # 1.1286932400399836E200
        -0x3762484d53a3b1d2L    # -6.47191365674516E41
        0x4ca4b439d2076956L    # 1.6635028475129806E61
        0x10f7926c7512c7e9L    # 6.21897928669439E-227
        0x2d5b24bce5e2L
    .end array-data

    :array_b
    .array-data 4
        0x50
        0x30
        0x1b
        0xf
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
        0x21
        0x14
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
        0x8
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
    .end array-data

    :array_c
    .array-data 4
        0x70
        0x3f
        0x20
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
        0x1f
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
        0xf
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
        0x31
        0x1f
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
        0xf
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
        0x15
        0xc
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
.end method
