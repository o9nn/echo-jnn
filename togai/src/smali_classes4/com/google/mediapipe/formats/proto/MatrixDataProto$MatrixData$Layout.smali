.class public final enum Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
.super Ljava/lang/Enum;
.source "MatrixDataProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout$LayoutVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

.field public static final enum COLUMN_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

.field public static final COLUMN_MAJOR_VALUE:I = 0x0

.field public static final enum ROW_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

.field public static final ROW_MAJOR_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    new-instance v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    const-string v1, "COLUMN_MAJOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->COLUMN_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    .line 103
    new-instance v1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    const-string v2, "ROW_MAJOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->ROW_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    filled-new-array {v0, v1}, [Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->$VALUES:[Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    .line 144
    new-instance v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout$1;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->ROW_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->COLUMN_MAJOR:Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 154
    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout$LayoutVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
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

    .line 128
    invoke-static {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->forNumber(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    .line 94
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->$VALUES:[Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    .line 94
    invoke-virtual {v0}, [Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;->value:I

    return v0
.end method
