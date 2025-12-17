.class public final Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/Fonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/fonts/Fonts$Font$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J9\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;",
        "",
        "weight",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "style",
        "",
        "name",
        "axis",
        "",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
        "(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getAxis",
        "()Ljava/util/List;",
        "getName",
        "()Ljava/lang/String;",
        "getStyle",
        "getWeight",
        "()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Font$Companion;

.field private static final DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

.field public static final STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final STYLE_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field private final axis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;

.field private final weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Font$Companion;

    .line 21
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    .line 22
    sget-object v1, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->getNORMAL()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v3

    const-string v4, "normal"

    const-string v5, "Roboto-Regular.ttf"

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v8}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    return-void
.end method

.method public constructor <init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "weight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iput-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    iput-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    iput-object p4, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    return-object v0
.end method

.method public static synthetic copy$default(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->copy(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
            ">;)",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;"
        }
    .end annotation

    const-string/jumbo v0, "weight"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    invoke-direct {v0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    iget-object p1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAxis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font(weight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", axis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->axis:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
