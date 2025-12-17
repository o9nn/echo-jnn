.class public final enum Lnet/sf/sevenzipjbinding/ArchiveFormat;
.super Ljava/lang/Enum;
.source "ArchiveFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/ArchiveFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum AR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ARJ:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CAB:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CHM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CPIO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum FAT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum HFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ISO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum LZH:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum LZMA:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum NTFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RAR5:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RPM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum SPLIT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum UDF:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum WIM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum XAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum Z:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;


# instance fields
.field private codecIndex:I

.field private methodName:Ljava/lang/String;

.field outArchiveImplementation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private supportMultipleFiles:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 203
    new-instance v7, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v6, v7

    const-string v1, "ZIP"

    const/4 v2, 0x0

    const-string v3, "Zip"

    const-class v4, Lnet/sf/sevenzipjbinding/impl/OutArchiveZipImpl;

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    sput-object v7, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 208
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v7, v0

    const-string v9, "TAR"

    const/4 v10, 0x1

    const-string v11, "Tar"

    const-class v12, Lnet/sf/sevenzipjbinding/impl/OutArchiveTarImpl;

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 213
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v8, v0

    const-string v1, "SPLIT"

    const/4 v2, 0x2

    const-string v3, "Split"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SPLIT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 218
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v9, v0

    const/4 v1, 0x3

    const-string v2, "Rar"

    const-string v3, "RAR"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 223
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v10, v0

    const/4 v1, 0x4

    const-string v2, "Rar5"

    const-string v3, "RAR5"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RAR5:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 228
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v11, v0

    const-string v1, "LZMA"

    const/4 v2, 0x5

    const-string v3, "Lzma"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->LZMA:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 233
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v12, v0

    const/4 v1, 0x6

    const-string v2, "Iso"

    const-string v3, "ISO"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ISO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 238
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v13, v0

    const-string v1, "HFS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->HFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 243
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v14, v0

    const-string v16, "GZIP"

    const/16 v17, 0x8

    const-string v18, "GZip"

    const-class v19, Lnet/sf/sevenzipjbinding/impl/OutArchiveGZipImpl;

    const/16 v20, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 248
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object v15, v0

    const/16 v1, 0x9

    const-string v2, "Cpio"

    const-string v3, "CPIO"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CPIO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 253
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v16, v0

    const-string v18, "BZIP2"

    const/16 v19, 0xa

    const-string v20, "BZip2"

    const-class v21, Lnet/sf/sevenzipjbinding/impl/OutArchiveBZip2Impl;

    const/16 v22, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 258
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v17, v0

    const-string v24, "SEVEN_ZIP"

    const/16 v25, 0xb

    const-string v26, "7z"

    const-class v27, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;

    const/16 v28, 0x1

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 263
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v18, v0

    const-string v1, "Z"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->Z:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 268
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v19, v0

    const/16 v1, 0xd

    const-string v2, "Arj"

    const-string v3, "ARJ"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ARJ:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 273
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v20, v0

    const/16 v1, 0xe

    const-string v2, "Cab"

    const-string v3, "CAB"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CAB:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 278
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v21, v0

    const/16 v1, 0xf

    const-string v2, "Lzh"

    const-string v3, "LZH"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->LZH:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 283
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v22, v0

    const/16 v1, 0x10

    const-string v2, "Chm"

    const-string v3, "CHM"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CHM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 288
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v23, v0

    const/16 v1, 0x11

    const-string v2, "Nsis"

    const-string v3, "NSIS"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 293
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v24, v0

    const/16 v1, 0x12

    const-string v2, "Ar"

    const-string v3, "AR"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->AR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 298
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v25, v0

    const/16 v1, 0x13

    const-string v2, "Rpm"

    const-string v3, "RPM"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RPM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 303
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v26, v0

    const/16 v1, 0x14

    const-string v2, "Udf"

    const-string v3, "UDF"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->UDF:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 308
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v27, v0

    const/16 v1, 0x15

    const-string v2, "Wim"

    const-string v3, "WIM"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->WIM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 313
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v28, v0

    const/16 v1, 0x16

    const-string v2, "Xar"

    const-string v3, "XAR"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->XAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 318
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v29, v0

    const/16 v1, 0x17

    const-string v2, "fat"

    const-string v3, "FAT"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->FAT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 323
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-object/from16 v30, v0

    const/16 v1, 0x18

    const-string v2, "ntfs"

    const-string v3, "NTFS"

    invoke-direct {v0, v3, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NTFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    filled-new-array/range {v6 .. v30}, [Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v0

    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->$VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x2

    iput p1, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->codecIndex:I

    iput-object p3, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    iput-object p4, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    iput-boolean p5, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->supportMultipleFiles:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 339
    invoke-direct/range {v0 .. v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method static findOutArchiveImplementationToInterface(Ljava/lang/Class;)Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/IOutCreateArchive<",
            "*>;>;)",
            "Lnet/sf/sevenzipjbinding/ArchiveFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 413
    invoke-static {}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 414
    invoke-virtual {v3}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_1
    new-instance p0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-class v0, Lnet/sf/sevenzipjbinding/IOutArchive;

    const-string v0, "Can\'t determine corresponding archive format to the interface IOutArchive."

    .line 420
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    const-class v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 199
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->$VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 199
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/ArchiveFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/sevenzipjbinding/ArchiveFormat;

    return-object v0
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutArchiveImplementation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    return-object v0
.end method

.method public isOutArchiveSupported()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportMultipleFiles()Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->supportMultipleFiles:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    return-object v0
.end method
