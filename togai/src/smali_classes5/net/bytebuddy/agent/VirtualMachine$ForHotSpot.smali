.class public abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForHotSpot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$OnUnix;
    }
.end annotation


# static fields
.field private static final ARGUMENT_DELIMITER:Ljava/lang/String; = "="

.field private static final BLANK:[B

.field private static final INSTRUMENT_COMMAND:Ljava/lang/String; = "instrument"

.field private static final LOAD_COMMAND:Ljava/lang/String; = "load"

.field private static final PROTOCOL_VERSION:Ljava/lang/String; = "1"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected final processId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->processId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public loadAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->connect()V

    const-string v0, "1"

    const-string v1, "UTF-8"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    sget-object v0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->BLANK:[B

    .line 114
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    const-string v2, "load"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 116
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    const-string v2, "instrument"

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 118
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 119
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 120
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    .line 124
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->write([B)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->read([B)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    if-lez v0, :cond_1

    aget-byte v0, p1, v2

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    int-to-char v0, v0

    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_3
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p2, 0x65

    if-eq p1, p2, :cond_5

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    :goto_3
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;->read([B)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 145
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Protocol mismatch with target VM"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method protected abstract read([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
