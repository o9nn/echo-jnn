.class public Lcom/google/common/flogger/backend/BaseMessageFormatter;
.super Lcom/google/common/flogger/parser/MessageBuilder;
.source "BaseMessageFormatter.java"

# interfaces
.implements Lcom/google/common/flogger/parameter/ParameterVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/parser/MessageBuilder<",
        "Ljava/lang/StringBuilder;",
        ">;",
        "Lcom/google/common/flogger/parameter/ParameterVisitor;"
    }
.end annotation


# static fields
.field private static final EXTRA_ARGUMENT_MESSAGE:Ljava/lang/String; = " [ERROR: UNUSED LOG ARGUMENTS]"

.field private static final MISSING_ARGUMENT_MESSAGE:Ljava/lang/String; = "[ERROR: MISSING LOG ARGUMENT]"


# instance fields
.field protected final args:[Ljava/lang/Object;

.field private literalStart:I

.field protected final out:Ljava/lang/StringBuilder;


# direct methods
.method protected constructor <init>(Lcom/google/common/flogger/backend/TemplateContext;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/common/flogger/parser/MessageBuilder;-><init>(Lcom/google/common/flogger/backend/TemplateContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->literalStart:I

    const-string p1, "arguments"

    .line 80
    invoke-static {p2, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->args:[Ljava/lang/Object;

    const-string p1, "buffer"

    .line 81
    invoke-static {p3, p1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendFormatted(Ljava/lang/StringBuilder;Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 2

    .line 100
    sget-object v0, Lcom/google/common/flogger/backend/BaseMessageFormatter$1;->$SwitchMap$com$google$common$flogger$backend$FormatChar:[I

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 143
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    ushr-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2

    int-to-char p1, p1

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 148
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void

    :cond_3
    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p3, v0, v1, v1}, Lcom/google/common/flogger/backend/FormatOptions;->filter(IZZ)Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/common/flogger/backend/FormatOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1, p3}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/Number;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void

    .line 118
    :cond_4
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 103
    :cond_5
    instance-of v0, p1, Ljava/util/Formattable;

    if-nez v0, :cond_9

    .line 104
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    invoke-static {p1}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 157
    :cond_6
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->getDefaultFormatString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v1

    if-nez v1, :cond_8

    .line 159
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->getChar()C

    move-result p2

    .line 160
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0xffdf

    and-int/2addr p2, v0

    int-to-char p2, p2

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/google/common/flogger/backend/FormatOptions;->appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_8
    sget-object p2, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 112
    :cond_9
    check-cast p1, Ljava/util/Formattable;

    invoke-static {p1, p0, p3}, Lcom/google/common/flogger/backend/MessageUtils;->safeFormatTo(Ljava/util/Formattable;Ljava/lang/StringBuilder;Lcom/google/common/flogger/backend/FormatOptions;)V

    return-void
.end method

.method public static appendFormattedMessage(Lcom/google/common/flogger/backend/LogData;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 57
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/common/flogger/backend/BaseMessageFormatter;

    .line 59
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getTemplateContext()Lcom/google/common/flogger/backend/TemplateContext;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/flogger/backend/BaseMessageFormatter;-><init>(Lcom/google/common/flogger/backend/TemplateContext;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 60
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->build()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    invoke-virtual {v0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getExpectedArgumentCount()I

    move-result v0

    if-le p0, v0, :cond_1

    const-string p0, " [ERROR: UNUSED LOG ARGUMENTS]"

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p0}, Lcom/google/common/flogger/backend/LogData;->getLiteralArgument()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static appendInvalid(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "[INVALID: format="

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 224
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", type="

    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", value="

    .line 227
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 228
    invoke-static {p1}, Lcom/google/common/flogger/backend/MessageUtils;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addParameterImpl(IILcom/google/common/flogger/parameter/Parameter;)V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->literalStart:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/common/flogger/parser/MessageParser;->unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->args:[Ljava/lang/Object;

    .line 172
    invoke-virtual {p3, p0, p1}, Lcom/google/common/flogger/parameter/Parameter;->accept(Lcom/google/common/flogger/parameter/ParameterVisitor;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->literalStart:I

    return-void
.end method

.method public bridge synthetic buildImpl()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->buildImpl()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public buildImpl()Ljava/lang/StringBuilder;
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getParser()Lcom/google/common/flogger/parser/MessageParser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->literalStart:I

    invoke-virtual {p0}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/flogger/parser/MessageParser;->unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 1

    .line 184
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->getType()Lcom/google/common/flogger/backend/FormatType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/FormatType;->canFormat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->appendFormatted(Ljava/lang/StringBuilder;Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatChar;->getDefaultFormatString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->appendInvalid(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public visitDateTime(Ljava/lang/Object;Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 2

    .line 193
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Calendar;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/common/flogger/parameter/DateTimeFormat;->getChar()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/google/common/flogger/backend/BaseMessageFormatter;->appendInvalid(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3, v0}, Lcom/google/common/flogger/backend/FormatOptions;->appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p3}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x54

    goto :goto_1

    :cond_2
    const/16 p3, 0x74

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 198
    invoke-virtual {p2}, Lcom/google/common/flogger/parameter/DateTimeFormat;->getChar()C

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    .line 200
    sget-object v0, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public visitMissing()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    const-string v1, "[ERROR: MISSING LOG ARGUMENT]"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitNull()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    const-string v1, "null"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitPreformatted(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/common/flogger/backend/BaseMessageFormatter;->out:Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
