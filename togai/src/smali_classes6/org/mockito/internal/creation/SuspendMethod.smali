.class public Lorg/mockito/internal/creation/SuspendMethod;
.super Ljava/lang/Object;
.source "SuspendMethod.java"


# static fields
.field private static final KOTLIN_CONTINUATION:Ljava/lang/String; = "kotlin.coroutines.Continuation"

.field private static final KOTLIN_EXPERIMENTAL_CONTINUATION:Ljava/lang/String; = "kotlin.coroutines.experimental.Continuation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isContinuationType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kotlin.coroutines.Continuation"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kotlin.coroutines.experimental.Continuation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static trimSuspendParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 18
    array-length v0, p0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 19
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/mockito/internal/creation/SuspendMethod;->isContinuationType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    :cond_0
    return-object p0
.end method
