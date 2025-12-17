.class public abstract enum Lnet/bytebuddy/matcher/StringMatcher$Mode;
.super Ljava/lang/Enum;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/StringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/StringMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 69
    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;

    const-string v1, "equals"

    const-string v2, "EQUALS_FULLY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 79
    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;

    const-string v2, "equalsIgnoreCase"

    const-string v4, "EQUALS_FULLY_IGNORE_CASE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 89
    new-instance v2, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;

    const-string v4, "startsWith"

    const-string v6, "STARTS_WITH"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 99
    new-instance v4, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;

    const-string v6, "startsWithIgnoreCase"

    const-string v8, "STARTS_WITH_IGNORE_CASE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 110
    new-instance v6, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;

    const-string v8, "endsWith"

    const-string v10, "ENDS_WITH"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 120
    new-instance v8, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;

    const-string v10, "endsWithIgnoreCase"

    const-string v12, "ENDS_WITH_IGNORE_CASE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 131
    new-instance v10, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;

    const-string v12, "contains"

    const-string v14, "CONTAINS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 141
    new-instance v12, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;

    const-string v14, "containsIgnoreCase"

    const-string v15, "CONTAINS_IGNORE_CASE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 152
    new-instance v14, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;

    const-string v15, "matches"

    const-string v13, "MATCHES"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    const/16 v13, 0x9

    new-array v13, v13, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 64
    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/matcher/StringMatcher$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 64
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    .line 64
    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/StringMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract matches(Ljava/lang/String;Ljava/lang/String;)Z
.end method
