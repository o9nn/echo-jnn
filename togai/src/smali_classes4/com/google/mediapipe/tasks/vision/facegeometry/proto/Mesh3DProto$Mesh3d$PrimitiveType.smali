.class public final enum Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
.super Ljava/lang/Enum;
.source "Mesh3DProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType$PrimitiveTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

.field public static final enum TRIANGLE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

.field public static final TRIANGLE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 208
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->TRIANGLE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    filled-new-array {v0}, [Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->$VALUES:[Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    .line 248
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType$1;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->TRIANGLE:Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 258
    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType$PrimitiveTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
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

    .line 233
    invoke-static {p0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    .line 199
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->$VALUES:[Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    .line 199
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;->value:I

    return v0
.end method
