.class public interface abstract Lcom/google/mediapipe/util/proto/ColorProto$ColorMapOrBuilder;
.super Ljava/lang/Object;
.source "ColorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/ColorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ColorMapOrBuilder"
.end annotation


# virtual methods
.method public abstract containsLabelToColor(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getLabelToColor()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLabelToColorCount()I
.end method

.method public abstract getLabelToColorMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelToColorOrDefault(Ljava/lang/String;Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getLabelToColorOrThrow(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method
