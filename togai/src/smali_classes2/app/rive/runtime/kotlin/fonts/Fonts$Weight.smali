.class public final Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/Fonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Weight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "",
        "weight",
        "",
        "(I)V",
        "getWeight",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private static final BOLD:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

.field public static final Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

.field private static final NORMAL:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;


# instance fields
.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    .line 64
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->NORMAL:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    .line 65
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->BOLD:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x190

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getBOLD$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->BOLD:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public static final synthetic access$getNORMAL$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->NORMAL:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public static synthetic copy$default(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;IILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->copy(I)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    return v0
.end method

.method public final copy(I)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iget v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    iget p1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getWeight()I
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weight(weight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
