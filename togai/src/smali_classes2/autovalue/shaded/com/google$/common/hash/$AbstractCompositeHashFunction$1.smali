.class Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "$AbstractCompositeHashFunction.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/hash/$Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;->fromHashers([Lautovalue/shaded/com/google$/common/hash/$Hasher;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;[Lautovalue/shaded/com/google$/common/hash/$Hasher;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->this$0:Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lautovalue/shaded/com/google$/common/hash/$HashCode;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->this$0:Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 189
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction;->makeHash([Lautovalue/shaded/com/google$/common/hash/$Hasher;)Lautovalue/shaded/com/google$/common/hash/$HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 149
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 150
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putBoolean(Z)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putByte(B)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 76
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putByte(B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putByte(B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 5

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 100
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 101
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/hash/$Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 102
    invoke-interface {v4, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putBytes([B)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 83
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 84
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes([B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 91
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    invoke-interface {v3, p1, p2, p3}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putBytes(Ljava/nio/ByteBuffer;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([B)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putBytes([B)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putBytes([BII)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putChar(C)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 157
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putChar(C)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putChar(C)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(D)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 141
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    invoke-interface {v3, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putDouble(D)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putDouble(D)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(F)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 133
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putFloat(F)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putFloat(F)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 117
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putInt(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putInt(I)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 125
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 126
    invoke-interface {v3, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putLong(J)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putLong(J)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/hash/$Funnel;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 181
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 182
    invoke-interface {v3, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putObject(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/hash/$Funnel;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putShort(S)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 109
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 110
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putShort(S)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putShort(S)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 174
    invoke-interface {v3, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$Hasher;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->val$hashers:[Lautovalue/shaded/com/google$/common/hash/$Hasher;

    .line 165
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 166
    invoke-interface {v3, p1}, Lautovalue/shaded/com/google$/common/hash/$Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$PrimitiveSink;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/hash/$AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/hash/$Hasher;

    move-result-object p1

    return-object p1
.end method
