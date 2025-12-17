.class final enum Lorg/pgsqlite/SQLitePlugin$Action;
.super Ljava/lang/Enum;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/pgsqlite/SQLitePlugin$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum attach:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum backgroundExecuteSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum close:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum delete:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum echoStringValue:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum executeSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

.field public static final enum open:Lorg/pgsqlite/SQLitePlugin$Action;


# direct methods
.method private static synthetic $values()[Lorg/pgsqlite/SQLitePlugin$Action;
    .locals 7

    sget-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->open:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v1, Lorg/pgsqlite/SQLitePlugin$Action;->close:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v2, Lorg/pgsqlite/SQLitePlugin$Action;->attach:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v3, Lorg/pgsqlite/SQLitePlugin$Action;->delete:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v4, Lorg/pgsqlite/SQLitePlugin$Action;->executeSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v5, Lorg/pgsqlite/SQLitePlugin$Action;->backgroundExecuteSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

    sget-object v6, Lorg/pgsqlite/SQLitePlugin$Action;->echoStringValue:Lorg/pgsqlite/SQLitePlugin$Action;

    filled-new-array/range {v0 .. v6}, [Lorg/pgsqlite/SQLitePlugin$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1017
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->open:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1018
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "close"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->close:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1019
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "attach"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->attach:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1020
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "delete"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->delete:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1021
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "executeSqlBatch"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->executeSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1022
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "backgroundExecuteSqlBatch"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->backgroundExecuteSqlBatch:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1023
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$Action;

    const-string v1, "echoStringValue"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->echoStringValue:Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1016
    invoke-static {}, Lorg/pgsqlite/SQLitePlugin$Action;->$values()[Lorg/pgsqlite/SQLitePlugin$Action;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->$VALUES:[Lorg/pgsqlite/SQLitePlugin$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$Action;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1016
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/pgsqlite/SQLitePlugin$Action;

    return-object p0
.end method

.method public static values()[Lorg/pgsqlite/SQLitePlugin$Action;
    .locals 1

    sget-object v0, Lorg/pgsqlite/SQLitePlugin$Action;->$VALUES:[Lorg/pgsqlite/SQLitePlugin$Action;

    .line 1016
    invoke-virtual {v0}, [Lorg/pgsqlite/SQLitePlugin$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/pgsqlite/SQLitePlugin$Action;

    return-object v0
.end method
