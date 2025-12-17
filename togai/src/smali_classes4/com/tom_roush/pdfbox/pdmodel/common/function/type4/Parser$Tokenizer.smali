.class final Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CR:C = '\r'

.field private static final EOT:C = '\u0004'

.field private static final FF:C = '\u000c'

.field private static final LF:C = '\n'

.field private static final NUL:C = '\u0000'

.field private static final SPACE:C = ' '

.field private static final TAB:C = '\t'


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

.field private index:I

.field private final input:Ljava/lang/CharSequence;

.field private state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->WHITESPACE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->input:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->tokenize()V

    return-void
.end method

.method private currentChar()C
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->input:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    .line 145
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method private hasMore()Z
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->input:Ljava/lang/CharSequence;

    .line 140
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextChar()C
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    .line 151
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->hasMore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v0

    return v0
.end method

.method private nextState()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 192
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->TOKEN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->NEWLINE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    goto :goto_0

    .line 189
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->COMMENT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    goto :goto_0

    .line 186
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->WHITESPACE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    return-object v0
.end method

.method private peek()C
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->input:Ljava/lang/CharSequence;

    .line 163
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->input:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->index:I

    add-int/lit8 v1, v1, 0x1

    .line 165
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private scanComment()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 275
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;->comment(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private scanNewLine()V
    .locals 2

    .line 223
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->peek()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 230
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;->newLine(Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    return-void
.end method

.method private scanToken()V
    .locals 4

    .line 281
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_1

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 314
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;->token(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;->token(Ljava/lang/CharSequence;)V

    .line 288
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    return-void
.end method

.method private scanWhitespace()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->currentChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextChar()C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->handler:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    .line 253
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;->whitespace(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tokenize()V
    .locals 2

    .line 199
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 202
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->nextState()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    .line 203
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$common$function$type4$Parser$State:[I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->state:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->scanToken()V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->scanComment()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->scanWhitespace()V

    goto :goto_0

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$Tokenizer;->scanNewLine()V

    goto :goto_0

    :cond_3
    return-void
.end method
