.class public final enum Lcom/rivereactnative/RNAlignment;
.super Ljava/lang/Enum;
.source "RNAlignment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNAlignment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rivereactnative/RNAlignment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/rivereactnative/RNAlignment;",
        "",
        "mValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "TopLeft",
        "TopCenter",
        "TopRight",
        "CenterLeft",
        "Center",
        "CenterRight",
        "BottomLeft",
        "BottomCenter",
        "BottomRight",
        "Companion",
        "rive-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/rivereactnative/RNAlignment;

.field public static final enum BottomCenter:Lcom/rivereactnative/RNAlignment;

.field public static final enum BottomLeft:Lcom/rivereactnative/RNAlignment;

.field public static final enum BottomRight:Lcom/rivereactnative/RNAlignment;

.field public static final enum Center:Lcom/rivereactnative/RNAlignment;

.field public static final enum CenterLeft:Lcom/rivereactnative/RNAlignment;

.field public static final enum CenterRight:Lcom/rivereactnative/RNAlignment;

.field public static final Companion:Lcom/rivereactnative/RNAlignment$Companion;

.field public static final enum TopCenter:Lcom/rivereactnative/RNAlignment;

.field public static final enum TopLeft:Lcom/rivereactnative/RNAlignment;

.field public static final enum TopRight:Lcom/rivereactnative/RNAlignment;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/rivereactnative/RNAlignment;
    .locals 9

    sget-object v0, Lcom/rivereactnative/RNAlignment;->TopLeft:Lcom/rivereactnative/RNAlignment;

    sget-object v1, Lcom/rivereactnative/RNAlignment;->TopCenter:Lcom/rivereactnative/RNAlignment;

    sget-object v2, Lcom/rivereactnative/RNAlignment;->TopRight:Lcom/rivereactnative/RNAlignment;

    sget-object v3, Lcom/rivereactnative/RNAlignment;->CenterLeft:Lcom/rivereactnative/RNAlignment;

    sget-object v4, Lcom/rivereactnative/RNAlignment;->Center:Lcom/rivereactnative/RNAlignment;

    sget-object v5, Lcom/rivereactnative/RNAlignment;->CenterRight:Lcom/rivereactnative/RNAlignment;

    sget-object v6, Lcom/rivereactnative/RNAlignment;->BottomLeft:Lcom/rivereactnative/RNAlignment;

    sget-object v7, Lcom/rivereactnative/RNAlignment;->BottomCenter:Lcom/rivereactnative/RNAlignment;

    sget-object v8, Lcom/rivereactnative/RNAlignment;->BottomRight:Lcom/rivereactnative/RNAlignment;

    filled-new-array/range {v0 .. v8}, [Lcom/rivereactnative/RNAlignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x0

    const-string v2, "topLeft"

    const-string v3, "TopLeft"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->TopLeft:Lcom/rivereactnative/RNAlignment;

    .line 7
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x1

    const-string v2, "topCenter"

    const-string v3, "TopCenter"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->TopCenter:Lcom/rivereactnative/RNAlignment;

    .line 8
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x2

    const-string v2, "topRight"

    const-string v3, "TopRight"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->TopRight:Lcom/rivereactnative/RNAlignment;

    .line 9
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x3

    const-string v2, "centerLeft"

    const-string v3, "CenterLeft"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->CenterLeft:Lcom/rivereactnative/RNAlignment;

    .line 10
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x4

    const-string v2, "center"

    const-string v3, "Center"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->Center:Lcom/rivereactnative/RNAlignment;

    .line 11
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x5

    const-string v2, "centerRight"

    const-string v3, "CenterRight"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->CenterRight:Lcom/rivereactnative/RNAlignment;

    .line 12
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x6

    const-string v2, "bottomLeft"

    const-string v3, "BottomLeft"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->BottomLeft:Lcom/rivereactnative/RNAlignment;

    .line 13
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/4 v1, 0x7

    const-string v2, "bottomCenter"

    const-string v3, "BottomCenter"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->BottomCenter:Lcom/rivereactnative/RNAlignment;

    .line 14
    new-instance v0, Lcom/rivereactnative/RNAlignment;

    const/16 v1, 0x8

    const-string v2, "bottomRight"

    const-string v3, "BottomRight"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->BottomRight:Lcom/rivereactnative/RNAlignment;

    invoke-static {}, Lcom/rivereactnative/RNAlignment;->$values()[Lcom/rivereactnative/RNAlignment;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNAlignment;->$VALUES:[Lcom/rivereactnative/RNAlignment;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNAlignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/rivereactnative/RNAlignment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rivereactnative/RNAlignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rivereactnative/RNAlignment;->Companion:Lcom/rivereactnative/RNAlignment$Companion;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/rivereactnative/RNAlignment;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rivereactnative/RNAlignment;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rivereactnative/RNAlignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNAlignment;
    .locals 1

    const-class v0, Lcom/rivereactnative/RNAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rivereactnative/RNAlignment;

    return-object p0
.end method

.method public static values()[Lcom/rivereactnative/RNAlignment;
    .locals 1

    sget-object v0, Lcom/rivereactnative/RNAlignment;->$VALUES:[Lcom/rivereactnative/RNAlignment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rivereactnative/RNAlignment;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RNAlignment;->mValue:Ljava/lang/String;

    return-object v0
.end method
