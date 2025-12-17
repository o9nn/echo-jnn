.class public final enum Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;
.super Ljava/lang/Enum;
.source "PDPageContentStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

.field public static final enum APPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

.field public static final enum OVERWRITE:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

.field public static final enum PREPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const-string v1, "OVERWRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->OVERWRITE:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    .line 77
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const-string v2, "APPEND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->APPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    .line 81
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const-string v3, "PREPEND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->PREPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    filled-new-array {v0, v1, v2}, [Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    .line 68
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    .line 68
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    return-object v0
.end method


# virtual methods
.method public isOverwrite()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->OVERWRITE:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepend()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->PREPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
