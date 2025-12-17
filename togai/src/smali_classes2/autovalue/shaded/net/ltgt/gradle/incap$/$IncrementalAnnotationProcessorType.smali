.class public final enum Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;
.super Ljava/lang/Enum;
.source "$IncrementalAnnotationProcessorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

.field public static final enum AGGREGATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

.field public static final enum DYNAMIC:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

.field public static final enum ISOLATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;


# instance fields
.field private final hasProcessorOption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    const-string v1, "ISOLATING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->ISOLATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    .line 29
    new-instance v1, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    const-string v4, "AGGREGATING"

    invoke-direct {v1, v4, v3, v3}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->AGGREGATING:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    .line 30
    new-instance v3, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    const-string v4, "DYNAMIC"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->DYNAMIC:Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    filled-new-array {v0, v1, v3}, [Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->$VALUES:[Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->hasProcessorOption:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;
    .locals 1

    const-class v0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;
    .locals 1

    sget-object v0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->$VALUES:[Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    .line 27
    invoke-virtual {v0}, [Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;

    return-object v0
.end method


# virtual methods
.method public getProcessorOption()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->hasProcessorOption:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.gradle.annotation.processing."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lautovalue/shaded/net/ltgt/gradle/incap$/$IncrementalAnnotationProcessorType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
