.class public final Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/Fonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
        "",
        "name",
        "",
        "original",
        "weight",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)V",
        "getName",
        "()Ljava/lang/String;",
        "getOriginal",
        "getWeight",
        "()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final name:Ljava/lang/String;

.field private final original:Ljava/lang/String;

.field private final weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "original"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    iput-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    iput-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 45
    sget-object p3, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    invoke-virtual {p3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->getNORMAL()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object p3

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)V

    return-void
.end method

.method public static synthetic copy$default(Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->copy(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "original"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    invoke-direct {v0, p1, p2, p3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iget-object p1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alias(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->original:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
