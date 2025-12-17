.class final enum Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;
.super Ljava/lang/Enum;
.source "$LineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FlushType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

.field public static final enum EMPTY:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

.field public static final enum SPACE:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

.field public static final enum WRAP:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 140
    new-instance v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    const-string v1, "WRAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->WRAP:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    new-instance v1, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    const-string v2, "SPACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->SPACE:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    new-instance v2, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    const-string v3, "EMPTY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->EMPTY:Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    filled-new-array {v0, v1, v2}, [Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->$VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;
    .locals 1

    const-class v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    .line 139
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->$VALUES:[Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    .line 139
    invoke-virtual {v0}, [Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/squareup/javapoet$/$LineWrapper$FlushType;

    return-object v0
.end method
