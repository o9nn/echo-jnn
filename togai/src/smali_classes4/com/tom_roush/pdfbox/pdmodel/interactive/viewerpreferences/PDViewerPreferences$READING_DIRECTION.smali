.class public final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;
.super Ljava/lang/Enum;
.source "PDViewerPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READING_DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

.field public static final enum L2R:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

.field public static final enum R2L:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    const-string v1, "L2R"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->L2R:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    .line 104
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    const-string v2, "R2L"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->R2L:Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    .line 95
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    .line 95
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences$READING_DIRECTION;

    return-object v0
.end method
