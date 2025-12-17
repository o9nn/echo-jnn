.class final Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$VertexTypeVerifier;
.super Ljava/lang/Object;
.source "Mesh3DProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VertexTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$VertexTypeVerifier;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$VertexTypeVerifier;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$VertexTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
