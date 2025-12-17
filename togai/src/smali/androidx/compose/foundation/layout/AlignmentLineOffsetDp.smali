.class final Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "AlignmentLine.kt"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J)\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$R\u001c\u0010\u0007\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u000f\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;",
        "Landroidx/compose/ui/layout/LayoutModifier;",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "before",
        "Landroidx/compose/ui/unit/Dp;",
        "after",
        "inspectorInfo",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAfter-D9Ej5fM",
        "()F",
        "F",
        "getAlignmentLine",
        "()Landroidx/compose/ui/layout/AlignmentLine;",
        "getBefore-D9Ej5fM",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final after:F

.field private final alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field private final before:F


# direct methods
.method private constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p4}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iput p2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    iput p3, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    const/4 p1, 0x0

    cmpl-float p4, p2, p1

    if-gez p4, :cond_0

    .line 177
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p4

    invoke-static {p2, p4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    cmpl-float p1, p3, p1

    if-gez p1, :cond_2

    .line 178
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Padding from alignment line must be a non-negative number"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;-><init>(Landroidx/compose/ui/layout/AlignmentLine;FFLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 200
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 202
    iget-object v3, p1, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    .line 203
    iget v3, p1, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    .line 204
    iget p1, p1, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    invoke-static {v2, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final getAfter-D9Ej5fM()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    return v0
.end method

.method public final getAlignmentLine()Landroidx/compose/ui/layout/AlignmentLine;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-object v0
.end method

.method public final getBefore-D9Ej5fM()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 192
    invoke-virtual {v0}, Landroidx/compose/ui/layout/AlignmentLine;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    .line 193
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    .line 194
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iget v3, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    iget v4, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    move-object v1, p1

    move-object v5, p2

    move-wide v6, p3

    .line 188
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/AlignmentLineKt;->access$alignmentLineOffsetMeasure-tjqqzMA(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlignmentLineOffset(alignmentLine="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->before:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineOffsetDp;->after:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
