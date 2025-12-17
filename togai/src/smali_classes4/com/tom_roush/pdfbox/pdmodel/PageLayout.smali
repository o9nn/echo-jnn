.class public final enum Lcom/tom_roush/pdfbox/pdmodel/PageLayout;
.super Ljava/lang/Enum;
.source "PageLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/PageLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum ONE_COLUMN:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum SINGLE_PAGE:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum TWO_COLUMN_LEFT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum TWO_COLUMN_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum TWO_PAGE_LEFT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

.field public static final enum TWO_PAGE_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v1, 0x0

    const-string v2, "SinglePage"

    const-string v3, "SINGLE_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->SINGLE_PAGE:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 33
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v2, 0x1

    const-string v3, "OneColumn"

    const-string v4, "ONE_COLUMN"

    invoke-direct {v1, v4, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->ONE_COLUMN:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 36
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v3, 0x2

    const-string v4, "TwoColumnLeft"

    const-string v5, "TWO_COLUMN_LEFT"

    invoke-direct {v2, v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->TWO_COLUMN_LEFT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 43
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v4, 0x3

    const-string v5, "TwoColumnRight"

    const-string v6, "TWO_COLUMN_RIGHT"

    invoke-direct {v3, v6, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->TWO_COLUMN_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 46
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v5, 0x4

    const-string v6, "TwoPageLeft"

    const-string v7, "TWO_PAGE_LEFT"

    invoke-direct {v4, v7, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->TWO_PAGE_LEFT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 52
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    const/4 v6, 0x5

    const-string v7, "TwoPageRight"

    const-string v8, "TWO_PAGE_RIGHT"

    invoke-direct {v5, v8, v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->TWO_PAGE_RIGHT:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    filled-new-array/range {v0 .. v5}, [Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageLayout;
    .locals 5

    .line 56
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->values()[Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    iget-object v4, v3, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageLayout;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 27
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/PageLayout;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    .line 27
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->value:Ljava/lang/String;

    return-object v0
.end method
