.class public final enum Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum ARW:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum BMP:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum CR2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum CRW:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum ICO:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum JPEG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum NEF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum ORF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum PSD:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum RAF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum RIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum RW2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

.field public static final enum UNKNOWN:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 32
    new-instance v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v0, v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->UNKNOWN:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 33
    new-instance v2, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v1, v2

    const-string v3, "JPEG"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->JPEG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 34
    new-instance v3, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v2, v3

    const-string v4, "TIFF"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->TIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 35
    new-instance v4, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v3, v4

    const-string v5, "PSD"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PSD:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 36
    new-instance v5, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v4, v5

    const-string v6, "PNG"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PNG:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 37
    new-instance v6, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v5, v6

    const-string v7, "BMP"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->BMP:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 38
    new-instance v7, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v6, v7

    const-string v8, "GIF"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->GIF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 39
    new-instance v8, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v7, v8

    const-string v9, "ICO"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ICO:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 40
    new-instance v9, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v8, v9

    const-string v10, "PCX"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->PCX:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 41
    new-instance v10, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v9, v10

    const-string v11, "RIFF"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RIFF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 44
    new-instance v11, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v10, v11

    const-string v12, "ARW"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ARW:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 46
    new-instance v12, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v11, v12

    const-string v13, "CRW"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->CRW:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 48
    new-instance v13, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v12, v13

    const-string v14, "CR2"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->CR2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 50
    new-instance v14, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v13, v14

    const-string v15, "NEF"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->NEF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 52
    new-instance v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v14, v0

    const-string v15, "ORF"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->ORF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object v15, v0

    const-string v1, "RAF"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RAF:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 56
    new-instance v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object/from16 v16, v0

    const-string v1, "RW2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->RW2:Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->$VALUES:[Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 30
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->$VALUES:[Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    .line 30
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/util/filetypedetector/FileType;

    return-object v0
.end method
