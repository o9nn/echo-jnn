.class final Lautovalue/shaded/com/google$/common/base/$Present;
.super Lautovalue/shaded/com/google$/common/base/$Optional;
.source "$Present.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/base/$Optional<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/base/$Present;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Present;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    .line 83
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x598df91c

    add-int/2addr v0, v1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public or(Lautovalue/shaded/com/google$/common/base/$Optional;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "+TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public or(Lautovalue/shaded/com/google$/common/base/$Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    return-object p1
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "use Optional.orNull() instead of Optional.or(null)"

    .line 45
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Optional.of("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 2
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

    .line 73
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Present;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/base/$Present;->reference:Ljava/lang/Object;

    .line 75
    invoke-interface {p1, v1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "the Function passed to Optional.transform() must not return null."

    .line 74
    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
