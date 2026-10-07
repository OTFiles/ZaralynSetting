.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/16 v0, 0x400

    .line 251
    .local v0, "size":I
    instance-of v1, p0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 253
    new-array v1, v0, [B

    .line 254
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "len":I
    goto :goto_1

    .line 257
    .end local v1
    .end local v2
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v3, v0, [B

    .line 259
    .local v3, "buf":[B
    :goto_0
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 261
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 263
    .end local v3
    .local v1, "buf":[B
    move v2, v5

    .end local v5
    .restart local v2
    :goto_1
    return-object v1

    .line 259
    .end local v2
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3
    .restart local v5
    :cond_1
    nop

    .line 260
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v5
    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 236
    .local v0, "chars":[C
    array-length v1, v0

    .line 237
    .local v1, "size":I
    new-array v2, v1, [B

    .line 239
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 241
    .end local v3
    return-object v2

    .line 240
    .restart local v3
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget-char v5, v0, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 239
    .end local v3
    move v3, v4

    goto :goto_0
.end method

.method public static parseInt([BII)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 126
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public static parseInt([BIII)I
    .locals 9
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 61
    if-eqz p0, :cond_a

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":I
    const/4 v1, 0x0

    .line 66
    .local v1, "negative":Z
    move v2, p1

    .line 71
    .local v2, "i":I
    if-le p2, p1, :cond_9

    .line 72
    aget-byte v3, p0, v2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 74
    const/high16 v3, -0x80000000

    .line 75
    .local v3, "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v3
    :cond_0
    const v3, -0x7fffffff

    .line 79
    .restart local v3
    :goto_0
    div-int v4, v3, p3

    .line 80
    .local v4, "multmin":I
    if-ge v2, p2, :cond_2

    .line 81
    add-int/lit8 v5, v2, 0x1

    .local v5, "i":I
    aget-byte v2, p0, v2

    .end local v2
    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 82
    .local v2, "digit":I
    if-ltz v2, :cond_1

    .line 87
    neg-int v0, v2

    .line 90
    .end local v2
    nop

    .end local v5
    .local v2, "i":I
    :goto_1
    move v2, v5

    goto :goto_2

    .line 83
    .local v2, "digit":I
    .restart local v5
    :cond_1
    new-instance v6, Ljava/lang/NumberFormatException;

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "illegal number: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 90
    .end local v5
    .local v2, "i":I
    :cond_2
    :goto_2
    if-lt v2, p2, :cond_5

    .line 106
    nop

    .line 108
    if-eqz v1, :cond_4

    .line 109
    add-int/lit8 v5, p1, 0x1

    if-le v2, v5, :cond_3

    .line 110
    return v0

    .line 112
    :cond_3
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "illegal number"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_4
    neg-int v5, v0

    return v5

    .line 92
    :cond_5
    add-int/lit8 v5, v2, 0x1

    .restart local v5
    aget-byte v2, p0, v2

    .end local v2
    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 93
    .local v2, "digit":I
    if-ltz v2, :cond_8

    .line 96
    if-lt v0, v4, :cond_7

    .line 99
    mul-int/2addr v0, p3

    .line 100
    add-int v6, v3, v2

    if-lt v0, v6, :cond_6

    .line 103
    sub-int/2addr v0, v2

    .end local v2
    goto :goto_1

    .line 101
    .restart local v2
    :cond_6
    new-instance v6, Ljava/lang/NumberFormatException;

    const-string v7, "illegal number"

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    :cond_7
    new-instance v6, Ljava/lang/NumberFormatException;

    const-string v7, "illegal number"

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_8
    new-instance v6, Ljava/lang/NumberFormatException;

    const-string v7, "illegal number"

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 106
    .end local v3
    .end local v4
    .end local v5
    .local v2, "i":I
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "illegal number"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v0
    .end local v1
    .end local v2
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLong([BII)J
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 203
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BIII)J
    .locals 12
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 138
    if-eqz p0, :cond_a

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "result":J
    const/4 v2, 0x0

    .line 143
    .local v2, "negative":Z
    move v3, p1

    .line 148
    .local v3, "i":I
    if-le p2, p1, :cond_9

    .line 149
    aget-byte v4, p0, v3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 150
    const/4 v2, 0x1

    .line 151
    const-wide/high16 v4, -0x8000000000000000L

    .line 152
    .local v4, "limit":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v4
    :cond_0
    const-wide v4, -0x7fffffffffffffffL

    .line 156
    .restart local v4
    :goto_0
    int-to-long v6, p3

    div-long v6, v4, v6

    .line 157
    .local v6, "multmin":J
    if-ge v3, p2, :cond_2

    .line 158
    add-int/lit8 v8, v3, 0x1

    .local v8, "i":I
    aget-byte v3, p0, v3

    .end local v3
    int-to-char v3, v3

    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 159
    .local v3, "digit":I
    if-ltz v3, :cond_1

    .line 164
    neg-int v9, v3

    int-to-long v0, v9

    .line 167
    .end local v3
    nop

    .end local v8
    .local v3, "i":I
    :goto_1
    move v3, v8

    goto :goto_2

    .line 160
    .local v3, "digit":I
    .restart local v8
    :cond_1
    new-instance v9, Ljava/lang/NumberFormatException;

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "illegal number: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 160
    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    .end local v8
    .local v3, "i":I
    :cond_2
    :goto_2
    if-lt v3, p2, :cond_5

    .line 183
    nop

    .line 185
    if-eqz v2, :cond_4

    .line 186
    add-int/lit8 v8, p1, 0x1

    if-le v3, v8, :cond_3

    .line 187
    return-wide v0

    .line 189
    :cond_3
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "illegal number"

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :cond_4
    neg-long v8, v0

    return-wide v8

    .line 169
    :cond_5
    add-int/lit8 v8, v3, 0x1

    .restart local v8
    aget-byte v3, p0, v3

    .end local v3
    int-to-char v3, v3

    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 170
    .local v3, "digit":I
    if-ltz v3, :cond_8

    .line 173
    cmp-long v9, v0, v6

    if-ltz v9, :cond_7

    .line 176
    int-to-long v9, p3

    mul-long/2addr v0, v9

    .line 177
    int-to-long v9, v3

    add-long/2addr v9, v4

    cmp-long v9, v0, v9

    if-ltz v9, :cond_6

    .line 180
    int-to-long v9, v3

    sub-long/2addr v0, v9

    .end local v3
    goto :goto_1

    .line 178
    .restart local v3
    :cond_6
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string v10, "illegal number"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 174
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string v10, "illegal number"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 171
    :cond_8
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string v10, "illegal number"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 183
    .end local v4
    .end local v6
    .end local v8
    .local v3, "i":I
    :cond_9
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "illegal number"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v0
    .end local v2
    .end local v3
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .line 222
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 223
    .local v0, "size":I
    new-array v1, v0, [C

    .line 224
    .local v1, "theChars":[C
    new-array v2, v0, [B

    .line 226
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 227
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 230
    .end local v3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 228
    .restart local v3
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v1, v3

    .line 227
    .end local v3
    move v3, v4

    goto :goto_0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 212
    sub-int v0, p2, p1

    .line 213
    .local v0, "size":I
    new-array v1, v0, [C

    .line 215
    .local v1, "theChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p1

    .local v3, "j":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 218
    .end local v2
    .end local v3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 216
    .restart local v2
    .restart local v3
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    add-int/lit8 v5, v3, 0x1

    .local v5, "j":I
    aget-byte v3, p0, v3

    .end local v3
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 215
    .end local v2
    move v2, v4

    move v3, v5

    goto :goto_0
.end method
