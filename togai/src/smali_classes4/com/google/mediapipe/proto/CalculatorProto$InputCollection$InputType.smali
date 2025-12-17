.class public final enum Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
.super Ljava/lang/Enum;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final enum FOREIGN_CSV_TEXT:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final FOREIGN_CSV_TEXT_VALUE:I = 0x3

.field public static final enum FOREIGN_RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final FOREIGN_RECORDIO_VALUE:I = 0x2

.field public static final enum INVALID_UPPER_BOUND:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final INVALID_UPPER_BOUND_VALUE:I = 0x4

.field public static final enum RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final RECORDIO_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field public static final UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1074
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->UNKNOWN:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1088
    new-instance v1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const-string v2, "RECORDIO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1098
    new-instance v2, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const-string v3, "FOREIGN_RECORDIO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->FOREIGN_RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1110
    new-instance v3, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const-string v4, "FOREIGN_CSV_TEXT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->FOREIGN_CSV_TEXT:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1119
    new-instance v4, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const-string v5, "INVALID_UPPER_BOUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->INVALID_UPPER_BOUND:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1120
    new-instance v5, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->UNRECOGNIZED:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    filled-new-array/range {v0 .. v5}, [Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->$VALUES:[Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1214
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$1;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->INVALID_UPPER_BOUND:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->FOREIGN_CSV_TEXT:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->FOREIGN_RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->RECORDIO:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->UNKNOWN:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1224
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    invoke-static {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->forNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1064
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->$VALUES:[Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    .line 1064
    invoke-virtual {v0}, [Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->UNRECOGNIZED:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->value:I

    return v0

    .line 1182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
