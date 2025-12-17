.class final Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;
.super Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.source "$CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLetter"
.end annotation


# static fields
.field static final INSTANCE:Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1381
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;->INSTANCE:Lautovalue/shaded/com/google$/common/base/$CharMatcher$JavaLetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1379
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1379
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 0

    .line 1385
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1379
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->negate()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CharMatcher.javaLetter()"

    return-object v0
.end method
