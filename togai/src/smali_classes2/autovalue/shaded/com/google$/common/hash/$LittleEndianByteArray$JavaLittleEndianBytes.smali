.class abstract enum Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "$LittleEndianByteArray.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

.field public static final enum INSTANCE:Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method private static synthetic $values()[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    const/4 v1, 0x0

    sget-object v2, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 207
    new-instance v0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes$1;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    .line 206
    invoke-static {}, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->$values()[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    .line 206
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    .line 206
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/common/hash/$LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method
