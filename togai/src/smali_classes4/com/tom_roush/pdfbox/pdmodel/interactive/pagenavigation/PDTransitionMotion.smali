.class public final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;
.super Ljava/lang/Enum;
.source "PDTransitionMotion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

.field public static final enum I:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

.field public static final enum O:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    const-string v1, "I"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->I:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    .line 35
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    const-string v2, "O"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->O:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    filled-new-array {v0, v1}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    .line 26
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    return-object v0
.end method
