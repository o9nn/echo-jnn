.class final Lautovalue/shaded/com/google$/common/base/$Absent;
.super Lautovalue/shaded/com/google$/common/base/$Optional;
.source "$Absent.java"


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
.field static final INSTANCE:Lautovalue/shaded/com/google$/common/base/$Absent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Absent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Absent;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/base/$Absent;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Absent;->INSTANCE:Lautovalue/shaded/com/google$/common/base/$Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Absent;->INSTANCE:Lautovalue/shaded/com/google$/common/base/$Absent;

    return-object v0
.end method

.method static withType()Lautovalue/shaded/com/google$/common/base/$Optional;
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

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Absent;->INSTANCE:Lautovalue/shaded/com/google$/common/base/$Absent;

    return-object v0
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

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x79a31aac

    return v0
.end method

.method public isPresent()Z
    .locals 1

    const/4 v0, 0x0

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

    .line 54
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Optional;

    return-object p1
.end method

.method public or(Lautovalue/shaded/com/google$/common/base/$Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "use Optional.orNull() instead of a Supplier that returns null"

    .line 59
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    .line 48
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public transform(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 0
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

    .line 75
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Optional;->absent()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p1

    return-object p1
.end method
