.class abstract enum Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;
.super Ljava/lang/Enum;
.source "$Hashing.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/hash/$ImmutableSupplier;


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/hash/$Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ChecksumType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;",
        ">;",
        "Lautovalue/shaded/com/google$/common/hash/$ImmutableSupplier<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

.field public static final enum ADLER_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

.field public static final enum CRC_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;


# instance fields
.field public final hashFunction:Lautovalue/shaded/com/google$/common/hash/$HashFunction;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    const/4 v1, 0x0

    sget-object v2, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->CRC_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->ADLER_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 383
    new-instance v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType$1;

    const/4 v1, 0x0

    const-string v2, "Hashing.crc32()"

    const-string v3, "CRC_32"

    invoke-direct {v0, v3, v1, v2}, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->CRC_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    .line 389
    new-instance v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType$2;

    const/4 v1, 0x1

    const-string v2, "Hashing.adler32()"

    const-string v3, "ADLER_32"

    invoke-direct {v0, v3, v1, v2}, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->ADLER_32:Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    .line 381
    invoke-static {}, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->$values()[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->$VALUES:[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    new-instance p1, Lautovalue/shaded/com/google$/common/hash/$ChecksumHashFunction;

    const/16 p2, 0x20

    invoke-direct {p1, p0, p2, p3}, Lautovalue/shaded/com/google$/common/hash/$ChecksumHashFunction;-><init>(Lautovalue/shaded/com/google$/common/hash/$ImmutableSupplier;ILjava/lang/String;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->hashFunction:Lautovalue/shaded/com/google$/common/hash/$HashFunction;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lautovalue/shaded/com/google$/common/hash/$Hashing$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    .line 381
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->$VALUES:[Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    .line 381
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/hash/$Hashing$ChecksumType;

    return-object v0
.end method
