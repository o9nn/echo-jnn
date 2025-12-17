.class public final Lexpo/modules/medialibrary/assets/GetAssetsQuery;
.super Ljava/lang/Object;
.source "GetAssetsQuery.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/medialibrary/assets/GetAssetsQuery;",
        "",
        "selection",
        "",
        "order",
        "limit",
        "",
        "offset",
        "",
        "(Ljava/lang/String;Ljava/lang/String;DI)V",
        "getLimit",
        "()D",
        "getOffset",
        "()I",
        "getOrder",
        "()Ljava/lang/String;",
        "getSelection",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "expo-media-library_release"
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
.field private final limit:D

.field private final offset:I

.field private final order:Ljava/lang/String;

.field private final selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 1

    const-string v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    iput-object p2, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    iput-wide p3, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    iput p5, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/medialibrary/assets/GetAssetsQuery;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/Object;)Lexpo/modules/medialibrary/assets/GetAssetsQuery;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p5, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    :cond_3
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->copy(Ljava/lang/String;Ljava/lang/String;DI)Lexpo/modules/medialibrary/assets/GetAssetsQuery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DI)Lexpo/modules/medialibrary/assets/GetAssetsQuery;
    .locals 7

    const-string v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;-><init>(Ljava/lang/String;Ljava/lang/String;DI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    iget-wide v5, p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    iget p1, p1, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLimit()D
    .locals 2

    iget-wide v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    return-wide v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    return v0
.end method

.method public final getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->selection:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->order:Ljava/lang/String;

    iget-wide v2, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->limit:D

    iget v4, p0, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->offset:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetAssetsQuery(selection="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", order="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
