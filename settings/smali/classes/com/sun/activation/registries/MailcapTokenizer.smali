.class public Lcom/sun/activation/registries/MailcapTokenizer;
.super Ljava/lang/Object;
.source "MailcapTokenizer.java"


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private autoquoteChar:C

.field private currentToken:I

.field private currentTokenValue:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataIndex:I

.field private dataLength:I

.field private isAutoquoting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputString"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    .line 67
    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    .line 71
    const/16 v0, 0x3b    # ';'

    iput-char v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    .line 72
    return-void
.end method

.method private static fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputString"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 263
    .local v0, "inputLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 283
    .end local v2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 267
    .restart local v2
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 268
    .local v3, "currentChar":C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    :cond_1
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    .line 272
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 273
    .local v4, "nextChar":C
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    .end local v4
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    .end local v3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static isControlChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 250
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    return v0
.end method

.method private static isSpecialChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "lAnswer":Z
    const/16 v1, 0x22

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    goto :goto_0

    .line 242
    :cond_0
    :pswitch_0    # 0x29 0x3a 0x3b 0x3c 0x3d 0x3e 0x3f 0x40 0x5b 0x5c 0x5d 0x28
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0    # 0x28
        :pswitch_0    # 0x29
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0    # 0x3a
        :pswitch_0    # 0x3b
        :pswitch_0    # 0x3c
        :pswitch_0    # 0x3d
        :pswitch_0    # 0x3e
        :pswitch_0    # 0x3f
        :pswitch_0    # 0x40
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0    # 0x5b
        :pswitch_0    # 0x5c
        :pswitch_0    # 0x5d
    .end packed-switch
.end method

.method private static isStringTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 258
    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isSpecialChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isControlChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isWhiteSpaceChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 254
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method

.method public static nameForToken(I)Ljava/lang/String;
    .locals 2
    .param p0, "token"    # I

    .line 101
    const-string v0, "really unknown"

    .line 103
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_2

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0    # 0x2
    const-string v0, "string"

    .line 112
    goto :goto_0

    .line 108
    :pswitch_1    # 0x1
    const-string v0, "start"

    .line 109
    goto :goto_0

    .line 105
    :pswitch_2    # 0x0
    const-string v0, "unknown"

    .line 106
    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "\'=\'"

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "\';\'"

    .line 121
    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "\'/\'"

    .line 118
    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "EOI"

    .line 115
    nop

    .line 127
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private processAutoquoteToken()V
    .locals 4

    .line 204
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 208
    .local v0, "initialIndex":I
    const/4 v1, 0x0

    .line 209
    .local v1, "foundTerminator":Z
    :goto_0
    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 211
    .local v2, "c":C
    iget-char v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    if-eq v2, v3, :cond_1

    .line 212
    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0

    .line 214
    :cond_1
    const/4 v1, 0x1

    .end local v2
    goto :goto_0

    .line 218
    :cond_2
    :goto_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 219
    nop

    .line 220
    iget-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/MailcapTokenizer;->fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    iput-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 221
    return-void
.end method

.method private processStringToken()V
    .locals 3

    .line 190
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    .line 193
    .local v0, "initialIndex":I
    :goto_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_1

    .line 194
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    .line 193
    if-nez v1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0

    .line 198
    :cond_1
    :goto_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 199
    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method public getCurrentToken()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public getCurrentTokenValue()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()I
    .locals 4

    .line 145
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ge v0, v1, :cond_9

    .line 147
    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    .line 147
    if-nez v0, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_0

    .line 152
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_8

    .line 154
    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    iget-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    const/16 v2, 0x3d

    const/16 v3, 0x3b

    if-eqz v1, :cond_4

    .line 156
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processAutoquoteToken()V

    goto :goto_4

    .line 157
    :cond_3
    :goto_2
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 158
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 159
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_4

    .line 164
    :cond_4
    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processStringToken()V

    goto :goto_4

    .line 166
    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 171
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 172
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 173
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_4

    .line 167
    :cond_7
    :goto_3
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 168
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 169
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_4

    .line 177
    .end local v0
    :cond_8
    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 178
    iput-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    goto :goto_4

    .line 181
    :cond_9
    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    .line 182
    iput-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    .line 185
    :goto_4
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public setIsAutoquoting(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    .line 86
    return-void
.end method
