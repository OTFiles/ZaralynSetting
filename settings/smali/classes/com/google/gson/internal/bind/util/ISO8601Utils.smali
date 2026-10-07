.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 345
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 345
    .end local v1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .restart local v1
    :cond_1
    :goto_1
    return v0

    .line 349
    .end local v0
    .end local v1
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 26
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 124
    move-object/from16 v2, p1

    const/4 v3, 0x0

    move-object v4, v3

    .line 126
    .local v4, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 129
    .local v0, "offset":I
    add-int/lit8 v5, v0, 0x4

    .local v5, "offset":I
    invoke-static {v1, v0, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 130
    .local v0, "year":I
    const/16 v6, 0x2d    # '-'

    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 135
    :cond_0
    add-int/lit8 v7, v5, 0x2

    .local v7, "offset":I
    invoke-static {v1, v5, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 136
    .local v5, "month":I
    invoke-static {v1, v7, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 141
    :cond_1
    add-int/lit8 v8, v7, 0x2

    .local v8, "offset":I
    invoke-static {v1, v7, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 143
    .local v7, "day":I
    const/4 v9, 0x0

    .line 144
    .local v9, "hour":I
    const/4 v10, 0x0

    .line 145
    .local v10, "minutes":I
    const/4 v11, 0x0

    .line 146
    .local v11, "seconds":I
    const/4 v12, 0x0

    .line 149
    .local v12, "milliseconds":I
    const/16 v13, 0x54    # 'T'

    invoke-static {v1, v8, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13

    .line 151
    .local v13, "hasT":Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v13, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v8, :cond_2

    .line 152
    new-instance v6, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, v5, -0x1

    invoke-direct {v6, v0, v14, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    return-object v14

    .line 266
    .end local v0
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :catch_0
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_8

    .line 264
    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_9

    .line 262
    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_a

    .line 158
    .restart local v0
    .restart local v5
    .restart local v7
    .restart local v8
    .restart local v9
    .restart local v10
    .restart local v11
    .restart local v12
    .restart local v13
    :cond_2
    const/16 v14, 0x2b

    const/16 v15, 0x5a

    if-eqz v13, :cond_7

    .line 161
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v8, 0x2

    .local v3, "offset":I
    invoke-static {v1, v8, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .end local v8
    move v9, v8

    .line 162
    const/16 v8, 0x3a    # ':'

    invoke-static {v1, v3, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 166
    :cond_3
    add-int/lit8 v6, v3, 0x2

    .local v6, "offset":I
    invoke-static {v1, v3, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .end local v3
    move v10, v3

    .line 167
    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    add-int/lit8 v6, v6, 0x1

    .line 171
    .end local v6
    .restart local v8
    :cond_4
    move v8, v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_7

    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    .local v3, "c":C
    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_7

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_7

    .line 174
    add-int/lit8 v6, v8, 0x2

    .restart local v6
    invoke-static {v1, v8, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 175
    .end local v11
    .local v8, "seconds":I
    const/16 v11, 0x3b

    if-le v8, v11, :cond_5

    const/16 v11, 0x3f

    if-ge v8, v11, :cond_5

    const/16 v8, 0x3b

    .line 177
    .end local v8
    .restart local v11
    :cond_5
    move v11, v8

    const/16 v8, 0x2e    # '.'

    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 179
    add-int/lit8 v8, v6, 0x1

    invoke-static {v1, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v8

    .line 180
    .local v8, "endOffset":I
    add-int/lit8 v14, v6, 0x3

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 181
    .local v14, "parseEndOffset":I
    invoke-static {v1, v6, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    .line 183
    .local v17, "fraction":I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int v18, v14, v6

    packed-switch v18, :pswitch_data_0

    .line 191
    move/from16 v12, v17

    goto :goto_0

    .line 185
    :pswitch_0    # 0x2
    mul-int/lit8 v12, v17, 0xa

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1    # 0x1
    mul-int/lit8 v12, v17, 0x64

    .line 189
    nop

    .line 193
    :goto_0
    nop

    .end local v3
    .end local v6
    .end local v14
    .end local v17
    .local v8, "offset":I
    goto :goto_1

    .line 200
    .end local v8
    .restart local v6
    :cond_6
    move v8, v6

    .end local v6
    .restart local v8
    :cond_7
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_10

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 207
    .local v6, "timezoneIndicator":C
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v14, 0x1

    if-ne v6, v15, :cond_8

    .line 208
    :try_start_3
    sget-object v15, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    move-object v3, v15

    .line 209
    add-int/2addr v8, v14

    .line 248
    move-object/from16 v22, v4

    move/from16 v23, v6

    goto/16 :goto_7

    .line 210
    :cond_8
    const/16 v15, 0x2b

    if-eq v6, v15, :cond_a

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_9

    .line 211
    move-object/from16 v19, v3

    goto :goto_2

    .line 245
    :cond_9
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "Invalid time zone indicator \'"

    .end local v3
    .local v19, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 211
    .end local v19
    .restart local v3
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    move-object/from16 v19, v3

    .end local v3
    .restart local v19
    :goto_2
    :try_start_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v14, 0x5

    if-lt v15, v14, :cond_b

    move-object v14, v3

    goto :goto_3

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    move-object v3, v14

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v8, v14

    .line 218
    const-string v14, "+0000"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "+00:00"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 219
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v6

    goto/16 :goto_5

    .line 225
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "timezoneId":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 230
    .end local v19
    .local v15, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v17

    .line 231
    .local v20, "act":Ljava/lang/String;
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .end local v20
    .local v3, "act":Ljava/lang/String;
    .local v21, "timezoneOffset":Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    if-nez v17, :cond_e

    .line 237
    move-object/from16 v22, v4

    :try_start_5
    const-string v4, ":"

    .end local v4
    .local v22, "fail":Ljava/lang/Exception;
    move/from16 v23, v6

    const-string v6, ""

    .end local v6
    .local v23, "timezoneIndicator":C
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "cleaned":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .end local v3
    .end local v4
    .end local v14
    .end local v21
    goto :goto_4

    .line 239
    .restart local v3
    .restart local v4
    .restart local v14
    .restart local v21
    :cond_d
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v24, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3
    .local v24, "act":Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v4

    const-string v4, "Mismatching time zone indicator: "

    .end local v4
    .local v25, "cleaned":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " given, resolves to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    .end local v14
    .end local v21
    .end local v22
    .end local v23
    .end local v24
    .end local v25
    .local v4, "fail":Ljava/lang/Exception;
    .restart local v6
    :cond_e
    move-object/from16 v22, v4

    move/from16 v23, v6

    .end local v4
    .end local v6
    .restart local v22
    .restart local v23
    :goto_4
    move-object v3, v15

    goto :goto_6

    .line 219
    .end local v15
    .end local v22
    .end local v23
    .local v3, "timezoneOffset":Ljava/lang/String;
    .restart local v4
    .restart local v6
    .restart local v19
    :cond_f
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v6

    .end local v3
    .end local v4
    .end local v6
    .restart local v21
    .restart local v22
    .restart local v23
    :goto_5
    sget-object v3, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 244
    .end local v19
    .end local v21
    .local v3, "timezone":Ljava/util/TimeZone;
    :goto_6
    nop

    .line 248
    :goto_7
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v4, "calendar":Ljava/util/Calendar;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    add-int/lit8 v6, v5, -0x1

    const/4 v14, 0x2

    invoke-virtual {v4, v14, v6}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v6, 0xb

    invoke-virtual {v4, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v6, 0xe

    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    return-object v6

    .line 201
    .end local v3
    .end local v22
    .end local v23
    .local v4, "fail":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v22, v4

    .end local v4
    .restart local v22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No time zone indicator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    .end local v0
    .end local v5
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_8

    .line 264
    :catch_4
    move-exception v0

    goto :goto_9

    .line 262
    :catch_5
    move-exception v0

    goto :goto_a

    .line 266
    .end local v22
    .restart local v4
    :catch_6
    move-exception v0

    move-object/from16 v22, v4

    .line 267
    .end local v4
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v22
    :goto_8
    nop

    .end local v22
    .local v0, "fail":Ljava/lang/Exception;
    goto :goto_c

    .line 264
    .end local v0
    .restart local v4
    :catch_7
    move-exception v0

    move-object/from16 v22, v4

    .line 265
    .end local v4
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v22
    :goto_9
    nop

    .end local v22
    .local v0, "fail":Ljava/lang/Exception;
    goto :goto_b

    .line 262
    .end local v0
    .restart local v4
    :catch_8
    move-exception v0

    move-object/from16 v22, v4

    .line 263
    .end local v4
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v22
    :goto_a
    nop

    .line 268
    .end local v22
    .local v0, "fail":Ljava/lang/Exception;
    :goto_b
    nop

    .line 269
    :goto_c
    if-nez v1, :cond_11

    const/16 v16, 0x0

    goto :goto_d

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_d
    move-object/from16 v3, v16

    .line 270
    .local v3, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 272
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_13
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse date ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v5, "ex":Ljava/text/ParseException;
    invoke-virtual {v5, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 301
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    .line 305
    move v0, p1

    .line 306
    .local v0, "i":I
    const/4 v1, 0x0

    .line 308
    .local v1, "result":I
    const/16 v2, 0xa

    if-ge v0, p2, :cond_1

    .line 309
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-ltz v0, :cond_0

    .line 313
    neg-int v1, v0

    .line 315
    .end local v3
    .local v0, "i":I
    :goto_0
    move v0, v3

    goto :goto_1

    .line 311
    .local v0, "digit":I
    .restart local v3
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    .end local v3
    .local v0, "i":I
    :cond_1
    :goto_1
    if-ge v0, p2, :cond_3

    .line 316
    add-int/lit8 v3, v0, 0x1

    .restart local v3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .local v0, "digit":I
    if-ltz v0, :cond_2

    .line 320
    mul-int/lit8 v1, v1, 0xa

    .line 321
    sub-int/2addr v1, v0

    goto :goto_0

    .line 318
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    .end local v3
    .local v0, "i":I
    :cond_3
    neg-int v2, v1

    return v2

    .line 302
    .end local v0
    .end local v1
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
