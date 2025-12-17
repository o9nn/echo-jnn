.class public abstract enum Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
.super Ljava/lang/Enum;
.source "MethodSortMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/MethodSortMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 64
    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$1;

    const-string v1, "isMethod()"

    const-string v2, "METHOD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 75
    new-instance v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$2;

    const-string v2, "isConstructor()"

    const-string v4, "CONSTRUCTOR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 85
    new-instance v2, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$3;

    const-string v4, "isTypeInitializer()"

    const-string v6, "TYPE_INITIALIZER"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 95
    new-instance v4, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$4;

    const-string v6, "isVirtual()"

    const-string v8, "VIRTUAL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 105
    new-instance v6, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$5;

    const-string v8, "isDefaultMethod()"

    const-string v10, "DEFAULT_METHOD"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    const/4 v8, 0x5

    new-array v8, v8, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 59
    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->$VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

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

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/MethodSortMatcher$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 59
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->$VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    .line 59
    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-object v0
.end method


# virtual methods
.method protected getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->description:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract isSort(Lnet/bytebuddy/description/method/MethodDescription;)Z
.end method
