.class public final enum Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;
.super Ljava/lang/Enum;
.source "OpenMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

.field public static final enum NEW_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

.field public static final enum SAME_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

.field public static final enum USER_PREFERENCE:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    const-string v1, "USER_PREFERENCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->USER_PREFERENCE:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    .line 34
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    const-string v2, "SAME_WINDOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->SAME_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    .line 39
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    const-string v3, "NEW_WINDOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->NEW_WINDOW:Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    filled-new-array {v0, v1, v2}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    .line 24
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/interactive/action/OpenMode;

    return-object v0
.end method
