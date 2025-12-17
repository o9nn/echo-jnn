.class public final Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
.source "StandardSecurityHandler.java"


# static fields
.field private static final ENCRYPT_PADDING:[B

.field public static final FILTER:Ljava/lang/String; = "Standard"

.field private static final HASHES_2B:[Ljava/lang/String;

.field public static final PROTECTION_POLICY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->PROTECTION_POLICY_CLASS:Ljava/lang/Class;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->ENCRYPT_PADDING:[B

    const-string v0, "SHA-384"

    const-string v1, "SHA-512"

    const-string v2, "SHA-256"

    .line 70
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->HASHES_2B:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x28t
        -0x41t
        0x4et
        0x5et
        0x4et
        0x75t
        -0x76t
        0x41t
        0x64t
        0x0t
        0x4et
        0x56t
        -0x1t
        -0x6t
        0x1t
        0x8t
        0x2et
        0x2et
        0x0t
        -0x4at
        -0x30t
        0x68t
        0x3et
        -0x80t
        0x2ft
        0xct
        -0x57t
        -0x2t
        0x64t
        0x53t
        0x69t
        0x7at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setProtectionPolicy(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)V

    .line 87
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->getEncryptionKeyLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setKeyLength(I)V

    return-void
.end method

.method private computeEncryptedKeyRev234([B[BI[BZII)[B
    .locals 1

    .line 698
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncateOrPad([B)[B

    move-result-object p1

    .line 700
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 703
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    int-to-byte p1, p3

    .line 705
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    ushr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    .line 706
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    ushr-int/lit8 p1, p3, 0x10

    int-to-byte p1, p1

    .line 707
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    ushr-int/lit8 p1, p3, 0x18

    int-to-byte p1, p1

    .line 708
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 710
    invoke-virtual {v0, p4}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x4

    if-ne p7, p1, :cond_0

    if-nez p5, :cond_0

    new-array p2, p1, [B

    fill-array-data p2, :array_0

    .line 717
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 719
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-eq p7, p3, :cond_1

    if-ne p7, p1, :cond_2

    :cond_1
    move p1, p4

    :goto_0
    const/16 p3, 0x32

    if-ge p1, p3, :cond_2

    .line 725
    invoke-virtual {v0, p2, p4, p6}, Ljava/security/MessageDigest;->update([BII)V

    .line 726
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 730
    :cond_2
    new-array p1, p6, [B

    .line 731
    invoke-static {p2, p4, p1, p4, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private computeEncryptedKeyRev56([BZ[B[B[B[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x28

    const/16 v3, 0x8

    if-eqz p2, :cond_2

    if-eqz p5, :cond_1

    new-array p2, v3, [B

    .line 748
    invoke-static {p3, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne p7, v0, :cond_0

    .line 752
    invoke-static {p1, p2, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeSHA256([B[B[B)[B

    move-result-object p1

    goto :goto_1

    .line 756
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2A([B[B[B)[B

    move-result-object p1

    goto :goto_1

    .line 745
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "/Encrypt/OE entry is missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p6, :cond_4

    new-array p2, v3, [B

    .line 768
    invoke-static {p4, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p3, 0x0

    if-ne p7, v0, :cond_3

    .line 772
    invoke-static {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeSHA256([B[B[B)[B

    move-result-object p1

    goto :goto_0

    .line 776
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2A([B[B[B)[B

    move-result-object p1

    :goto_0
    move-object p5, p6

    :goto_1
    :try_start_0
    const-string p2, "AES/CBC/NoPadding"

    .line 783
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 784
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string p4, "AES"

    invoke-direct {p3, p1, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    const/16 p4, 0x10

    new-array p4, p4, [B

    invoke-direct {p1, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 785
    invoke-virtual {p2, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 789
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->logIfStrongEncryptionMissing()V

    .line 790
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 765
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "/Encrypt/UE entry is missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeHash2A([B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, v0, [B

    goto :goto_0

    .line 1072
    :cond_0
    array-length v1, p3

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    .line 1076
    array-length v1, p3

    if-le v1, v2, :cond_1

    new-array v1, v2, [B

    .line 1080
    invoke-static {p3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v1

    .line 1087
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncate127([B)[B

    move-result-object p1

    .line 1088
    invoke-static {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B[B)[B

    move-result-object p2

    .line 1089
    invoke-static {p2, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2B([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 1074
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Bad U length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static computeHash2B([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    :try_start_0
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA256()Ljava/security/MessageDigest;

    move-result-object v0

    .line 1099
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x40

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 1102
    array-length v5, v1

    sub-int/2addr v5, v4

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v2, -0x20

    if-le v1, v5, :cond_0

    goto :goto_1

    .line 1149
    :cond_0
    array-length p1, p0

    const/16 p2, 0x20

    if-le p1, p2, :cond_1

    new-array p1, p2, [B

    .line 1152
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/16 v1, 0x30

    if-eqz p2, :cond_3

    .line 1105
    array-length v5, p2

    if-lt v5, v1, :cond_3

    .line 1107
    array-length v5, p1

    array-length v6, p0

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    mul-int/2addr v5, v3

    new-array v5, v5, [B

    goto :goto_2

    .line 1111
    :cond_3
    array-length v5, p1

    array-length v6, p0

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    new-array v5, v5, [B

    :goto_2
    move v6, v0

    move v7, v6

    :goto_3
    if-ge v6, v3, :cond_5

    .line 1117
    array-length v8, p1

    invoke-static {p1, v0, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1118
    array-length v8, p1

    add-int/2addr v7, v8

    .line 1119
    array-length v8, p0

    invoke-static {p0, v0, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    array-length v8, p0

    add-int/2addr v7, v8

    if-eqz p2, :cond_4

    .line 1121
    array-length v8, p2

    if-lt v8, v1, :cond_4

    .line 1123
    invoke-static {p2, v0, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x30

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x10

    new-array v3, v1, [B

    new-array v6, v1, [B

    .line 1130
    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    invoke-static {p0, v1, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "AES/CBC/NoPadding"

    .line 1133
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 1134
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1135
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1136
    invoke-virtual {p0, v4, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1137
    invoke-virtual {p0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-array v3, v1, [B

    .line 1140
    invoke-static {p0, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1141
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1142
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->HASHES_2B:[Ljava/lang/String;

    .line 1143
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aget-object v1, v3, v1

    .line 1145
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1146
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v9, v1

    move-object v1, p0

    move-object p0, v9

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 1162
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->logIfStrongEncryptionMissing()V

    .line 1163
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private computeRC4key([BII)[B
    .locals 3

    .line 899
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getMD5()Ljava/security/MessageDigest;

    move-result-object v0

    .line 900
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncateOrPad([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, v2

    :goto_0
    const/16 v1, 0x32

    if-ge p2, v1, :cond_1

    .line 908
    invoke-virtual {v0, p1, v2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 909
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 912
    :cond_1
    new-array p2, p3, [B

    .line 913
    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private computeRevisionNumber(I)I
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getProtectionPolicy()Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;

    .line 102
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->getPermissions()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->hasAnyRevision3PermissionSet()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v3, :cond_4

    .line 116
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->hasAnyRevision3PermissionSet()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method private static computeSHA256([B[B[B)[B
    .locals 1

    .line 1169
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA256()Ljava/security/MessageDigest;

    move-result-object v0

    .line 1170
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1171
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    if-nez p2, :cond_0

    .line 1172
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static concat([B[B)[B
    .locals 3

    .line 1177
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1178
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static concat([B[B[B)[B
    .locals 4

    .line 1185
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1186
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1188
    array-length p0, p0

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getDocumentIDBytes(Lcom/tom_roush/pdfbox/cos/COSArray;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 295
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 296
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    :goto_0
    return-object p1
.end method

.method private isUserPassword234([B[B[BI[BIIZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 974
    invoke-virtual/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeUserPassword([B[BI[BIIZ)[B

    move-result-object v1

    const/4 v2, 0x2

    move v3, p6

    if-ne v3, v2, :cond_0

    .line 978
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_0
    const/16 v2, 0x10

    .line 983
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private isUserPassword56([B[BI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncate127([B)[B

    move-result-object p1

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0x8

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 992
    invoke-static {p2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    invoke-static {p2, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x5

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    .line 998
    invoke-static {p1, v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeSHA256([B[B[B)[B

    move-result-object p1

    goto :goto_0

    .line 1002
    :cond_0
    invoke-direct {p0, p1, v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2A([B[B[B)[B

    move-result-object p1

    .line 1005
    :goto_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private static logIfStrongEncryptionMissing()V
    .locals 2

    :try_start_0
    const-string v0, "AES"

    .line 1207
    invoke-static {v0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "JCE unlimited strength jurisdiction policy files are not installed"

    .line 1209
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1

    .line 552
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;-><init>()V

    .line 553
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->setCryptFilterMethod(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 554
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getKeyLength()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->setLength(I)V

    .line 555
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setStdCryptFilterDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V

    .line 556
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->STD_CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setStreamFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 557
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->STD_CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setStringFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const/4 p1, 0x1

    .line 558
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setAES(Z)V

    return-void
.end method

.method private prepareEncryptionDictRev2345(Ljava/lang/String;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;ILcom/tom_roush/pdfbox/pdmodel/PDDocument;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v13, p3

    move/from16 v14, p6

    .line 507
    invoke-virtual/range {p5 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getDocumentID()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 512
    :cond_0
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getMD5()Ljava/security/MessageDigest;

    move-result-object v1

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 515
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 516
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 517
    invoke-virtual/range {p5 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 520
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    .line 522
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 523
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 524
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 525
    invoke-virtual/range {p5 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setDocumentID(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    :cond_1
    const/4 v2, 0x0

    .line 528
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 530
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 532
    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move/from16 v10, p7

    .line 530
    invoke-virtual {v12, v0, v1, v14, v10}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeOwnerPassword([B[BII)[B

    move-result-object v15

    .line 534
    sget-object v0, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 535
    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 536
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v4

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 534
    invoke-virtual/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeUserPassword([B[BI[BIIZ)[B

    move-result-object v11

    .line 538
    sget-object v0, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 539
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v7

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, v16

    move-object v14, v11

    move/from16 v11, v17

    .line 538
    invoke-virtual/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKey([B[B[B[B[BI[BIIZZ)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setEncryptionKey([B)V

    .line 541
    invoke-virtual {v13, v15}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setOwnerKey([B)V

    .line 542
    invoke-virtual {v13, v14}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setUserKey([B)V

    const/4 v0, 0x4

    move/from16 v1, p6

    if-ne v1, v0, :cond_2

    .line 546
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->AESV2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v12, v13, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;)V

    :cond_2
    return-void
.end method

.method private prepareEncryptionDictRev6(Ljava/lang/String;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AES"

    .line 420
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const-string v2, "AES/CBC/NoPadding"

    .line 421
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 424
    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setEncryptionKey([B)V

    .line 425
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getEncryptionKey()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 428
    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncate127([B)[B

    move-result-object p2

    const/16 v3, 0x8

    new-array v4, v3, [B

    new-array v5, v3, [B

    .line 431
    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 432
    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 433
    invoke-static {p2, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2B([B[B[B)[B

    move-result-object v6

    .line 435
    invoke-static {v6, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B[B)[B

    move-result-object v4

    .line 438
    invoke-static {p2, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B)[B

    move-result-object v5

    invoke-static {v5, p2, v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2B([B[B[B)[B

    move-result-object p2

    .line 440
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v6, 0x10

    new-array v7, v6, [B

    invoke-direct {p2, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v5, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 442
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getEncryptionKey()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 445
    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncate127([B)[B

    move-result-object p1

    new-array v5, v3, [B

    new-array v8, v3, [B

    .line 448
    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 449
    invoke-virtual {v1, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 450
    invoke-static {p1, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B[B)[B

    move-result-object v9

    invoke-static {v9, p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2B([B[B[B)[B

    move-result-object v9

    .line 452
    invoke-static {v9, v5, v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B[B)[B

    move-result-object v5

    .line 455
    invoke-static {p1, v8, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->concat([B[B[B)[B

    move-result-object v8

    invoke-static {v8, p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2B([B[B[B)[B

    move-result-object p1

    .line 457
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v8, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    new-array v9, v6, [B

    invoke-direct {p1, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v7, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 459
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getEncryptionKey()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 462
    invoke-virtual {p3, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setUserKey([B)V

    .line 463
    invoke-virtual {p3, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setUserEncryptionKey([B)V

    .line 464
    invoke-virtual {p3, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setOwnerKey([B)V

    .line 465
    invoke-virtual {p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setOwnerEncryptionKey([B)V

    .line 467
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->AESV3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;)V

    new-array p1, v6, [B

    const/4 p2, 0x0

    int-to-byte v4, p4

    aput-byte v4, p1, p2

    ushr-int/lit8 p2, p4, 0x8

    int-to-byte p2, p2

    aput-byte p2, p1, v7

    ushr-int/lit8 p2, p4, 0x10

    int-to-byte p2, p2

    const/4 v4, 0x2

    aput-byte p2, p1, v4

    ushr-int/lit8 p2, p4, 0x18

    int-to-byte p2, p2

    const/4 p4, 0x3

    aput-byte p2, p1, p4

    const/4 p2, 0x4

    const/4 p4, -0x1

    aput-byte p4, p1, p2

    const/4 p2, 0x5

    aput-byte p4, p1, p2

    const/4 p2, 0x6

    aput-byte p4, p1, p2

    const/4 p2, 0x7

    aput-byte p4, p1, p2

    const/16 p2, 0x54

    aput-byte p2, p1, v3

    const/16 p2, 0x9

    const/16 p4, 0x61

    aput-byte p4, p1, p2

    const/16 p2, 0xa

    const/16 p4, 0x64

    aput-byte p4, p1, p2

    const/16 p2, 0xb

    const/16 p4, 0x62

    aput-byte p4, p1, p2

    const/16 p2, 0xc

    :goto_0
    const/16 p4, 0xf

    if-gt p2, p4, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 488
    :cond_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getEncryptionKey()[B

    move-result-object p4

    invoke-direct {p2, p4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    new-array v0, v6, [B

    invoke-direct {p4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v7, p2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 491
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 493
    invoke-virtual {p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setPerms([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 497
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->logIfStrongEncryptionMissing()V

    .line 498
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static truncate127([B)[B
    .locals 3

    .line 1194
    array-length v0, p0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 1199
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private truncateOrPad([B)[B
    .locals 4

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->ENCRYPT_PADDING:[B

    .line 927
    array-length v1, v0

    new-array v2, v1, [B

    .line 928
    array-length v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    .line 929
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    array-length p1, v0

    sub-int/2addr p1, v1

    invoke-static {v0, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private validatePerms(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "%08X"

    const-string v1, "Verification of permissions failed ("

    :try_start_0
    const-string v2, "AES/ECB/NoPadding"

    .line 313
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 314
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getEncryptionKey()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 315
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getPerms()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/16 v2, 0x9

    .line 318
    aget-byte v2, p1, v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x61

    const-string v5, "PdfBox-Android"

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    :try_start_1
    aget-byte v2, p1, v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    const/16 v3, 0x62

    if-eq v2, v3, :cond_1

    :cond_0
    const-string v2, "Verification of permissions failed (constant)"

    .line 320
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    .line 325
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x1

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v3, v7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    if-eq v3, p2, :cond_2

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 330
    invoke-static {v5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_3

    .line 334
    aget-byte p2, p1, v8

    const/16 v0, 0x54

    if-ne p2, v0, :cond_4

    :cond_3
    if-nez p3, :cond_5

    aget-byte p1, p1, v8

    const/16 p2, 0x46

    if-eq p1, p2, :cond_5

    :cond_4
    const-string p1, "Verification of permissions failed (EncryptMetadata)"

    .line 336
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 341
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->logIfStrongEncryptionMissing()V

    .line 342
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public computeEncryptedKey([B[B[B[B[BI[BIIZZ)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v7, p8

    const/4 v0, 0x6

    if-eq v7, v0, :cond_1

    const/4 v0, 0x5

    if-ne v7, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move-object v4, p7

    move/from16 v5, p10

    move/from16 v6, p9

    move/from16 v7, p8

    .line 688
    invoke-direct/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKeyRev234([B[BI[BZII)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p11

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p8

    .line 684
    invoke-direct/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKeyRev56([BZ[B[B[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public computeOwnerPassword([B[BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected length=5 actual="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 871
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeRC4key([BII)[B

    move-result-object p1

    .line 872
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncateOrPad([B)[B

    move-result-object p2

    .line 874
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 875
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    const/4 p2, 0x4

    if-ne p3, p2, :cond_4

    .line 879
    :cond_2
    array-length p2, p1

    new-array p3, p2, [B

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 882
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-ge v2, p2, :cond_3

    .line 885
    aget-byte v1, p3, v2

    int-to-byte v3, v0

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 887
    :cond_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 888
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 889
    invoke-virtual {p0, p3, v1, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 893
    :cond_4
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public computeUserPassword([B[BI[BIIZ)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v12, p0

    move/from16 v13, p5

    .line 813
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 814
    invoke-virtual/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKey([B[B[B[B[BI[BIIZZ)[B

    move-result-object v0

    const/4 v1, 0x2

    if-ne v13, v1, :cond_0

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->ENCRYPT_PADDING:[B

    .line 819
    invoke-virtual {p0, v0, v1, v14}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([B[BLjava/io/OutputStream;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-eq v13, v1, :cond_1

    const/4 v1, 0x4

    if-ne v13, v1, :cond_4

    .line 823
    :cond_1
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getMD5()Ljava/security/MessageDigest;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->ENCRYPT_PADDING:[B

    .line 824
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v2, p4

    .line 826
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 827
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 829
    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v5, :cond_3

    .line 832
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_2

    .line 835
    aget-byte v6, v2, v5

    xor-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 837
    :cond_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 838
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 839
    invoke-virtual {p0, v2, v5, v14}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 843
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->ENCRYPT_PADDING:[B

    .line 844
    invoke-static {v1, v3, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 846
    invoke-virtual {v14, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 848
    :cond_4
    :goto_2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserPassword([B[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 631
    invoke-direct {p0, p1, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeRC4key([BII)[B

    move-result-object p1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_0

    .line 635
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([B[BLjava/io/OutputStream;)V

    goto :goto_2

    :cond_0
    const/4 p4, 0x3

    if-eq p3, p4, :cond_1

    const/4 p4, 0x4

    if-ne p3, p4, :cond_3

    .line 639
    :cond_1
    array-length p3, p1

    new-array p4, p3, [B

    .line 640
    array-length v1, p2

    new-array v1, v1, [B

    .line 641
    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x13

    :goto_0
    if-ltz p2, :cond_3

    .line 645
    array-length v2, p1

    invoke-static {p1, v3, p4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    :goto_1
    if-ge v2, p3, :cond_2

    .line 648
    aget-byte v4, p4, v2

    int-to-byte v5, p2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 650
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 651
    invoke-virtual {p0, p4, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->encryptDataRC4([B[BLjava/io/OutputStream;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 655
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public isOwnerPassword(Ljava/lang/String;[B[BI[BIIZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1060
    sget-object v0, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object v1, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isOwnerPassword([B[B[BI[BIIZ)Z

    move-result v0

    return v0
.end method

.method public isOwnerPassword([B[B[BI[BIIZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v9, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p6

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq v6, v0, :cond_1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    move/from16 v7, p7

    .line 609
    invoke-virtual {p0, p1, p3, v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getUserPassword([B[BII)[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    .line 610
    invoke-virtual/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword([B[B[BI[BIIZ)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    move-object v0, p1

    .line 583
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->truncate127([B)[B

    move-result-object v0

    const/16 v4, 0x20

    new-array v5, v4, [B

    const/16 v7, 0x8

    new-array v8, v7, [B

    .line 587
    array-length v10, v3

    const/16 v11, 0x28

    if-lt v10, v11, :cond_3

    const/4 v10, 0x0

    .line 592
    invoke-static {p3, v10, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    invoke-static {p3, v4, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v6, v1, :cond_2

    .line 598
    invoke-static {v0, v8, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeSHA256([B[B[B)[B

    move-result-object v0

    goto :goto_1

    .line 602
    :cond_2
    invoke-direct {p0, v0, v8, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeHash2A([B[B[B)[B

    move-result-object v0

    .line 605
    :goto_1
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 590
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Owner password is too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUserPassword(Ljava/lang/String;[B[BI[BIIZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    move v6, p6

    const/4 v1, 0x6

    if-eq v6, v1, :cond_1

    const/4 v1, 0x5

    if-ne v6, v1, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword([B[B[BI[BIIZ)Z

    move-result v0

    return v0

    .line 1030
    :cond_1
    :goto_0
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword([B[B[BI[BIIZ)Z

    move-result v0

    return v0
.end method

.method public isUserPassword([B[B[BI[BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p6, v0, :cond_2

    const/4 v0, 0x3

    if-eq p6, v0, :cond_2

    const/4 v0, 0x4

    if-eq p6, v0, :cond_2

    const/4 p3, 0x5

    if-eq p6, p3, :cond_1

    const/4 p3, 0x6

    if-ne p6, p3, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown Encryption Revision "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 964
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword56([B[BI)Z

    move-result p1

    return p1

    .line 960
    :cond_2
    invoke-direct/range {p0 .. p8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword234([B[B[BI[BIIZ)Z

    move-result p1

    return p1
.end method

.method public prepareDocumentForEncryption(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>()V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeVersionNumber()I

    move-result v1

    .line 362
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeRevisionNumber(I)I

    move-result v7

    const-string v2, "Standard"

    .line 363
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setFilter(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setVersion(I)V

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 368
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->removeV45filters()V

    .line 370
    :cond_1
    invoke-virtual {v0, v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setRevision(I)V

    .line 371
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getKeyLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setLength(I)V

    .line 373
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getProtectionPolicy()Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;

    .line 374
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->getOwnerPassword()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v2, :cond_2

    move-object v2, v4

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v4

    .line 386
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v3

    .line 391
    :cond_4
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->getPermissions()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->getPermissionBytes()I

    move-result v5

    .line 393
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setPermissions(I)V

    .line 395
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getKeyLength()I

    move-result v1

    div-int/lit8 v8, v1, 0x8

    const/4 v1, 0x6

    if-ne v7, v1, :cond_5

    .line 400
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->saslPrepStored(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->saslPrepStored(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-direct {p0, v1, v2, v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->prepareEncryptionDictRev6(Ljava/lang/String;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;I)V

    goto :goto_0

    :cond_5
    move-object v1, p0

    move-object v4, v0

    move-object v6, p1

    .line 406
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->prepareEncryptionDictRev2345(Ljava/lang/String;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;ILcom/tom_roush/pdfbox/pdmodel/PDDocument;II)V

    .line 410
    :goto_0
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setEncryptionDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;)V

    .line 411
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setEncryptionDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public prepareForDecryption(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    .line 140
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;

    if-eqz v1, :cond_11

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getStreamFilterName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setStreamFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getStringFilterName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setStringFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->isEncryptMetaData()Z

    move-result v1

    invoke-virtual {v12, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setDecryptMetadata(Z)V

    .line 151
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;

    .line 153
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 159
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getPermissions()I

    move-result v13

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getRevision()I

    move-result v14

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v1

    const/4 v3, 0x1

    const/4 v15, 0x5

    if-ne v1, v3, :cond_2

    move v1, v15

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 163
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v4

    if-eq v4, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v2

    if-ne v2, v15, :cond_7

    .line 168
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getStdCryptFilterDictionary()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 171
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCryptFilterMethod()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    .line 172
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->AESV2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Using "

    const-string v6, "PdfBox-Android"

    if-eqz v4, :cond_5

    .line 175
    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setAES(Z)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    const/16 v4, 0x10

    if-eqz v1, :cond_4

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ge v1, v4, :cond_4

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " bytes key length instead of 16 in AESV2 encryption?!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v1, v4

    .line 188
    :cond_5
    :goto_1
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->AESV3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setAES(Z)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_6

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ge v1, v2, :cond_6

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes key length instead of 32 in AESV3 encryption?!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v1, p2

    move v9, v2

    goto :goto_3

    :cond_7
    :goto_2
    move v9, v1

    move-object/from16 v1, p2

    .line 207
    :goto_3
    invoke-direct {v12, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getDocumentIDBytes(Lcom/tom_roush/pdfbox/cos/COSArray;)[B

    move-result-object v10

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->isEncryptMetaData()Z

    move-result v11

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getUserKey()[B

    move-result-object v16

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getOwnerKey()[B

    move-result-object v8

    .line 216
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v7, 0x6

    if-eq v14, v7, :cond_9

    if-ne v14, v15, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    move-object v6, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v17

    goto :goto_5

    .line 219
    :cond_9
    :goto_4
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getUserEncryptionKey()[B

    move-result-object v2

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getOwnerEncryptionKey()[B

    move-result-object v3

    move-object v6, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    :goto_5
    if-ne v14, v7, :cond_a

    .line 226
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SaslPrep;->saslPrepQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v5, v0

    .line 231
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object v3, v8

    move v4, v13

    move-object/from16 v19, v5

    move-object v5, v10

    move-object/from16 v20, v6

    move v6, v14

    move v15, v7

    move v7, v9

    move-object/from16 v21, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isOwnerPassword([B[B[BI[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->getOwnerAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v0

    .line 236
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setCurrentAccessPermission(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V

    if-eq v14, v15, :cond_c

    const/4 v0, 0x5

    if-ne v14, v0, :cond_b

    goto :goto_6

    :cond_b
    move-object/from16 v8, v19

    move-object/from16 v7, v20

    .line 245
    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object/from16 v6, v21

    invoke-virtual {v12, v0, v6, v14, v9}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->getUserPassword([B[BII)[B

    move-result-object v0

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    .line 241
    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_7
    move-object v1, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v2, v6

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move v6, v13

    move-object v7, v10

    move v8, v14

    move v10, v11

    move/from16 p2, v11

    move/from16 v11, v19

    .line 250
    invoke-virtual/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKey([B[B[B[B[BI[BIIZZ)[B

    move-result-object v0

    .line 249
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setEncryptionKey([B)V

    move v0, v15

    goto :goto_8

    :cond_d
    move/from16 p2, v11

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    .line 259
    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object v3, v6

    move v4, v13

    move-object v5, v10

    move-object v11, v6

    move v6, v14

    move-object v15, v7

    move v7, v9

    move/from16 v20, v9

    move-object v9, v8

    move/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->isUserPassword([B[B[BI[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    invoke-direct {v0, v13}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;-><init>(I)V

    .line 264
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setReadOnly()V

    .line 265
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setCurrentAccessPermission(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V

    .line 269
    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move v6, v13

    move-object v7, v10

    move v8, v14

    move/from16 v9, v20

    move/from16 v10, p2

    move v11, v15

    .line 268
    invoke-virtual/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->computeEncryptedKey([B[B[B[B[BI[BIIZZ)[B

    move-result-object v0

    .line 267
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->setEncryptionKey([B)V

    const/4 v0, 0x6

    :goto_8
    if-eq v14, v0, :cond_e

    const/4 v0, 0x5

    if-ne v14, v0, :cond_f

    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 284
    invoke-direct {v12, v0, v13, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardSecurityHandler;->validatePerms(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;IZ)V

    :cond_f
    return-void

    .line 279
    :cond_10
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/InvalidPasswordException;

    const-string v1, "Cannot decrypt PDF, the password is incorrect"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/InvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Decryption material is not compatible with the document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
