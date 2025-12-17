.class public Lorg/objenesis/instantiator/sun/MagicInstantiator;
.super Ljava/lang/Object;
.source "MagicInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# static fields
.field private static CONSTANT_POOL_COUNT:I = 0x0

.field private static final CONSTRUCTOR_CODE:[B

.field private static final CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

.field private static final CONSTRUCTOR_DESC:Ljava/lang/String; = "()V"

.field private static final CONSTRUCTOR_NAME:Ljava/lang/String; = "<init>"

.field private static final INDEX_CLASS_INTERFACE:I = 0x9

.field private static final INDEX_CLASS_OBJECT:I = 0xe

.field private static final INDEX_CLASS_SUPERCLASS:I = 0x2

.field private static final INDEX_CLASS_THIS:I = 0x1

.field private static final INDEX_CLASS_TYPE:I = 0x11

.field private static final INDEX_METHODREF_OBJECT_CONSTRUCTOR:I = 0xd

.field private static final INDEX_NAMEANDTYPE_DEFAULT_CONSTRUCTOR:I = 0x10

.field private static final INDEX_UTF8_CODE_ATTRIBUTE:I = 0x5

.field private static final INDEX_UTF8_CONSTRUCTOR_DESC:I = 0x4

.field private static final INDEX_UTF8_CONSTRUCTOR_NAME:I = 0x3

.field private static final INDEX_UTF8_INSTANTIATOR_CLASS:I = 0x7

.field private static final INDEX_UTF8_INTERFACE:I = 0xa

.field private static final INDEX_UTF8_NEWINSTANCE_DESC:I = 0xc

.field private static final INDEX_UTF8_NEWINSTANCE_NAME:I = 0xb

.field private static final INDEX_UTF8_OBJECT:I = 0xf

.field private static final INDEX_UTF8_SUPERCLASS:I = 0x8

.field private static final INDEX_UTF8_TYPE:I = 0x12

.field private static final MAGIC_ACCESSOR:Ljava/lang/String;

.field private static final NEWINSTANCE_CODE:[B

.field private static final NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I


# instance fields
.field private instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->getMagicClass()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->MAGIC_ACCESSOR:Ljava/lang/String;

    const/16 v0, 0x13

    sput v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTANT_POOL_COUNT:I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x49t
        0x0t
        0xdt
        -0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x45t
        0x0t
        0x11t
        0x59t
        -0x49t
        0x0t
        0xdt
        -0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object p1

    iput-object p1, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    return-void
.end method

.method private static getMagicClass()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "sun.reflect.MagicAccessorImpl"

    const-class v1, Lorg/objenesis/instantiator/sun/MagicInstantiator;

    .line 290
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v0, "sun/reflect/MagicAccessorImpl"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "jdk/internal/reflect/MagicAccessorImpl"

    return-object v0
.end method

.method private newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->getExistingClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    invoke-direct {p0, p1, v0}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->defineClass(Ljava/lang/String;[BLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 107
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/objenesis/instantiator/ObjectInstantiator;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 111
    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 109
    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v0, "L"

    .line 125
    invoke-static {p2}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    .line 130
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    sget-object v2, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->MAGIC:[B

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 133
    sget-object v2, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->VERSION:[B

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    sget v2, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTANT_POOL_COUNT:I

    .line 134
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x7

    .line 139
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 140
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x8

    .line 144
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x1

    .line 147
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v5, "<init>"

    .line 148
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v5, "()V"

    .line 152
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v5, "Code"

    .line 156
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 164
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object p2, Lorg/objenesis/instantiator/sun/MagicInstantiator;->MAGIC_ACCESSOR:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xa

    .line 173
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 177
    const-class v0, Lorg/objenesis/instantiator/ObjectInstantiator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v0, "newInstance"

    .line 181
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v0, "()Ljava/lang/Object;"

    .line 185
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xe

    .line 189
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 p2, 0x10

    .line 190
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 193
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xf

    .line 194
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 197
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string p2, "java/lang/Object"

    .line 198
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 p2, 0xc

    .line 201
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x3

    .line 202
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x4

    .line 203
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 206
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x12

    .line 207
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 210
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 p1, 0x31

    .line 216
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 219
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x2

    .line 222
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 225
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v2, 0x9

    .line 226
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 232
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 235
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 236
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 237
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 238
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x5

    .line 241
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v5, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

    .line 242
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 244
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v5, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    .line 245
    array-length v6, v5

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 246
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 247
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 248
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 251
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v5, 0xb

    .line 252
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 253
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 254
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 257
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget p2, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I

    .line 258
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 259
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 260
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object p1, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    .line 261
    array-length p2, p1

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 262
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 263
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 264
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 267
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 276
    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 270
    :goto_0
    :try_start_3
    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    .line 274
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 276
    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_2
    throw p1
.end method


# virtual methods
.method public getInstantiator()Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    return-object v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    .line 285
    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
