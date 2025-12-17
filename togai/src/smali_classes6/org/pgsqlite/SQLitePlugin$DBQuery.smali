.class final Lorg/pgsqlite/SQLitePlugin$DBQuery;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pgsqlite/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DBQuery"
.end annotation


# instance fields
.field final cbc:Lorg/pgsqlite/CallbackContext;

.field final close:Z

.field final delete:Z

.field final queries:[Ljava/lang/String;

.field final queryIDs:[Ljava/lang/String;

.field final queryParams:[Lcom/facebook/react/bridge/ReadableArray;

.field final stop:Z

.field final synthetic this$0:Lorg/pgsqlite/SQLitePlugin;


# direct methods
.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryParams:[Lcom/facebook/react/bridge/ReadableArray;

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    return-void
.end method

.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;ZLorg/pgsqlite/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    iput-boolean p2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryParams:[Lcom/facebook/react/bridge/ReadableArray;

    iput-object p3, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    return-void
.end method

.method constructor <init>(Lorg/pgsqlite/SQLitePlugin;[Ljava/lang/String;[Ljava/lang/String;[Lcom/facebook/react/bridge/ReadableArray;Lorg/pgsqlite/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->this$0:Lorg/pgsqlite/SQLitePlugin;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->stop:Z

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->close:Z

    iput-boolean p1, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->delete:Z

    iput-object p2, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iput-object p3, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryIDs:[Ljava/lang/String;

    iput-object p4, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->queryParams:[Lcom/facebook/react/bridge/ReadableArray;

    iput-object p5, p0, Lorg/pgsqlite/SQLitePlugin$DBQuery;->cbc:Lorg/pgsqlite/CallbackContext;

    return-void
.end method
