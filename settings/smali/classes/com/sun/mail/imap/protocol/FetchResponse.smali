.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "FetchResponse.java"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    .line 56
    return-void

    nop

    :array_0
    .array-data 2
        0x2eS    # '.'
        0x48S    # 'H'
        0x45S    # 'E'
        0x41S    # 'A'
        0x44S    # 'D'
        0x45S    # 'E'
        0x52S    # 'R'
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2eS    # '.'
        0x54S    # 'T'
        0x45S    # 'E'
        0x58S    # 'X'
        0x54S    # 'T'
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 62
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 0
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 68
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 69
    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 5
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .param p2, "c"    # Ljava/lang/Class;

    .line 89
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 106
    .end local v1
    return-object v0

    .line 94
    .restart local v1
    :cond_1
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 95
    aget-object v2, p0, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v2, :cond_5

    .line 96
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 97
    goto :goto_2

    .line 99
    :cond_2
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 100
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .end local v2
    .end local v3
    goto :goto_2

    .line 101
    .restart local v2
    .restart local v3
    :cond_3
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    iget-object v0, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, v3

    return-object v0

    .line 100
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v2
    .end local v3
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private match([C)Z
    .locals 5
    .param p1, "itemName"    # [C

    .line 201
    array-length v0, p1

    .line 202
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 207
    .end local v1
    .end local v2
    const/4 v1, 0x1

    return v1

    .line 205
    .restart local v1
    .restart local v2
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    aget-byte v2, v3, v2

    .end local v2
    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    aget-char v1, p1, v1

    .end local v1
    if-eq v2, v1, :cond_1

    .line 206
    const/4 v1, 0x0

    return v1

    .line 202
    :cond_1
    move v1, v3

    move v2, v4

    goto :goto_0
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 115
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_d

    .line 119
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 120
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 122
    .local v1, "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 124
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-ge v2, v3, :cond_c

    .line 128
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x42

    if-eq v2, v3, :cond_7

    const/16 v3, 0x49

    if-eq v2, v3, :cond_6

    const/16 v3, 0x52

    if-eq v2, v3, :cond_2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 136
    :pswitch_0    # 0x46
    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 137
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 138
    new-instance v2, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    move-object v1, v2

    .line 140
    goto/16 :goto_2

    .line 130
    :pswitch_1    # 0x45
    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 131
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 132
    new-instance v2, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    .line 134
    goto/16 :goto_2

    .line 180
    :cond_1
    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/UID;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 182
    new-instance v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 164
    :cond_2
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 166
    new-instance v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    goto/16 :goto_2

    .line 169
    :cond_3
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 170
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 171
    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_0

    .line 173
    :cond_4
    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 175
    :cond_5
    :goto_0
    new-instance v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    .line 178
    goto :goto_2

    .line 142
    :cond_6
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 143
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 144
    new-instance v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    .line 146
    goto :goto_2

    .line 148
    :cond_7
    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 149
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_8

    .line 150
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 151
    new-instance v2, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    goto :goto_2

    .line 154
    :cond_8
    sget-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 155
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_1

    .line 158
    :cond_9
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v3, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 159
    :goto_1
    new-instance v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    move-object v1, v2

    .line 162
    nop

    .line 187
    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 189
    :cond_b
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 191
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 192
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 193
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 194
    return-void

    .line 125
    :cond_c
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    .end local v0
    .end local v1
    :cond_d
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1    # 0x45
        :pswitch_0    # 0x46
    .end packed-switch
.end method


# virtual methods
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1
    .param p1, "index"    # I

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 2
    .param p1, "c"    # Ljava/lang/Class;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 85
    .end local v0
    const/4 v0, 0x0

    return-object v0

    .line 81
    .restart local v0
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    return-object v1

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
