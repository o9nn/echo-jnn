.class public Lorg/mockito/internal/debugging/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Lorg/mockito/invocation/Location;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7da9543f78c59610L

.field private static final stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;


# instance fields
.field private sourceFile:Ljava/lang/String;

.field private stackTraceLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;-><init>()V

    sput-object v0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 1

    sget-object v0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    .line 25
    invoke-direct {p0, v0, p1, p2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/debugging/LocationImpl;->computeStackTraceInformation(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private computeStackTraceInformation(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 48
    invoke-virtual {p1, p2, p3}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->filterFirst(Ljava/lang/Throwable;Z)Ljava/lang/StackTraceElement;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "-> at <<unknown line>>"

    iput-object p1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    const-string p1, "<unknown source file>"

    iput-object p1, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "-> at "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    return-object v0
.end method
