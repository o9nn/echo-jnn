.class final enum Lorg/pgsqlite/SQLitePlugin$QueryType;
.super Ljava/lang/Enum;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/pgsqlite/SQLitePlugin$QueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum begin:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum commit:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum delete:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum insert:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum other:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum rollback:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum select:Lorg/pgsqlite/SQLitePlugin$QueryType;

.field public static final enum update:Lorg/pgsqlite/SQLitePlugin$QueryType;


# direct methods
.method private static synthetic $values()[Lorg/pgsqlite/SQLitePlugin$QueryType;
    .locals 8

    sget-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->update:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v1, Lorg/pgsqlite/SQLitePlugin$QueryType;->insert:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v2, Lorg/pgsqlite/SQLitePlugin$QueryType;->delete:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v3, Lorg/pgsqlite/SQLitePlugin$QueryType;->select:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v4, Lorg/pgsqlite/SQLitePlugin$QueryType;->begin:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v5, Lorg/pgsqlite/SQLitePlugin$QueryType;->commit:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v6, Lorg/pgsqlite/SQLitePlugin$QueryType;->rollback:Lorg/pgsqlite/SQLitePlugin$QueryType;

    sget-object v7, Lorg/pgsqlite/SQLitePlugin$QueryType;->other:Lorg/pgsqlite/SQLitePlugin$QueryType;

    filled-new-array/range {v0 .. v7}, [Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1027
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "update"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->update:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1028
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "insert"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->insert:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1029
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "delete"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->delete:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1030
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "select"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->select:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1031
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "begin"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->begin:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1032
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "commit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->commit:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1033
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "rollback"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->rollback:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1034
    new-instance v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    const-string v1, "other"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/pgsqlite/SQLitePlugin$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->other:Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1026
    invoke-static {}, Lorg/pgsqlite/SQLitePlugin$QueryType;->$values()[Lorg/pgsqlite/SQLitePlugin$QueryType;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->$VALUES:[Lorg/pgsqlite/SQLitePlugin$QueryType;

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

    .line 1026
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pgsqlite/SQLitePlugin$QueryType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1026
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/pgsqlite/SQLitePlugin$QueryType;

    return-object p0
.end method

.method public static values()[Lorg/pgsqlite/SQLitePlugin$QueryType;
    .locals 1

    sget-object v0, Lorg/pgsqlite/SQLitePlugin$QueryType;->$VALUES:[Lorg/pgsqlite/SQLitePlugin$QueryType;

    .line 1026
    invoke-virtual {v0}, [Lorg/pgsqlite/SQLitePlugin$QueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/pgsqlite/SQLitePlugin$QueryType;

    return-object v0
.end method
