.class public final enum Lnet/sf/sevenzipjbinding/NFileTimeType;
.super Ljava/lang/Enum;
.source "NFileTimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/NFileTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/NFileTimeType;

.field public static final enum DOS:Lnet/sf/sevenzipjbinding/NFileTimeType;

.field public static final enum UNIX:Lnet/sf/sevenzipjbinding/NFileTimeType;

.field public static final enum WINDOWS:Lnet/sf/sevenzipjbinding/NFileTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lnet/sf/sevenzipjbinding/NFileTimeType;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/sevenzipjbinding/NFileTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/sevenzipjbinding/NFileTimeType;->WINDOWS:Lnet/sf/sevenzipjbinding/NFileTimeType;

    .line 18
    new-instance v1, Lnet/sf/sevenzipjbinding/NFileTimeType;

    const-string v2, "UNIX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/sevenzipjbinding/NFileTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/sevenzipjbinding/NFileTimeType;->UNIX:Lnet/sf/sevenzipjbinding/NFileTimeType;

    .line 23
    new-instance v2, Lnet/sf/sevenzipjbinding/NFileTimeType;

    const-string v3, "DOS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/sevenzipjbinding/NFileTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/sevenzipjbinding/NFileTimeType;->DOS:Lnet/sf/sevenzipjbinding/NFileTimeType;

    filled-new-array {v0, v1, v2}, [Lnet/sf/sevenzipjbinding/NFileTimeType;

    move-result-object v0

    sput-object v0, Lnet/sf/sevenzipjbinding/NFileTimeType;->$VALUES:[Lnet/sf/sevenzipjbinding/NFileTimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/NFileTimeType;
    .locals 1

    const-class v0, Lnet/sf/sevenzipjbinding/NFileTimeType;

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/sevenzipjbinding/NFileTimeType;

    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/NFileTimeType;
    .locals 1

    sget-object v0, Lnet/sf/sevenzipjbinding/NFileTimeType;->$VALUES:[Lnet/sf/sevenzipjbinding/NFileTimeType;

    .line 9
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/NFileTimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/sevenzipjbinding/NFileTimeType;

    return-object v0
.end method
