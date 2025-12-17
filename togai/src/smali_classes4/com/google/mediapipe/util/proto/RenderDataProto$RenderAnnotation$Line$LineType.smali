.class public final enum Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
.super Ljava/lang/Enum;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$LineTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

.field public static final enum DASHED:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

.field public static final DASHED_VALUE:I = 0x2

.field public static final enum SOLID:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

.field public static final SOLID_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4838
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->UNKNOWN:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    .line 4842
    new-instance v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    const-string v2, "SOLID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->SOLID:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    .line 4846
    new-instance v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    const-string v3, "DASHED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->DASHED:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    filled-new-array {v0, v1, v2}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    .line 4892
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$1;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 4916
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->DASHED:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->SOLID:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->UNKNOWN:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 4902
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$LineTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
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

    .line 4875
    invoke-static {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    .line 4833
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->$VALUES:[Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    .line 4833
    invoke-virtual {v0}, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->value:I

    return v0
.end method
