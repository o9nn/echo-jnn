.class public interface abstract Lautovalue/shaded/com/google$/common/hash/$HashFunction;
.super Ljava/lang/Object;
.source "$HashFunction.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$Immutable;
.end annotation


# virtual methods
.method public abstract bits()I
.end method

.method public abstract hashBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashBytes([B)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashBytes([BII)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashInt(I)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashLong(J)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashObject(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/hash/$Funnel;)Lautovalue/shaded/com/google$/common/hash/$HashCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lautovalue/shaded/com/google$/common/hash/$Funnel<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/hash/$HashCode;"
        }
    .end annotation
.end method

.method public abstract hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract hashUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$HashCode;
.end method

.method public abstract newHasher()Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method

.method public abstract newHasher(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end method
