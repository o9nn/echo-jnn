.class final Lautovalue/shaded/com/google$/common/base/$Java8Usage;
.super Ljava/lang/Object;
.source "$Java8Usage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/base/$Java8Usage$SomeTypeAnnotation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$performCheck$0()V
    .locals 0

    return-void
.end method

.method static performCheck()Ljava/lang/String;
    .locals 1

    .line 39
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Java8Usage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/base/$Java8Usage$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, ""

    return-object v0
.end method
