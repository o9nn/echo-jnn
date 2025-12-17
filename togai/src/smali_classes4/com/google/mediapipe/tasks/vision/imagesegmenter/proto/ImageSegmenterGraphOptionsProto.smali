.class public final Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto;
.super Ljava/lang/Object;
.source "ImageSegmenterGraphOptionsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;,
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptionsOrBuilder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
