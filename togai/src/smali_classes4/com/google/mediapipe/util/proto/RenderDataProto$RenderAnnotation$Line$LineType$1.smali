.class Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$1;
.super Ljava/lang/Object;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 4896
    invoke-static {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

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

    .line 4893
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType$1;->findValueByNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$LineType;

    move-result-object p1

    return-object p1
.end method
