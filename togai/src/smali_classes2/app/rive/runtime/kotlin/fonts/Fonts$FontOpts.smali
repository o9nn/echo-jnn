.class public final Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/Fonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontOpts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB1\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J5\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;",
        "",
        "familyName",
        "",
        "lang",
        "weight",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "style",
        "(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)V",
        "getFamilyName",
        "()Ljava/lang/String;",
        "getLang",
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
.field public static final Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;

.field private static final DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;


# instance fields
.field private final familyName:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final style:Ljava/lang/String;

.field private final weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;

    .line 88
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    const-string v3, "sans-serif"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "weight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    iput-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    iput-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iput-object p4, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 72
    sget-object p3, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    invoke-virtual {p3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->getNORMAL()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const-string p4, "normal"

    .line 69
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->DEFAULT:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    return-object v0
.end method

.method public static synthetic copy$default(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->copy(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;
    .locals 1

    const-string/jumbo v0, "weight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    invoke-direct {v0, p1, p2, p3, p4}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    iget-object v3, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    iget-object p1, p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontOpts(familyName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->weight:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
