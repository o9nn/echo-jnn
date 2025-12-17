.class public abstract Lautovalue/shaded/com/google$/common/base/$Optional;
.super Ljava/lang/Object;
.source "$Optional.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
    value = "Use Optional.of(value) or Optional.absent()"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Absent;->withType()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object v0

    return-object v0
.end method

.method public static fromJavaUtil(Ljava/util/Optional;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;->fromNullable(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 116
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Optional;->absent()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Present;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Present;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    .line 105
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Present;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 335
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Optional$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Optional$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static toJavaUtil(Lautovalue/shaded/com/google$/common/base/$Optional;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;->toJavaUtil()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Lautovalue/shaded/com/google$/common/base/$Optional;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "+TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract or(Lautovalue/shaded/com/google$/common/base/$Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public toJavaUtil()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TT;TV;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TV;>;"
        }
    .end annotation
.end method
