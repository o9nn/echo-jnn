.class public Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;
.super Ljava/lang/Object;
.source "StackTraceFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

.field private static GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method; = null

.field private static JAVA_LANG_ACCESS:Ljava/lang/Object; = null

.field static final serialVersionUID:J = -0x4c5348f609cd3524L


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;

    invoke-direct {v1}, Lorg/mockito/internal/exceptions/stacktrace/DefaultStackTraceCleaner;-><init>()V

    invoke-interface {v0, v1}, Lorg/mockito/plugins/StackTraceCleanerProvider;->getStackTraceCleaner(Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;)Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    :try_start_0
    const-string v0, "sun.misc.SharedSecrets"

    .line 29
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getJavaLangAccess"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->JAVA_LANG_ACCESS:Ljava/lang/Object;

    const-string v0, "sun.misc.JavaLangAccess"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStackTraceElement"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter([Ljava/lang/StackTraceElement;Z)[Ljava/lang/StackTraceElement;
    .locals 4

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    .line 52
    invoke-interface {v3, v2}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 57
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    return-object p1
.end method

.method public filterFirst(Ljava/lang/Throwable;Z)Ljava/lang/StackTraceElement;
    .locals 7

    sget-object v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    :try_start_0
    sget-object v2, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->GET_STACK_TRACE_ELEMENT:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->JAVA_LANG_ACCESS:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StackTraceElement;

    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    .line 92
    invoke-interface {v3, v2}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :catch_0
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    sget-object v4, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    .line 110
    invoke-interface {v4, v3}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSourceFile([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->CLEANER:Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;

    .line 127
    invoke-interface {v3, v2}, Lorg/mockito/exceptions/stacktrace/StackTraceCleaner;->isIn(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
