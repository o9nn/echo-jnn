.class public final Lcom/google/protobuf/RuntimeVersion;
.super Ljava/lang/Object;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;,
        Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;
    }
.end annotation


# static fields
.field public static final DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final MAJOR:I = 0x4

.field public static final MINOR:I = 0x1a

.field public static final PATCH:I = 0x1

.field public static final SUFFIX:Ljava/lang/String; = ""

.field private static final VERSION_STRING:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x4

    const/16 v3, 0x1a

    .line 34
    invoke-static {v2, v3, v0, v1}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    const-class v0, Lcom/google/protobuf/RuntimeVersion;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/RuntimeVersion;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDisabled()Z
    .locals 2

    const-string v0, "TEMORARILY_DISABLE_PROTOBUF_VERSION_CHECK"

    .line 126
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/protobuf/RuntimeVersion;->checkDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersionImpl(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static validateProtobufGencodeVersionImpl(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "domain",
            "major",
            "minor",
            "patch",
            "suffix",
            "location"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/google/protobuf/RuntimeVersion;->checkDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/RuntimeVersion;->versionString(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    sget-object v1, Lcom/google/protobuf/RuntimeVersion;->DOMAIN:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    if-ne p0, v1, :cond_5

    const/4 p0, 0x4

    if-ne p1, p0, :cond_4

    const/16 p0, 0x1a

    if-lt p0, p2, :cond_3

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    if-lt p0, p3, :cond_3

    :cond_1
    const-string p0, ""

    .line 100
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 101
    :cond_2
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    sget-object p1, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime version suffixes when loading %s: gencode %s, runtime %s. Version suffixes must be the same."

    .line 102
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_3
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    sget-object p1, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Detected incompatible Protobuf Gencode/Runtime versions when loading %s: gencode %s, runtime %s. Runtime version cannot be older than the linked gencode version."

    .line 93
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_4
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    sget-object p1, Lcom/google/protobuf/RuntimeVersion;->VERSION_STRING:Ljava/lang/String;

    filled-new-array {p5, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime major versions when loading %s: gencode %s, runtime %s. Same major version is required."

    .line 84
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_5
    new-instance p1, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    const-string p2, "Detected mismatched Protobuf Gencode/Runtime domains when loading %s: gencode %s, runtime %s. Cross-domain usage of Protobuf is not supported."

    filled-new-array {p5, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 75
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_6
    new-instance p0, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid gencode version: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/RuntimeVersion$ProtobufRuntimeVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static versionString(IIILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "major",
            "minor",
            "patch",
            "suffix"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%d.%d%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
