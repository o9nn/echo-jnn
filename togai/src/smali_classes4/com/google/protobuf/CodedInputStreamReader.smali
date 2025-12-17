.class final Lcom/google/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/google/protobuf/Reader;


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final NEXT_TAG_UNSET:I


# instance fields
.field private endGroupTag:I

.field private final input:Lcom/google/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    const-string v0, "input"

    .line 44
    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/CodedInputStream;

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 45
    iput-object p0, p1, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static forCodedInput(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/CodedInputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/google/protobuf/CodedInputStream;->wrapper:Lcom/google/protobuf/CodedInputStreamReader;

    return-object p0

    .line 40
    :cond_0
    new-instance v0, Lcom/google/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/google/protobuf/CodedInputStreamReader;-><init>(Lcom/google/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 220
    invoke-static {v1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 223
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    return-void

    .line 225
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 230
    throw p1
.end method

.method private mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 186
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 187
    iget v1, v1, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    iget v2, v2, Lcom/google/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 192
    invoke-virtual {v1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 193
    iget v2, v1, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    .line 194
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    const/4 p2, 0x0

    .line 195
    invoke-virtual {p1, p2}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 196
    iget p2, p1, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/protobuf/CodedInputStream;->recursionDepth:I

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 198
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldType",
            "messageType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/google/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 1317
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1313
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1311
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1309
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1307
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1305
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1303
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1301
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1299
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1297
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1295
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1293
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1291
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1289
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1287
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1285
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 1283
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 237
    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 206
    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private requirePosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1329
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1330
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private requireWireType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredWireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 81
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    .line 1225
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 59
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public mergeGroupField(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 213
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeMessageField(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 180
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 131
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    instance-of v0, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 692
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 693
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 695
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 696
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 700
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 716
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 708
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 719
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 721
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 722
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 724
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 725
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 726
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 742
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 730
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 731
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 734
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 243
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 244
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 856
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 862
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 865
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 857
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 89
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 286
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 287
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 290
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 291
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 298
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 302
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 313
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 315
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 316
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 317
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 319
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 320
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 336
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 324
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 325
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 328
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 256
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 935
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 936
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 939
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 942
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 943
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 959
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 947
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 951
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 962
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 964
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 965
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 967
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 968
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 969
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 985
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 973
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 974
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 977
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 124
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 125
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 634
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 635
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 647
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 650
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 658
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 637
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 638
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 639
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 641
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 661
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 672
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 673
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 676
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 684
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 663
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 664
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 665
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 667
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 668
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 119
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 576
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 577
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 579
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 580
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 581
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 583
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 600
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 588
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 589
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 592
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 603
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 605
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 606
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 607
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 609
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 610
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 626
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 614
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 615
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 618
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 94
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    instance-of v0, p1, Lcom/google/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 345
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 356
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 357
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 360
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 368
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 347
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 348
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 349
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 351
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 352
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 371
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 382
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 383
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 386
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 394
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 373
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 374
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 375
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 377
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 378
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 165
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 166
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 173
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 836
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 841
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 842
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 845
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    .line 837
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p2

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 113
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 518
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 519
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 522
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 524
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 526
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 530
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 545
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 547
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 548
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 550
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 551
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 552
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 568
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 556
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 557
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 560
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 107
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 461
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 463
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 464
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 466
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 467
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 468
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 473
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 476
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 487
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 489
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 490
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 492
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 493
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 494
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 510
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 498
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 499
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 502
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "metadata",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1236
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1237
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1238
    invoke-virtual {v2, v1}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1239
    iget-object v2, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1240
    iget-object v3, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1243
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1244
    invoke-virtual {v5}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 1259
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1260
    :cond_1
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1253
    :cond_2
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1256
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1255
    invoke-direct {p0, v4, v5, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1250
    :cond_3
    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/protobuf/CodedInputStreamReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1267
    :cond_4
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1274
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    throw p1
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 149
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 150
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 157
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 804
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 809
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 810
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 813
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_2
    :goto_0
    return-void

    .line 805
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p2

    .line 797
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 261
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 262
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 993
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 994
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1005
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1017
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 996
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 997
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 998
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1000
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1020
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1031
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1032
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1035
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1043
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1022
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1023
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1024
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1026
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1027
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 268
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1051
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1052
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1054
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 1055
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1056
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1059
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1075
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1063
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1064
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1078
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1080
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1081
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1082
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1084
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1085
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    .line 1101
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1089
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1090
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1093
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 274
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 1109
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1110
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1113
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 1117
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 1133
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1122
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1136
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1138
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1139
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1141
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1142
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 1143
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 1159
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1147
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1148
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1151
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 280
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 1167
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1168
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1170
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1171
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1174
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 1175
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 1191
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 1194
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1196
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1197
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1199
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1200
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 1201
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 1217
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1205
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1206
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 1209
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 136
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 137
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "requireUtf8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 758
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 762
    instance-of v0, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 763
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 778
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 779
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 782
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 759
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 142
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 143
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 250
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 877
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 878
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 881
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 885
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 901
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 889
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 893
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 904
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 906
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 907
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 909
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 910
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 911
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 927
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 915
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 916
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 919
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 101
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 402
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 403
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 405
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 406
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 408
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 409
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 414
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 415
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 418
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    .line 429
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 431
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 432
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 434
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 435
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 436
    invoke-direct {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_0
    return-void

    .line 452
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 440
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 441
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 444
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public shouldDiscardUnknownFields()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 50
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public skipField()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->input:Lcom/google/protobuf/CodedInputStream;

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
