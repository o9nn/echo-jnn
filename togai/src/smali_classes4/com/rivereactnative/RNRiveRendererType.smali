.class public final enum Lcom/rivereactnative/RNRiveRendererType;
.super Ljava/lang/Enum;
.source "RNRiveRendererType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rivereactnative/RNRiveRendererType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rivereactnative/RNRiveRendererType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/rivereactnative/RNRiveRendererType;",
        "",
        "rendererTypeName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "Rive",
        "Skia",
        "Canvas",
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

.field private static final synthetic $VALUES:[Lcom/rivereactnative/RNRiveRendererType;

.field public static final enum Canvas:Lcom/rivereactnative/RNRiveRendererType;

.field public static final Companion:Lcom/rivereactnative/RNRiveRendererType$Companion;

.field public static final enum Rive:Lcom/rivereactnative/RNRiveRendererType;

.field public static final enum Skia:Lcom/rivereactnative/RNRiveRendererType;


# instance fields
.field private final rendererTypeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/rivereactnative/RNRiveRendererType;
    .locals 3

    sget-object v0, Lcom/rivereactnative/RNRiveRendererType;->Rive:Lcom/rivereactnative/RNRiveRendererType;

    sget-object v1, Lcom/rivereactnative/RNRiveRendererType;->Skia:Lcom/rivereactnative/RNRiveRendererType;

    sget-object v2, Lcom/rivereactnative/RNRiveRendererType;->Canvas:Lcom/rivereactnative/RNRiveRendererType;

    filled-new-array {v0, v1, v2}, [Lcom/rivereactnative/RNRiveRendererType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/rivereactnative/RNRiveRendererType;

    const/4 v1, 0x0

    const-string v2, "rive"

    const-string v3, "Rive"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNRiveRendererType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->Rive:Lcom/rivereactnative/RNRiveRendererType;

    .line 7
    new-instance v0, Lcom/rivereactnative/RNRiveRendererType;

    const/4 v1, 0x1

    const-string v2, "skia"

    const-string v3, "Skia"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNRiveRendererType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->Skia:Lcom/rivereactnative/RNRiveRendererType;

    .line 8
    new-instance v0, Lcom/rivereactnative/RNRiveRendererType;

    const/4 v1, 0x2

    const-string v2, "canvas"

    const-string v3, "Canvas"

    invoke-direct {v0, v3, v1, v2}, Lcom/rivereactnative/RNRiveRendererType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->Canvas:Lcom/rivereactnative/RNRiveRendererType;

    invoke-static {}, Lcom/rivereactnative/RNRiveRendererType;->$values()[Lcom/rivereactnative/RNRiveRendererType;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->$VALUES:[Lcom/rivereactnative/RNRiveRendererType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/rivereactnative/RNRiveRendererType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rivereactnative/RNRiveRendererType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rivereactnative/RNRiveRendererType;->Companion:Lcom/rivereactnative/RNRiveRendererType$Companion;

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

    iput-object p3, p0, Lcom/rivereactnative/RNRiveRendererType;->rendererTypeName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getRendererTypeName$p(Lcom/rivereactnative/RNRiveRendererType;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/rivereactnative/RNRiveRendererType;->rendererTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/rivereactnative/RNRiveRendererType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/rivereactnative/RNRiveRendererType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rivereactnative/RNRiveRendererType;
    .locals 1

    const-class v0, Lcom/rivereactnative/RNRiveRendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rivereactnative/RNRiveRendererType;

    return-object p0
.end method

.method public static values()[Lcom/rivereactnative/RNRiveRendererType;
    .locals 1

    sget-object v0, Lcom/rivereactnative/RNRiveRendererType;->$VALUES:[Lcom/rivereactnative/RNRiveRendererType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rivereactnative/RNRiveRendererType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RNRiveRendererType;->rendererTypeName:Ljava/lang/String;

    return-object v0
.end method
