.class public final enum Lapp/rive/runtime/kotlin/core/RendererType;
.super Ljava/lang/Enum;
.source "RendererType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/core/RendererType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "Skia",
        "Rive",
        "Canvas",
        "Companion",
        "kotlin_release"
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

.field private static final synthetic $VALUES:[Lapp/rive/runtime/kotlin/core/RendererType;

.field public static final enum Canvas:Lapp/rive/runtime/kotlin/core/RendererType;

.field public static final Companion:Lapp/rive/runtime/kotlin/core/RendererType$Companion;

.field public static final enum Rive:Lapp/rive/runtime/kotlin/core/RendererType;

.field public static final enum Skia:Lapp/rive/runtime/kotlin/core/RendererType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 3

    sget-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Skia:Lapp/rive/runtime/kotlin/core/RendererType;

    sget-object v1, Lapp/rive/runtime/kotlin/core/RendererType;->Rive:Lapp/rive/runtime/kotlin/core/RendererType;

    sget-object v2, Lapp/rive/runtime/kotlin/core/RendererType;->Canvas:Lapp/rive/runtime/kotlin/core/RendererType;

    filled-new-array {v0, v1, v2}, [Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lapp/rive/runtime/kotlin/core/RendererType;

    const-string v1, "Skia"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lapp/rive/runtime/kotlin/core/RendererType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Skia:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 6
    new-instance v0, Lapp/rive/runtime/kotlin/core/RendererType;

    const-string v1, "Rive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lapp/rive/runtime/kotlin/core/RendererType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Rive:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 7
    new-instance v0, Lapp/rive/runtime/kotlin/core/RendererType;

    const-string v1, "Canvas"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lapp/rive/runtime/kotlin/core/RendererType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Canvas:Lapp/rive/runtime/kotlin/core/RendererType;

    invoke-static {}, Lapp/rive/runtime/kotlin/core/RendererType;->$values()[Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->$VALUES:[Lapp/rive/runtime/kotlin/core/RendererType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/core/RendererType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Companion:Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lapp/rive/runtime/kotlin/core/RendererType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lapp/rive/runtime/kotlin/core/RendererType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    const-class v0, Lapp/rive/runtime/kotlin/core/RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lapp/rive/runtime/kotlin/core/RendererType;

    return-object p0
.end method

.method public static values()[Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->$VALUES:[Lapp/rive/runtime/kotlin/core/RendererType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapp/rive/runtime/kotlin/core/RendererType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/core/RendererType;->value:I

    return v0
.end method
