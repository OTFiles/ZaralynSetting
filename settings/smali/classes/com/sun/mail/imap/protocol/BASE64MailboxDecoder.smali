.class public Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;
.super Ljava/lang/Object;
.source "BASE64MailboxDecoder.java"


# static fields
.field static final pem_array:[C

.field private static final pem_convert_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 178
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 178
    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    .line 189
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 194
    .end local v0
    const/4 v0, 0x0

    .restart local v0
    :goto_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 55
    .end local v0
    return-void

    .line 195
    .restart local v0
    :cond_0
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41S    # 'A'
        0x42S    # 'B'
        0x43S    # 'C'
        0x44S    # 'D'
        0x45S    # 'E'
        0x46S    # 'F'
        0x47S    # 'G'
        0x48S    # 'H'
        0x49S    # 'I'
        0x4aS    # 'J'
        0x4bS    # 'K'
        0x4cS    # 'L'
        0x4dS    # 'M'
        0x4eS    # 'N'
        0x4fS    # 'O'
        0x50S    # 'P'
        0x51S    # 'Q'
        0x52S    # 'R'
        0x53S    # 'S'
        0x54S    # 'T'
        0x55S    # 'U'
        0x56S    # 'V'
        0x57S    # 'W'
        0x58S    # 'X'
        0x59S    # 'Y'
        0x5aS    # 'Z'
        0x61S    # 'a'
        0x62S    # 'b'
        0x63S    # 'c'
        0x64S    # 'd'
        0x65S    # 'e'
        0x66S    # 'f'
        0x67S    # 'g'
        0x68S    # 'h'
        0x69S    # 'i'
        0x6aS    # 'j'
        0x6bS    # 'k'
        0x6cS    # 'l'
        0x6dS    # 'm'
        0x6eS    # 'n'
        0x6fS    # 'o'
        0x70S    # 'p'
        0x71S    # 'q'
        0x72S    # 'r'
        0x73S    # 's'
        0x74S    # 't'
        0x75S    # 'u'
        0x76S    # 'v'
        0x77S    # 'w'
        0x78S    # 'x'
        0x79S    # 'y'
        0x7aS    # 'z'
        0x30S    # '0'
        0x31S    # '1'
        0x32S    # '2'
        0x33S    # '3'
        0x34S    # '4'
        0x35S    # '5'
        0x36S    # '6'
        0x37S    # '7'
        0x38S    # '8'
        0x39S    # '9'
        0x2bS    # '+'
        0x2cS    # ','
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static base64decode([CILjava/text/CharacterIterator;)I
    .locals 16
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "iter"    # Ljava/text/CharacterIterator;

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "firsttime":Z
    const/4 v1, -0x1

    .line 91
    .local v1, "leftover":I
    const/4 v2, 0x0

    move v3, v1

    move/from16 v1, p1

    .line 95
    .end local p1
    .local v1, "offset":I
    .local v2, "testing":C
    .local v3, "leftover":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v4

    int-to-byte v4, v4

    .line 96
    .local v4, "orig_0":B
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .end local v4
    goto/16 :goto_3

    .line 97
    .restart local v4
    :cond_0
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_1

    .line 98
    if-eqz v0, :cond_a

    .line 100
    add-int/lit8 v5, v1, 0x1

    .local v5, "offset":I
    const/16 v6, 0x26

    aput-char v6, p0, v1

    .line 103
    .end local v1
    nop

    .line 168
    move v1, v5

    goto/16 :goto_3

    .line 105
    .end local v5
    .restart local v1
    :cond_1
    const/4 v0, 0x0

    .line 108
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v7

    int-to-byte v7, v7

    .line 109
    .local v7, "orig_1":B
    if-eq v7, v5, :cond_a

    if-ne v7, v6, :cond_2

    .line 110
    goto/16 :goto_3

    .line 113
    :cond_2
    sget-object v8, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v9, v4, 0xff

    aget-byte v8, v8, v9

    .line 114
    .local v8, "a":B
    sget-object v9, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v10, v7, 0xff

    aget-byte v9, v9, v10

    .line 116
    .local v9, "b":B
    shl-int/lit8 v10, v8, 0x2

    and-int/lit16 v10, v10, 0xfc

    ushr-int/lit8 v11, v9, 0x4

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 119
    .local v10, "current":B
    if-eq v3, v5, :cond_3

    .line 120
    add-int/lit8 v11, v1, 0x1

    .local v11, "offset":I
    shl-int/lit8 v12, v3, 0x8

    and-int/lit16 v13, v10, 0xff

    or-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, p0, v1

    .line 121
    .end local v1
    const/4 v1, -0x1

    .line 126
    .end local v3
    .local v1, "leftover":I
    move v3, v1

    move v1, v11

    goto :goto_1

    .line 123
    .end local v11
    .local v1, "offset":I
    .restart local v3
    :cond_3
    and-int/lit16 v3, v10, 0xff

    .line 126
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v11

    int-to-byte v11, v11

    .line 127
    .local v11, "orig_2":B
    const/16 v12, 0x3d

    if-ne v11, v12, :cond_4

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    if-eq v11, v5, :cond_a

    if-ne v11, v6, :cond_5

    .line 130
    goto :goto_3

    .line 134
    :cond_5
    move v8, v9

    .line 135
    sget-object v13, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v14, v11, 0xff

    aget-byte v9, v13, v14

    .line 136
    shl-int/lit8 v13, v8, 0x4

    and-int/lit16 v13, v13, 0xf0

    ushr-int/lit8 v14, v9, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v10, v13

    .line 139
    if-eq v3, v5, :cond_6

    .line 140
    add-int/lit8 v13, v1, 0x1

    .local v13, "offset":I
    shl-int/lit8 v14, v3, 0x8

    and-int/lit16 v6, v10, 0xff

    or-int/2addr v6, v14

    int-to-char v6, v6

    aput-char v6, p0, v1

    .line 141
    .end local v1
    const/4 v1, -0x1

    .line 146
    .end local v3
    .local v1, "leftover":I
    move v3, v1

    move v1, v13

    goto :goto_2

    .line 143
    .end local v13
    .local v1, "offset":I
    .restart local v3
    :cond_6
    and-int/lit16 v3, v10, 0xff

    .line 146
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/text/CharacterIterator;->next()C

    move-result v6

    int-to-byte v6, v6

    .line 147
    .local v6, "orig_3":B
    if-ne v6, v12, :cond_7

    .line 148
    goto/16 :goto_0

    .line 149
    :cond_7
    if-eq v6, v5, :cond_a

    const/16 v12, 0x2d

    if-ne v6, v12, :cond_8

    .line 150
    goto :goto_3

    .line 154
    :cond_8
    move v8, v9

    .line 155
    sget-object v12, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B

    and-int/lit16 v13, v6, 0xff

    aget-byte v9, v12, v13

    .line 156
    shl-int/lit8 v12, v8, 0x6

    and-int/lit16 v12, v12, 0xc0

    and-int/lit8 v13, v9, 0x3f

    or-int/2addr v12, v13

    int-to-byte v10, v12

    .line 159
    if-eq v3, v5, :cond_9

    .line 160
    shl-int/lit8 v5, v3, 0x8

    and-int/lit16 v12, v10, 0xff

    or-int/2addr v5, v12

    int-to-char v2, v5

    .line 161
    add-int/lit8 v5, v1, 0x1

    .restart local v5
    shl-int/lit8 v12, v3, 0x8

    and-int/lit16 v13, v10, 0xff

    or-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, p0, v1

    .line 162
    .end local v1
    const/4 v3, -0x1

    .line 91
    move v1, v5

    goto/16 :goto_0

    .line 164
    .end local v5
    .restart local v1
    :cond_9
    and-int/lit16 v3, v10, 0xff

    .line 93
    .end local v4
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    goto/16 :goto_0

    .line 168
    :cond_a
    :goto_3
    return v1
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "original"    # Ljava/lang/String;

    .line 58
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "changedString":Z
    const/4 v1, 0x0

    .line 64
    .local v1, "copyTo":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [C

    .line 65
    .local v2, "chars":[C
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "iter":Ljava/text/StringCharacterIterator;
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result v4

    .local v4, "c":C
    :goto_0
    const v5, 0xffff

    if-ne v4, v5, :cond_2

    .line 79
    .end local v4
    if-eqz v0, :cond_1

    .line 80
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 82
    :cond_1
    return-object p0

    .line 70
    .restart local v4
    :cond_2
    const/16 v5, 0x26

    if-ne v4, v5, :cond_3

    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-static {v2, v1, v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->base64decode([CILjava/text/CharacterIterator;)I

    move-result v1

    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v5, v1, 0x1

    .local v5, "copyTo":I
    aput-char v4, v2, v1

    .line 68
    .end local v1
    move v1, v5

    .end local v5
    .restart local v1
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result v4

    goto :goto_0

    .line 59
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :cond_4
    :goto_2
    return-object p0
.end method
