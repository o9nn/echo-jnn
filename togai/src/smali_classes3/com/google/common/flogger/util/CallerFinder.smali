.class public final Lcom/google/common/flogger/util/CallerFinder;
.super Ljava/lang/Object;
.source "CallerFinder.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# static fields
.field private static final stackGetter:Lcom/google/common/flogger/util/FastStackGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/google/common/flogger/util/FastStackGetter;->createIfSupported()Lcom/google/common/flogger/util/FastStackGetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCallerOf(Ljava/lang/Class;Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "I)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const-string v0, "target"

    .line 45
    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "throwable"

    .line 46
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_4

    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    sget-object v3, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v3, p1, p2}, Lcom/google/common/flogger/util/FastStackGetter;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object v3

    goto :goto_2

    .line 62
    :cond_1
    aget-object v3, v0, p2

    .line 63
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    return-object v3

    :cond_3
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    return-object v1

    .line 48
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "skip count cannot be negative: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStackForCallerOf(Ljava/lang/Class;Ljava/lang/Throwable;II)[Ljava/lang/StackTraceElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "II)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    const-string v0, "target"

    .line 91
    invoke-static {p0, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "throwable"

    .line 92
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid maximum depth: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ltz p3, :cond_a

    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/util/FastStackGetter;->getStackTraceDepth(Ljava/lang/Throwable;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 107
    array-length v0, v1

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge p3, v0, :cond_9

    sget-object v4, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    if-eqz v4, :cond_3

    .line 112
    invoke-virtual {v4, p1, p3}, Lcom/google/common/flogger/util/FastStackGetter;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object v4

    goto :goto_3

    :cond_3
    aget-object v4, v1, p3

    .line 113
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move v3, v6

    goto :goto_7

    :cond_4
    if-eqz v3, :cond_8

    sub-int/2addr v0, p3

    if-lez p2, :cond_5

    if-ge p2, v0, :cond_5

    goto :goto_4

    :cond_5
    move p2, v0

    .line 121
    :goto_4
    new-array p0, p2, [Ljava/lang/StackTraceElement;

    .line 122
    aput-object v4, p0, v2

    :goto_5
    if-ge v6, p2, :cond_7

    sget-object v0, Lcom/google/common/flogger/util/CallerFinder;->stackGetter:Lcom/google/common/flogger/util/FastStackGetter;

    if-eqz v0, :cond_6

    add-int v2, p3, v6

    .line 126
    invoke-virtual {v0, p1, v2}, Lcom/google/common/flogger/util/FastStackGetter;->getStackTraceElement(Ljava/lang/Throwable;I)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_6

    :cond_6
    add-int v0, p3, v6

    .line 127
    aget-object v0, v1, v0

    :goto_6
    aput-object v0, p0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    return-object p0

    :cond_8
    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_9
    new-array p0, v2, [Ljava/lang/StackTraceElement;

    return-object p0

    .line 97
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skip count cannot be negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
