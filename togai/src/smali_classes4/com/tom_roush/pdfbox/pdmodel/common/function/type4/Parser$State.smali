.class final enum Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;
.super Ljava/lang/Enum;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

.field public static final enum COMMENT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

.field public static final enum NEWLINE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

.field public static final enum TOKEN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

.field public static final enum WHITESPACE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    const-string v1, "NEWLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->NEWLINE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    const-string v2, "WHITESPACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->WHITESPACE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    const-string v3, "COMMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->COMMENT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    const-string v4, "TOKEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->TOKEN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    .line 28
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    return-object v0
.end method
