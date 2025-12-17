.class public abstract Lorg/mockito/internal/util/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

.field private static final JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JVM_INFO:Ljava/lang/String;

.field public static final JVM_NAME:Ljava/lang/String;

.field public static final JVM_VENDOR:Ljava/lang/String;

.field public static final JVM_VENDOR_VERSION:Ljava/lang/String;

.field public static final JVM_VERSION:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1\\.8\\.0_(\\d+)(?:-ea)?(?:-b\\d+)?"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

    const-string v0, "1\\.8\\.0b\\d+_u(\\d+)"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

    const-string v0, "java.specification.version"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JAVA_VERSION:Ljava/lang/String;

    const-string v0, "java.runtime.version"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.vendor"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VENDOR:Ljava/lang/String;

    const-string v0, "java.vm.version"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_VENDOR_VERSION:Ljava/lang/String;

    const-string v0, "java.vm.name"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    const-string v0, "java.vm.info"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->JVM_INFO:Ljava/lang/String;

    const-string v0, "os.name"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.version"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/Platform;->OS_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe()Ljava/lang/String;
    .locals 9

    sget-object v0, Lorg/mockito/internal/util/Platform;->JAVA_VERSION:Ljava/lang/String;

    sget-object v1, Lorg/mockito/internal/util/Platform;->JVM_VENDOR:Ljava/lang/String;

    sget-object v2, Lorg/mockito/internal/util/Platform;->JVM_VENDOR_VERSION:Ljava/lang/String;

    sget-object v3, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    sget-object v4, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    sget-object v5, Lorg/mockito/internal/util/Platform;->JVM_INFO:Ljava/lang/String;

    sget-object v6, Lorg/mockito/internal/util/Platform;->OS_NAME:Ljava/lang/String;

    sget-object v7, Lorg/mockito/internal/util/Platform;->OS_VERSION:Ljava/lang/String;

    .line 38
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Java               : %s\nJVM vendor name    : %s\nJVM vendor version : %s\nJVM name           : %s\nJVM version        : %s\nJVM info           : %s\nOS name            : %s\nOS version         : %s\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "IMPORTANT INFORMATION FOR ANDROID USERS:"

    const-string v3, ""

    const-string v4, "The regular Byte Buddy mock makers cannot generate code on an Android VM!"

    const-string v5, "To resolve this, please use the \'mockito-android\' dependency for your application:"

    const-string v6, "http://search.maven.org/#search%7Cga%7C1%7Ca%3A%22mockito-android%22%20g%3A%22org.mockito%22"

    const-string v7, ""

    .line 55
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    return-object v8
.end method

.method public static isAndroid()Z
    .locals 2

    const-string v0, "java.vendor"

    const-string v1, ""

    .line 30
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isAndroidMockMakerRequired()Z
    .locals 1

    const-string v0, "org.mockito.mock.android"

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJava8BelowUpdate45()Z
    .locals 1

    sget-object v0, Lorg/mockito/internal/util/Platform;->JVM_VERSION:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isJava8BelowUpdate45(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_RELEASE_VERSION_SCHEME:Ljava/util/regex/Pattern;

    .line 73
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v3, :cond_0

    move v2, v4

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lorg/mockito/internal/util/Platform;->JAVA_8_DEV_VERSION_SCHEME:Ljava/util/regex/Pattern;

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v3, :cond_2

    move v2, v4

    :cond_2
    return v2

    :cond_3
    const-string v0, "1\\.8\\.0-b\\d+"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mockito/internal/util/Platform;->JVM_NAME:Ljava/lang/String;

    .line 92
    invoke-static {v0, p0, p1, p2, p3}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p4

    :cond_1
    const-string p0, ""

    return-object p0
.end method
