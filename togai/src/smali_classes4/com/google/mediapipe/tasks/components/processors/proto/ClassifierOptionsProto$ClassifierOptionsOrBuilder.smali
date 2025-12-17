.class public interface abstract Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptionsOrBuilder;
.super Ljava/lang/Object;
.source "ClassifierOptionsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassifierOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract getCategoryAllowlist(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCategoryAllowlistBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCategoryAllowlistCount()I
.end method

.method public abstract getCategoryAllowlistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryDenylist(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCategoryDenylistBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCategoryDenylistCount()I
.end method

.method public abstract getCategoryDenylistList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayNamesLocale()Ljava/lang/String;
.end method

.method public abstract getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMaxResults()I
.end method

.method public abstract getScoreThreshold()F
.end method

.method public abstract hasDisplayNamesLocale()Z
.end method

.method public abstract hasMaxResults()Z
.end method

.method public abstract hasScoreThreshold()Z
.end method
