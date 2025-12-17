.class Lio/requery/android/database/sqlite/SQLiteStatementType;
.super Ljava/lang/Object;
.source "SQLiteStatementType.java"


# static fields
.field public static final STATEMENT_ABORT:I = 0x6

.field public static final STATEMENT_ATTACH:I = 0x3

.field public static final STATEMENT_BEGIN:I = 0x4

.field public static final STATEMENT_COMMIT:I = 0x5

.field public static final STATEMENT_DDL:I = 0x8

.field public static final STATEMENT_OTHER:I = 0x63

.field public static final STATEMENT_PRAGMA:I = 0x7

.field public static final STATEMENT_SELECT:I = 0x1

.field public static final STATEMENT_UNPREPARED:I = 0x9

.field public static final STATEMENT_UPDATE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSqlStatementType(Ljava/lang/String;)I
    .locals 5

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 67
    :cond_0
    invoke-static {p0}, Lio/requery/android/database/sqlite/SQLiteStatementType;->statementStartIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x3

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEL"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "WIT"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "INS"

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "UPD"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "REP"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DEL"

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "ATT"

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string v0, "COM"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "END"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "ROL"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-string v0, "BEG"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const-string v0, "PRA"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-string v0, "CRE"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "DRO"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ALT"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "ANA"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "DET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    return v1

    :cond_a
    :goto_0
    const/16 p0, 0x9

    return p0

    :cond_b
    :goto_1
    const/16 p0, 0x8

    return p0

    :cond_c
    :goto_2
    const/4 p0, 0x5

    return p0

    :cond_d
    :goto_3
    const/4 p0, 0x2

    return p0

    :cond_e
    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method static statementStartIndex(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 119
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eqz v2, :cond_0

    if-ne v4, v5, :cond_4

    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v6, 0x2f

    const/16 v7, 0x2a

    if-eqz v3, :cond_1

    if-ne v4, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v4, v8, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    move v2, v9

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    move v3, v9

    goto :goto_1

    :cond_3
    if-eq v4, v5, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method
