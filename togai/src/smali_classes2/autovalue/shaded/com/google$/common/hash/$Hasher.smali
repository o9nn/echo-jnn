.class public interface abstract Lautovalue/shaded/com/google$/common/hash/$Hasher;
.super Ljava/lang/Object;
.source "$Hasher.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;


# virtual methods
.method public abstract hash()Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putByte(B)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putByte(B)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putByte(B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public abstract putBytes([B)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public abstract putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes([B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putChar(C)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putChar(C)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putChar(C)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putDouble(D)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putDouble(D)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putDouble(D)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putFloat(F)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putFloat(F)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putFloat(F)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putInt(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putInt(I)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putInt(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putLong(J)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putLong(J)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putLong(J)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putObject(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/hash/$Funnel;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lautovalue/shaded/com/google$/common/hash/$Funnel<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/hash/$Hasher;"
        }
    .end annotation
.end method

.method public abstract putShort(S)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putShort(S)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putShort(S)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public abstract putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method
