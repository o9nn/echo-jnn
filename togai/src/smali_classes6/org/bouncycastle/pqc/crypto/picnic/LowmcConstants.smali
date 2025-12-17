.class Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.super Ljava/lang/Object;


# static fields
.field private static final KMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final KMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final LMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final RConstants_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field private static final keyMatrices_L1:[I

.field private static final keyMatrices_L1_full:[I

.field private static final keyMatrices_L1_inv:[I

.field private static final keyMatrices_L3:[I

.field private static final keyMatrices_L3_full:[I

.field private static final keyMatrices_L3_inv:[I

.field private static final keyMatrices_L5:[I

.field private static final keyMatrices_L5_full:[I

.field private static final keyMatrices_L5_inv:[I

.field private static final linearMatrices_L1:[I

.field private static final linearMatrices_L1_full:[I

.field private static final linearMatrices_L1_inv:[I

.field private static final linearMatrices_L3:[I

.field private static final linearMatrices_L3_full:[I

.field private static final linearMatrices_L3_inv:[I

.field private static final linearMatrices_L5:[I

.field private static final linearMatrices_L5_full:[I

.field private static final linearMatrices_L5_inv:[I

.field private static final roundConstants_L1:[I

.field private static final roundConstants_L1_full:[I

.field private static final roundConstants_L3:[I

.field private static final roundConstants_L3_full:[I

.field private static final roundConstants_L5:[I

.field private static final roundConstants_L5_full:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const-string v1, "lowmc.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "linearMatrices_L1"

    const v2, 0xa000

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L1:[I

    const-string v3, "roundConstants_L1"

    const/16 v4, 0x140

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L1:[I

    const-string v4, "keyMatrices_L1"

    const v5, 0xa800

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L1:[I

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v6, 0x14

    const/16 v7, 0x80

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v5, 0x15

    invoke-direct {v0, v5, v7, v8, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v8, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const-string v0, "linearMatrices_L1_full"

    const/16 v3, 0x3200

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L1_full:[I

    const-string v4, "keyMatrices_L1_full"

    const/16 v6, 0x3264

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L1_full:[I

    const-string v6, "keyMatrices_L1_inv"

    const/16 v9, 0xb22

    invoke-static {v1, v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L1_inv:[I

    const-string v9, "linearMatrices_L1_inv"

    invoke-static {v1, v9, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L1_inv:[I

    const-string v9, "roundConstants_L1_full"

    const/16 v10, 0x50

    invoke-static {v1, v9, v10}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L1_full:[I

    new-instance v10, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v11, 0x81

    const/4 v12, 0x5

    invoke-direct {v10, v8, v11, v12, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v11, v12, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v12, v11, v12, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v5, v11, v12, v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v5, v12, v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const-string v0, "linearMatrices_L3"

    const v3, 0x21c00

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L3:[I

    const-string v3, "roundConstants_L3"

    const/16 v4, 0x2d0

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L3:[I

    const-string v4, "keyMatrices_L3"

    const v6, 0x22e00

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L3:[I

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v9, 0x1e

    const/16 v10, 0xc0

    const/4 v11, 0x6

    invoke-direct {v6, v9, v10, v11, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v6, 0x1f

    invoke-direct {v0, v6, v10, v11, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v9, v5, v11, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const-string v0, "linearMatrices_L3_full"

    const/16 v3, 0x4800

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L3_full:[I

    const-string v4, "linearMatrices_L3_inv"

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L3_inv:[I

    const-string v4, "roundConstants_L3_full"

    const/16 v6, 0x60

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L3_full:[I

    const-string v6, "keyMatrices_L3_full"

    const/16 v9, 0x5a00

    invoke-static {v1, v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L3_full:[I

    const-string v9, "keyMatrices_L3_inv"

    const/16 v13, 0x1200

    invoke-static {v1, v9, v13}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L3_inv:[I

    new-instance v13, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v13, v8, v10, v11, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v13, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v10, v11, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v12, v10, v11, v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v5, v10, v11, v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v5, v11, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const-string v0, "linearMatrices_L5"

    const v3, 0x4c000

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L5:[I

    const-string v3, "roundConstants_L5"

    const/16 v4, 0x4c0

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L5:[I

    const-string v4, "keyMatrices_L5"

    const v6, 0x4e000

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L5:[I

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v9, 0x26

    const/16 v10, 0x100

    const/16 v11, 0x8

    invoke-direct {v6, v9, v10, v11, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v6, 0x27

    invoke-direct {v0, v6, v10, v11, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v9, v5, v11, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const-string v0, "linearMatrices_L5_full"

    const v3, 0x8000

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L5_full:[I

    const-string v4, "linearMatrices_L5_inv"

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->linearMatrices_L5_inv:[I

    const-string v4, "roundConstants_L5_full"

    invoke-static {v1, v4, v7}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->roundConstants_L5_full:[I

    const-string v6, "keyMatrices_L5_full"

    invoke-static {v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L5_full:[I

    const-string v6, "keyMatrices_L5_inv"

    const/16 v7, 0x1fe0

    invoke-static {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->keyMatrices_L5_inv:[I

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v7, 0xff

    invoke-direct {v6, v8, v7, v11, v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v7, v11, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v12, v7, v11, v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v5, v7, v11, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {v0, v8, v5, v11, v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to load Picnic properties: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getSize()I

    move-result p0

    mul-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->setMatrixPointer(I)V

    return-object v0
.end method

.method static KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_4
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p0, v0, :cond_5

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_0
    invoke-static {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xff

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_4
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p0, v0, :cond_5

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L1_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L3_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xff

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_L5_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L1:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L1_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L3_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L3:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L5_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_4
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x100

    if-ne p0, v0, :cond_5

    sget-object p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_L5:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->removeCommas(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object p0

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    if-ge p2, v0, :cond_0

    mul-int/lit8 v0, p2, 0x4

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static removeCommas(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
