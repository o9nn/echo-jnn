.class public final enum Lcom/tom_roush/pdfbox/pdmodel/PageMode;
.super Ljava/lang/Enum;
.source "PageMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/PageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum FULL_SCREEN:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum USE_ATTACHMENTS:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum USE_NONE:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum USE_OPTIONAL_CONTENT:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum USE_OUTLINES:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

.field public static final enum USE_THUMBS:Lcom/tom_roush/pdfbox/pdmodel/PageMode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v1, 0x0

    const-string v2, "UseNone"

    const-string v3, "USE_NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_NONE:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 31
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v2, 0x1

    const-string v3, "UseOutlines"

    const-string v4, "USE_OUTLINES"

    invoke-direct {v1, v4, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_OUTLINES:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 34
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v3, 0x2

    const-string v4, "UseThumbs"

    const-string v5, "USE_THUMBS"

    invoke-direct {v2, v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_THUMBS:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 37
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v4, 0x3

    const-string v5, "FullScreen"

    const-string v6, "FULL_SCREEN"

    invoke-direct {v3, v6, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->FULL_SCREEN:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 40
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v5, 0x4

    const-string v6, "UseOC"

    const-string v7, "USE_OPTIONAL_CONTENT"

    invoke-direct {v4, v7, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_OPTIONAL_CONTENT:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 43
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    const/4 v6, 0x5

    const-string v7, "UseAttachments"

    const-string v8, "USE_ATTACHMENTS"

    invoke-direct {v5, v8, v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_ATTACHMENTS:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    filled-new-array/range {v0 .. v5}, [Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageMode;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageMode;
    .locals 5

    .line 47
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->values()[Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    iget-object v4, v3, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/PageMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    .line 25
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/PageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->value:Ljava/lang/String;

    return-object v0
.end method
