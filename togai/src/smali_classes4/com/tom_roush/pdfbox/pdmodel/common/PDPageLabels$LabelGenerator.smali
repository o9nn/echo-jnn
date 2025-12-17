.class Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;
.super Ljava/lang/Object;
.source "PDPageLabels.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ROMANS:[[Ljava/lang/String;


# instance fields
.field private currentPage:I

.field private final labelInfo:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

.field private final numPages:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "i"

    const-string v3, "ii"

    const-string v4, "iii"

    const-string v5, "iv"

    const-string v6, "v"

    const-string v7, "vi"

    const-string v8, "vii"

    const-string v9, "viii"

    const-string v10, "ix"

    .line 386
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, ""

    const-string v4, "x"

    const-string v5, "xx"

    const-string v6, "xxx"

    const-string v7, "xl"

    const-string v8, "l"

    const-string v9, "lx"

    const-string v10, "lxx"

    const-string v11, "lxxx"

    const-string v12, "xc"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v3, ""

    const-string v4, "c"

    const-string v5, "cc"

    const-string v6, "ccc"

    const-string v7, "cd"

    const-string v8, "d"

    const-string v9, "dc"

    const-string v10, "dcc"

    const-string v11, "dccc"

    const-string v12, "cm"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->ROMANS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;I)V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->labelInfo:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->numPages:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->currentPage:I

    return-void
.end method

.method private getNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "D"

    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "a"

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->makeLetterLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "A"

    .line 364
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->makeLetterLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "r"

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->makeRomanLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "R"

    .line 372
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 374
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->makeRomanLabel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 379
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static makeLetterLabel(I)Ljava/lang/String;
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    div-int/lit8 v1, p0, 0x1a

    rem-int/lit8 p0, p0, 0x1a

    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 424
    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1a

    add-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x60

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 427
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeRomanLabel(I)Ljava/lang/String;
    .locals 5

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    if-lez p0, :cond_0

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->ROMANS:[[Ljava/lang/String;

    .line 398
    aget-object v3, v3, v2

    rem-int/lit8 v4, p0, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    div-int/lit8 p0, p0, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_1

    const/16 v3, 0x6d

    .line 411
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->currentPage:I

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->numPages:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .line 328
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->labelInfo:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    .line 333
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 341
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->labelInfo:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    .line 345
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->getStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->labelInfo:Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    .line 348
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->getStart()I

    move-result v2

    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->currentPage:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->getNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->currentPage:I

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
