.class final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
.super Ljava/lang/Enum;
.source "PlainTextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field public static final enum CENTER:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field public static final enum JUSTIFY:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field public static final enum LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field public static final enum RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;


# instance fields
.field private final alignment:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->CENTER:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->RIGHT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "JUSTIFY"

    invoke-direct {v3, v6, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->JUSTIFY:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->alignment:I

    return-void
.end method

.method public static valueOf(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
    .locals 5

    .line 56
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->getTextAlign()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->LEFT:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    .line 38
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    .line 38
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    return-object v0
.end method


# virtual methods
.method getTextAlign()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->alignment:I

    return v0
.end method
