.class Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$1;
.super Ljava/lang/Object;
.source "Mesh3DProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;->forNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType$1;->findValueByNumber(I)Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;

    move-result-object p1

    return-object p1
.end method
