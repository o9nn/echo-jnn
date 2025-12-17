.class public final enum Lorg/mockito/Answers;
.super Ljava/lang/Enum;
.source "Answers.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/Answers;",
        ">;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/Answers;

.field public static final enum CALLS_REAL_METHODS:Lorg/mockito/Answers;

.field public static final enum RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

.field public static final enum RETURNS_DEFAULTS:Lorg/mockito/Answers;

.field public static final enum RETURNS_MOCKS:Lorg/mockito/Answers;

.field public static final enum RETURNS_SELF:Lorg/mockito/Answers;

.field public static final enum RETURNS_SMART_NULLS:Lorg/mockito/Answers;


# instance fields
.field private final implementation:Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    new-instance v0, Lorg/mockito/Answers;

    new-instance v1, Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/defaultanswers/GloballyConfiguredAnswer;-><init>()V

    const-string v2, "RETURNS_DEFAULTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v0, Lorg/mockito/Answers;->RETURNS_DEFAULTS:Lorg/mockito/Answers;

    .line 44
    new-instance v1, Lorg/mockito/Answers;

    new-instance v2, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;

    invoke-direct {v2}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsSmartNulls;-><init>()V

    const-string v3, "RETURNS_SMART_NULLS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v1, Lorg/mockito/Answers;->RETURNS_SMART_NULLS:Lorg/mockito/Answers;

    .line 53
    new-instance v2, Lorg/mockito/Answers;

    new-instance v3, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;

    invoke-direct {v3}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsMocks;-><init>()V

    const-string v4, "RETURNS_MOCKS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v2, Lorg/mockito/Answers;->RETURNS_MOCKS:Lorg/mockito/Answers;

    .line 63
    new-instance v3, Lorg/mockito/Answers;

    new-instance v4, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;

    invoke-direct {v4}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;-><init>()V

    const-string v5, "RETURNS_DEEP_STUBS"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v3, Lorg/mockito/Answers;->RETURNS_DEEP_STUBS:Lorg/mockito/Answers;

    .line 72
    new-instance v4, Lorg/mockito/Answers;

    new-instance v5, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;

    invoke-direct {v5}, Lorg/mockito/internal/stubbing/answers/CallsRealMethods;-><init>()V

    const-string v6, "CALLS_REAL_METHODS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v4, Lorg/mockito/Answers;->CALLS_REAL_METHODS:Lorg/mockito/Answers;

    .line 81
    new-instance v5, Lorg/mockito/Answers;

    new-instance v6, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;

    invoke-direct {v6}, Lorg/mockito/internal/stubbing/defaultanswers/TriesToReturnSelf;-><init>()V

    const-string v7, "RETURNS_SELF"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lorg/mockito/Answers;-><init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V

    sput-object v5, Lorg/mockito/Answers;->RETURNS_SELF:Lorg/mockito/Answers;

    filled-new-array/range {v0 .. v5}, [Lorg/mockito/Answers;

    move-result-object v0

    sput-object v0, Lorg/mockito/Answers;->$VALUES:[Lorg/mockito/Answers;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/mockito/stubbing/Answer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/mockito/Answers;->implementation:Lorg/mockito/stubbing/Answer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/Answers;
    .locals 1

    const-class v0, Lorg/mockito/Answers;

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/Answers;

    return-object p0
.end method

.method public static values()[Lorg/mockito/Answers;
    .locals 1

    sget-object v0, Lorg/mockito/Answers;->$VALUES:[Lorg/mockito/Answers;

    .line 27
    invoke-virtual {v0}, [Lorg/mockito/Answers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/Answers;

    return-object v0
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/Answers;->implementation:Lorg/mockito/stubbing/Answer;

    .line 100
    invoke-interface {v0, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get()Lorg/mockito/stubbing/Answer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
